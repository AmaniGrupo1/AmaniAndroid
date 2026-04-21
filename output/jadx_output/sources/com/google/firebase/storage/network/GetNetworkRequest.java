package com.google.firebase.storage.network;

import com.google.common.net.HttpHeaders;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.internal.StorageReferenceUri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public class GetNetworkRequest extends NetworkRequest {
    private static final String TAG = "GetNetworkRequest";

    public GetNetworkRequest(StorageReferenceUri storageReferenceUri, FirebaseApp app, long startByte) {
        super(storageReferenceUri, app);
        if (startByte != 0) {
            super.setCustomHeader(HttpHeaders.RANGE, "bytes=" + startByte + "-");
        }
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "GET";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Map<String, String> getQueryParameters() {
        return Collections.singletonMap("alt", "media");
    }
}
