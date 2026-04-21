package com.google.firebase.appcheck.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseException;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.appcheck.FirebaseAppCheck;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;

/* JADX INFO: loaded from: classes22.dex */
public class NetworkClient {
    private static final String APPLICATION_JSON = "application/json";
    private static final String CONTENT_TYPE = "Content-Type";
    public static final int DEBUG = 2;
    private static final String DEBUG_EXCHANGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeDebugToken?key=%s";
    public static final int PLAY_INTEGRITY = 3;
    private static final String PLAY_INTEGRITY_CHALLENGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:generatePlayIntegrityChallenge?key=%s";
    private static final String PLAY_INTEGRITY_EXCHANGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangePlayIntegrityToken?key=%s";
    public static final int SAFETY_NET = 1;
    private static final String SAFETY_NET_EXCHANGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeSafetyNetToken?key=%s";
    private static final String TAG = NetworkClient.class.getName();
    public static final int UNKNOWN = 0;
    private static final String UTF_8 = "UTF-8";
    static final String X_ANDROID_CERT = "X-Android-Cert";
    static final String X_ANDROID_PACKAGE = "X-Android-Package";
    static final String X_FIREBASE_CLIENT = "X-Firebase-Client";
    private final String apiKey;
    private final String appId;
    private final Context context;
    private final Provider<HeartBeatController> heartBeatControllerProvider;
    private final String projectId;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AttestationTokenType {
    }

    public NetworkClient(FirebaseApp firebaseApp) {
        this(firebaseApp.getApplicationContext(), firebaseApp.getOptions(), ((DefaultFirebaseAppCheck) FirebaseAppCheck.getInstance(firebaseApp)).getHeartbeatControllerProvider());
    }

    NetworkClient(Context context, FirebaseOptions firebaseOptions, Provider<HeartBeatController> heartBeatControllerProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(firebaseOptions);
        Preconditions.checkNotNull(heartBeatControllerProvider);
        this.context = context;
        this.apiKey = firebaseOptions.getApiKey();
        this.appId = firebaseOptions.getApplicationId();
        this.projectId = firebaseOptions.getProjectId();
        if (this.projectId == null) {
            throw new IllegalArgumentException("FirebaseOptions#getProjectId cannot be null.");
        }
        this.heartBeatControllerProvider = heartBeatControllerProvider;
    }

    public AppCheckTokenResponse exchangeAttestationForAppCheckToken(byte[] requestBytes, int tokenType, RetryManager retryManager) throws FirebaseException, JSONException, IOException {
        if (!retryManager.canRetry()) {
            throw new FirebaseException("Too many attempts.");
        }
        URL url = new URL(String.format(getUrlTemplate(tokenType), this.projectId, this.appId, this.apiKey));
        String response = makeNetworkRequest(url, requestBytes, retryManager);
        return AppCheckTokenResponse.fromJsonString(response);
    }

    public String generatePlayIntegrityChallenge(byte[] requestBytes, RetryManager retryManager) throws FirebaseException, JSONException, IOException {
        if (!retryManager.canRetry()) {
            throw new FirebaseException("Too many attempts.");
        }
        URL url = new URL(String.format(PLAY_INTEGRITY_CHALLENGE_URL_TEMPLATE, this.projectId, this.appId, this.apiKey));
        return makeNetworkRequest(url, requestBytes, retryManager);
    }

    private String makeNetworkRequest(URL url, byte[] requestBytes, RetryManager retryManager) throws FirebaseException, JSONException, IOException {
        InputStream in;
        HttpURLConnection urlConnection = createHttpUrlConnection(url);
        try {
            urlConnection.setDoOutput(true);
            urlConnection.setFixedLengthStreamingMode(requestBytes.length);
            urlConnection.setRequestProperty("Content-Type", APPLICATION_JSON);
            String heartBeatHeader = getHeartBeat();
            if (heartBeatHeader != null) {
                urlConnection.setRequestProperty(X_FIREBASE_CLIENT, heartBeatHeader);
            }
            urlConnection.setRequestProperty(X_ANDROID_PACKAGE, this.context.getPackageName());
            urlConnection.setRequestProperty(X_ANDROID_CERT, getFingerprintHashForPackage());
            OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream(), requestBytes.length);
            try {
                out.write(requestBytes, 0, requestBytes.length);
                out.close();
                int responseCode = urlConnection.getResponseCode();
                if (isResponseSuccess(responseCode)) {
                    in = urlConnection.getInputStream();
                } else {
                    in = urlConnection.getErrorStream();
                }
                StringBuilder response = new StringBuilder();
                BufferedReader reader = new BufferedReader(new InputStreamReader(in, UTF_8));
                while (true) {
                    try {
                        String line = reader.readLine();
                        if (line == null) {
                            break;
                        }
                        response.append(line);
                    } finally {
                    }
                }
                reader.close();
                String responseBody = response.toString();
                if (!isResponseSuccess(responseCode)) {
                    retryManager.updateBackoffOnFailure(responseCode);
                    HttpErrorResponse httpErrorResponse = HttpErrorResponse.fromJsonString(responseBody);
                    throw new FirebaseException("Error returned from API. code: " + httpErrorResponse.getErrorCode() + " body: " + httpErrorResponse.getErrorMessage());
                }
                retryManager.resetBackoffOnSuccess();
                return responseBody;
            } finally {
            }
        } finally {
            urlConnection.disconnect();
        }
    }

    String getHeartBeat() {
        HeartBeatController controller = this.heartBeatControllerProvider.get();
        if (controller == null) {
            return null;
        }
        try {
            return (String) Tasks.await(controller.getHeartBeatsHeader());
        } catch (Exception e) {
            Log.w(TAG, "Unable to get heartbeats!");
            return null;
        }
    }

    private String getFingerprintHashForPackage() {
        try {
            byte[] hash = AndroidUtilsLight.getPackageCertificateHashBytes(this.context, this.context.getPackageName());
            if (hash == null) {
                Log.e(TAG, "Could not get fingerprint hash for package: " + this.context.getPackageName());
                return null;
            }
            return Hex.bytesToStringUppercase(hash, false);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "No such package: " + this.context.getPackageName(), e);
            return null;
        }
    }

    private static String getUrlTemplate(int tokenType) {
        switch (tokenType) {
            case 1:
                return SAFETY_NET_EXCHANGE_URL_TEMPLATE;
            case 2:
                return DEBUG_EXCHANGE_URL_TEMPLATE;
            case 3:
                return PLAY_INTEGRITY_EXCHANGE_URL_TEMPLATE;
            default:
                throw new IllegalArgumentException("Unknown token type.");
        }
    }

    HttpURLConnection createHttpUrlConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    private static final boolean isResponseSuccess(int responseCode) {
        return responseCode >= 200 && responseCode < 300;
    }
}
