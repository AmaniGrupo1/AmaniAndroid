package com.google.firebase.storage.network;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.internal.StorageReferenceUri;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public class ListNetworkRequest extends NetworkRequest {
    private final Integer maxPageSize;
    private final String nextPageToken;

    public ListNetworkRequest(StorageReferenceUri storageReferenceUri, FirebaseApp app, Integer maxPageSize, String nextPageToken) {
        super(storageReferenceUri, app);
        this.maxPageSize = maxPageSize;
        this.nextPageToken = nextPageToken;
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected String getAction() {
        return "GET";
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    public Uri getURL() {
        String bucketName = getStorageReferenceUri().getGsUri().getAuthority();
        return Uri.parse(getStorageReferenceUri().getHttpBaseUri() + "/b/" + bucketName + "/o");
    }

    @Override // com.google.firebase.storage.network.NetworkRequest
    protected Map<String, String> getQueryParameters() {
        Map<String, String> headers = new HashMap<>();
        String prefix = getPathWithoutBucket();
        if (!prefix.isEmpty()) {
            headers.put("prefix", prefix + "/");
        }
        headers.put(TtmlNode.RUBY_DELIMITER, "/");
        if (this.maxPageSize != null) {
            headers.put("maxResults", Integer.toString(this.maxPageSize.intValue()));
        }
        if (!TextUtils.isEmpty(this.nextPageToken)) {
            headers.put("pageToken", this.nextPageToken);
        }
        return headers;
    }
}
