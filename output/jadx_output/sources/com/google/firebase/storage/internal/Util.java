package com.google.firebase.storage.internal;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.storage.network.NetworkRequest;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes22.dex */
public class Util {
    public static final String ISO_8601_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    private static final int MAXIMUM_TOKEN_WAIT_TIME_MS = 30000;
    public static final int NETWORK_UNAVAILABLE = -2;
    private static final String TAG = "StorageUtil";

    public static long parseDateTime(String dateString) {
        if (dateString == null) {
            return 0L;
        }
        String dateString2 = dateString.replaceAll("Z$", "-0000");
        SimpleDateFormat iso8601Format = new SimpleDateFormat(ISO_8601_FORMAT, Locale.getDefault());
        try {
            return iso8601Format.parse(dateString2).getTime();
        } catch (ParseException e) {
            Log.w(TAG, "unable to parse datetime:" + dateString2, e);
            return 0L;
        }
    }

    public static boolean equals(Object a, Object b) {
        return Objects.equal(a, b);
    }

    public static Uri normalize(FirebaseApp app, String s) throws UnsupportedEncodingException {
        String bucket;
        if (TextUtils.isEmpty(s)) {
            return null;
        }
        Uri baseUrl = NetworkRequest.PROD_BASE_URL;
        String trimmedInput = s.toLowerCase();
        if (trimmedInput.startsWith("gs://")) {
            String fullUri = Slashes.preserveSlashEncode(Slashes.normalizeSlashes(s.substring(5)));
            return Uri.parse("gs://" + fullUri);
        }
        Uri uri = Uri.parse(s);
        String scheme = uri.getScheme();
        if (scheme == null || (!equals(scheme.toLowerCase(), "http") && !equals(scheme.toLowerCase(), "https"))) {
            Log.w(TAG, "FirebaseStorage is unable to support the scheme:" + scheme);
            throw new IllegalArgumentException("Uri scheme");
        }
        String lowerAuthority = uri.getAuthority().toLowerCase();
        int indexOfAuth = lowerAuthority.indexOf(baseUrl.getAuthority());
        String encodedPath = Slashes.slashize(uri.getEncodedPath());
        if (indexOfAuth == 0 && encodedPath.startsWith("/")) {
            int firstBSlash = encodedPath.indexOf("/b/", 0);
            int endBSlash = encodedPath.indexOf("/", firstBSlash + 3);
            int firstOSlash = encodedPath.indexOf("/o/", 0);
            if (firstBSlash != -1 && endBSlash != -1) {
                bucket = encodedPath.substring(firstBSlash + 3, endBSlash);
                if (firstOSlash != -1) {
                    encodedPath = encodedPath.substring(firstOSlash + 3);
                } else {
                    encodedPath = "";
                }
            } else {
                Log.w(TAG, "Firebase Storage URLs must point to an object in your Storage Bucket. Please obtain a URL using the Firebase Console or getDownloadUrl().");
                throw new IllegalArgumentException("Firebase Storage URLs must point to an object in your Storage Bucket. Please obtain a URL using the Firebase Console or getDownloadUrl().");
            }
        } else if (indexOfAuth > 1) {
            bucket = uri.getAuthority().substring(0, indexOfAuth - 1);
        } else {
            Log.w(TAG, "Firebase Storage URLs must point to an object in your Storage Bucket. Please obtain a URL using the Firebase Console or getDownloadUrl().");
            throw new IllegalArgumentException("Firebase Storage URLs must point to an object in your Storage Bucket. Please obtain a URL using the Firebase Console or getDownloadUrl().");
        }
        Preconditions.checkNotEmpty(bucket, "No bucket specified");
        return new Uri.Builder().scheme("gs").authority(bucket).encodedPath(encodedPath).build();
    }

    public static String getCurrentAuthToken(InternalAuthProvider authProvider) {
        String token = null;
        if (authProvider != null) {
            try {
                Task<GetTokenResult> pendingResult = authProvider.getAccessToken(false);
                GetTokenResult result = (GetTokenResult) Tasks.await(pendingResult, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
                token = result.getToken();
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                Log.e(TAG, "error getting token " + e);
                return null;
            }
        }
        if (TextUtils.isEmpty(token)) {
            Log.w(TAG, "no auth token for request");
            return null;
        }
        return token;
    }

    public static String getCurrentAppCheckToken(InteropAppCheckTokenProvider appCheckProvider) {
        if (appCheckProvider == null) {
            return null;
        }
        try {
            Task<AppCheckTokenResult> pendingResult = appCheckProvider.getToken(false);
            AppCheckTokenResult result = (AppCheckTokenResult) Tasks.await(pendingResult, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
            if (result.getError() != null) {
                Log.w(TAG, "Error getting App Check token; using placeholder token instead. Error: " + result.getError());
            }
            return result.getToken();
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Log.e(TAG, "Unexpected error getting App Check token: " + e);
            return null;
        }
    }
}
