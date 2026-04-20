package com.google.firebase.storage.network;

import android.net.Uri;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.internal.StorageReferenceUri;
import io.grpc.internal.GrpcUtil;

/* JADX INFO: loaded from: classes22.dex */
public class ResumableUploadByteRequest extends ResumableNetworkRequest {
    private final int bytesToWrite;
    private final byte[] chunk;
    private final boolean isFinal;
    private final long offset;
    private final Uri uploadURL;

    public ResumableUploadByteRequest(StorageReferenceUri storageReferenceUri, FirebaseApp app, Uri uploadURL, byte[] chunk, long offset, int bytesToWrite, boolean isFinal) {
        super(storageReferenceUri, app);
        if (chunk == null && bytesToWrite != -1) {
            this.mException = new IllegalArgumentException("contentType is null or empty");
        }
        if (offset < 0) {
            this.mException = new IllegalArgumentException("offset cannot be negative");
        }
        this.bytesToWrite = bytesToWrite;
        this.uploadURL = uploadURL;
        this.chunk = bytesToWrite <= 0 ? null : chunk;
        this.offset = offset;
        this.isFinal = isFinal;
        super.setCustomHeader("X-Goog-Upload-Protocol", "resumable");
        if (this.isFinal && this.bytesToWrite > 0) {
            super.setCustomHeader("X-Goog-Upload-Command", "upload, finalize");
        } else if (this.isFinal) {
            super.setCustomHeader("X-Goog-Upload-Command", "finalize");
        } else {
            super.setCustomHeader("X-Goog-Upload-Command", "upload");
        }
        super.setCustomHeader("X-Goog-Upload-Offset", Long.toString(this.offset));
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return GrpcUtil.HTTP_METHOD;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    public Uri getURL() {
        return this.uploadURL;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected byte[] getOutputRaw() {
        return this.chunk;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected int getOutputRawSize() {
        if (this.bytesToWrite > 0) {
            return this.bytesToWrite;
        }
        return 0;
    }
}
