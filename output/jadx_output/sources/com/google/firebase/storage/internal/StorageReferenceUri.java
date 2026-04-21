package com.google.firebase.storage.internal;

import android.net.Uri;
import com.google.firebase.emulators.EmulatedServiceSettings;
import com.google.firebase.storage.network.NetworkRequest;

/* JADX INFO: loaded from: classes22.dex */
public class StorageReferenceUri {
    private final Uri gsUri;
    private final Uri httpBaseUri;
    private final Uri httpUri;

    public StorageReferenceUri(Uri gsUri) {
        this(gsUri, null);
    }

    public StorageReferenceUri(Uri gsUri, EmulatedServiceSettings emulatorSettings) {
        Uri uri;
        this.gsUri = gsUri;
        if (emulatorSettings == null) {
            uri = NetworkRequest.PROD_BASE_URL;
        } else {
            uri = Uri.parse("http://" + emulatorSettings.getHost() + ":" + emulatorSettings.getPort() + "/v0");
        }
        this.httpBaseUri = uri;
        String bucket = gsUri.getAuthority();
        Uri.Builder httpBuilder = this.httpBaseUri.buildUpon().appendPath("b").appendEncodedPath(bucket);
        String path = Slashes.normalizeSlashes(gsUri.getPath());
        if (path.length() > 0 && !"/".equals(path)) {
            httpBuilder = httpBuilder.appendPath("o").appendPath(path);
        }
        this.httpUri = httpBuilder.build();
    }

    public Uri getHttpBaseUri() {
        return this.httpBaseUri;
    }

    public Uri getHttpUri() {
        return this.httpUri;
    }

    public Uri getGsUri() {
        return this.gsUri;
    }
}
