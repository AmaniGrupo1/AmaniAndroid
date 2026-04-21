package com.google.firebase.storage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.multiprocess.RemoteWorkManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.interop.AppCheckTokenListener;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.emulators.EmulatedServiceSettings;
import com.google.firebase.inject.Provider;
import com.google.firebase.storage.internal.Util;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes22.dex */
public class FirebaseStorage {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String STORAGE_BUCKET_WITH_PATH_EXCEPTION = "The storage Uri cannot contain a path element.";
    private static final String STORAGE_URI_PARSE_EXCEPTION = "The storage Uri could not be parsed.";
    private static final String TAG = "FirebaseStorage";
    private EmulatedServiceSettings emulatorSettings;
    private final FirebaseApp mApp;
    private final Provider<InteropAppCheckTokenProvider> mAppCheckProvider;
    private final Provider<InternalAuthProvider> mAuthProvider;
    private final String mBucketName;
    private long sMaxUploadRetry = RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS;
    private long sMaxChunkUploadRetry = 60000;
    private long sMaxDownloadRetry = RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS;
    private long sMaxQueryRetry = 120000;

    FirebaseStorage(String bucketName, FirebaseApp app, Provider<InternalAuthProvider> authProvider, Provider<InteropAppCheckTokenProvider> appCheckProvider) {
        this.mBucketName = bucketName;
        this.mApp = app;
        this.mAuthProvider = authProvider;
        this.mAppCheckProvider = appCheckProvider;
        if (this.mAppCheckProvider != null && this.mAppCheckProvider.get() != null) {
            this.mAppCheckProvider.get().addAppCheckTokenListener(new AppCheckTokenListener() { // from class: com.google.firebase.storage.FirebaseStorage.1
                @Override // com.google.firebase.appcheck.interop.AppCheckTokenListener
                public void onAppCheckTokenChanged(AppCheckTokenResult appCheckTokenResult) {
                }
            });
        }
    }

    private static FirebaseStorage getInstanceImpl(FirebaseApp app, Uri url) {
        String bucketName = url != null ? url.getHost() : null;
        if (url != null && !TextUtils.isEmpty(url.getPath())) {
            throw new IllegalArgumentException(STORAGE_BUCKET_WITH_PATH_EXCEPTION);
        }
        Preconditions.checkNotNull(app, "Provided FirebaseApp must not be null.");
        FirebaseStorageComponent component = (FirebaseStorageComponent) app.get(FirebaseStorageComponent.class);
        Preconditions.checkNotNull(component, "Firebase Storage component is not present.");
        return component.get(bucketName);
    }

    public static FirebaseStorage getInstance() {
        FirebaseApp app = FirebaseApp.getInstance();
        Preconditions.checkArgument(app != null, "You must call FirebaseApp.initialize() first.");
        if (app == null) {
            throw new AssertionError();
        }
        return getInstance(app);
    }

    public static FirebaseStorage getInstance(String url) {
        FirebaseApp app = FirebaseApp.getInstance();
        Preconditions.checkArgument(app != null, "You must call FirebaseApp.initialize() first.");
        if (app == null) {
            throw new AssertionError();
        }
        return getInstance(app, url);
    }

    public static FirebaseStorage getInstance(FirebaseApp app) {
        Preconditions.checkArgument(app != null, "Null is not a valid value for the FirebaseApp.");
        String storageBucket = app.getOptions().getStorageBucket();
        if (storageBucket == null) {
            return getInstanceImpl(app, null);
        }
        try {
            return getInstanceImpl(app, Util.normalize(app, "gs://" + app.getOptions().getStorageBucket()));
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "Unable to parse bucket:" + storageBucket, e);
            throw new IllegalArgumentException(STORAGE_URI_PARSE_EXCEPTION);
        }
    }

    public static FirebaseStorage getInstance(FirebaseApp app, String url) {
        Preconditions.checkArgument(app != null, "Null is not a valid value for the FirebaseApp.");
        Preconditions.checkArgument(url != null, "Null is not a valid value for the Firebase Storage URL.");
        if (!url.toLowerCase().startsWith("gs://")) {
            throw new IllegalArgumentException("Please use a gs:// URL for your Firebase Storage bucket.");
        }
        try {
            return getInstanceImpl(app, Util.normalize(app, url));
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "Unable to parse url:" + url, e);
            throw new IllegalArgumentException(STORAGE_URI_PARSE_EXCEPTION);
        }
    }

    public void useEmulator(String host, int port) {
        this.emulatorSettings = new EmulatedServiceSettings(host, port);
    }

    public long getMaxDownloadRetryTimeMillis() {
        return this.sMaxDownloadRetry;
    }

    public void setMaxDownloadRetryTimeMillis(long maxTransferRetryMillis) {
        this.sMaxDownloadRetry = maxTransferRetryMillis;
    }

    public long getMaxUploadRetryTimeMillis() {
        return this.sMaxUploadRetry;
    }

    public void setMaxUploadRetryTimeMillis(long maxTransferRetryMillis) {
        this.sMaxUploadRetry = maxTransferRetryMillis;
    }

    public long getMaxChunkUploadRetry() {
        return this.sMaxChunkUploadRetry;
    }

    public void setMaxChunkUploadRetry(long maxChunkRetryMillis) {
        this.sMaxChunkUploadRetry = maxChunkRetryMillis;
    }

    public long getMaxOperationRetryTimeMillis() {
        return this.sMaxQueryRetry;
    }

    public void setMaxOperationRetryTimeMillis(long maxTransferRetryMillis) {
        this.sMaxQueryRetry = maxTransferRetryMillis;
    }

    private String getBucketName() {
        return this.mBucketName;
    }

    public StorageReference getReference() {
        String bucketName = getBucketName();
        if (TextUtils.isEmpty(bucketName)) {
            throw new IllegalStateException("FirebaseApp was not initialized with a bucket name.");
        }
        Uri uri = new Uri.Builder().scheme("gs").authority(getBucketName()).path("/").build();
        return getReference(uri);
    }

    public StorageReference getReferenceFromUrl(String fullUrl) {
        Preconditions.checkArgument(!TextUtils.isEmpty(fullUrl), "location must not be null or empty");
        String lowerCaseLocation = fullUrl.toLowerCase();
        if (lowerCaseLocation.startsWith("gs://") || lowerCaseLocation.startsWith("https://") || lowerCaseLocation.startsWith("http://")) {
            try {
                Uri uri = Util.normalize(this.mApp, fullUrl);
                if (uri == null) {
                    throw new IllegalArgumentException(STORAGE_URI_PARSE_EXCEPTION);
                }
                return getReference(uri);
            } catch (UnsupportedEncodingException e) {
                Log.e(TAG, "Unable to parse location:" + fullUrl, e);
                throw new IllegalArgumentException(STORAGE_URI_PARSE_EXCEPTION);
            }
        }
        throw new IllegalArgumentException(STORAGE_URI_PARSE_EXCEPTION);
    }

    public StorageReference getReference(String location) {
        Preconditions.checkArgument(!TextUtils.isEmpty(location), "location must not be null or empty");
        String lowerCaseLocation = location.toLowerCase();
        if (lowerCaseLocation.startsWith("gs://") || lowerCaseLocation.startsWith("https://") || lowerCaseLocation.startsWith("http://")) {
            throw new IllegalArgumentException("location should not be a full URL.");
        }
        return getReference().child(location);
    }

    private StorageReference getReference(Uri uri) {
        Preconditions.checkNotNull(uri, "uri must not be null");
        String bucketName = getBucketName();
        Preconditions.checkArgument(TextUtils.isEmpty(bucketName) || uri.getAuthority().equalsIgnoreCase(bucketName), "The supplied bucketname does not match the storage bucket of the current instance.");
        return new StorageReference(uri, this);
    }

    public FirebaseApp getApp() {
        return this.mApp;
    }

    InternalAuthProvider getAuthProvider() {
        if (this.mAuthProvider != null) {
            return this.mAuthProvider.get();
        }
        return null;
    }

    InteropAppCheckTokenProvider getAppCheckProvider() {
        if (this.mAppCheckProvider != null) {
            return this.mAppCheckProvider.get();
        }
        return null;
    }

    EmulatedServiceSettings getEmulatorSettings() {
        return this.emulatorSettings;
    }
}
