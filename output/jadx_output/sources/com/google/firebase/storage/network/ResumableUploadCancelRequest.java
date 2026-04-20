package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.internal.StorageReferenceUri;
import io.grpc.internal.GrpcUtil;

/* JADX INFO: loaded from: classes22.dex */
public class ResumableUploadCancelRequest extends ResumableNetworkRequest {
    public static boolean cancelCalled = false;
    private final Uri uploadURL;

    public ResumableUploadCancelRequest(StorageReferenceUri storageReferenceUri, FirebaseApp app, Uri uploadURL) {
        super(storageReferenceUri, app);
        cancelCalled = true;
        this.uploadURL = uploadURL;
        super.setCustomHeader("X-Goog-Upload-Protocol", "resumable");
        super.setCustomHeader("X-Goog-Upload-Command", "cancel");
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return GrpcUtil.HTTP_METHOD;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    public Uri getURL() {
        return this.uploadURL;
    }
}
