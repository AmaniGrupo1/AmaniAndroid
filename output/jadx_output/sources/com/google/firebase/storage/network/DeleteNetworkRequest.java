package com.google.firebase.storage.network;

import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.internal.StorageReferenceUri;

/* JADX INFO: loaded from: classes22.dex */
public class DeleteNetworkRequest extends NetworkRequest {
    public DeleteNetworkRequest(StorageReferenceUri storageReferenceUri, FirebaseApp app) {
        super(storageReferenceUri, app);
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "DELETE";
    }
}
