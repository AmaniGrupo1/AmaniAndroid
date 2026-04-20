package com.google.firebase.storage.network;

import android.net.Uri;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.internal.StorageReferenceUri;
import io.grpc.internal.GrpcUtil;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes22.dex */
public class ResumableUploadStartRequest extends ResumableNetworkRequest {
    private final String contentType;
    private final JSONObject metadata;

    public ResumableUploadStartRequest(StorageReferenceUri storageReferenceUri, FirebaseApp app, JSONObject metadata, String contentType) {
        super(storageReferenceUri, app);
        this.metadata = metadata;
        this.contentType = contentType;
        if (TextUtils.isEmpty(this.contentType)) {
            this.mException = new IllegalArgumentException("mContentType is null or empty");
        }
        super.setCustomHeader("X-Goog-Upload-Protocol", "resumable");
        super.setCustomHeader("X-Goog-Upload-Command", TtmlNode.START);
        super.setCustomHeader("X-Goog-Upload-Header-Content-Type", this.contentType);
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    public Uri getURL() {
        String bucket = getStorageReferenceUri().getGsUri().getAuthority();
        Uri.Builder uriBuilder = getStorageReferenceUri().getHttpBaseUri().buildUpon();
        uriBuilder.appendPath("b");
        uriBuilder.appendPath(bucket);
        uriBuilder.appendPath("o");
        return uriBuilder.build();
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return GrpcUtil.HTTP_METHOD;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Map<String, String> getQueryParameters() {
        Map<String, String> headers = new HashMap<>();
        headers.put(HintConstants.AUTOFILL_HINT_NAME, getPathWithoutBucket());
        headers.put("uploadType", "resumable");
        return headers;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected JSONObject getOutputJSON() {
        return this.metadata;
    }
}
