package com.google.firebase.storage;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
import com.google.firebase.storage.network.ListNetworkRequest;
import com.google.firebase.storage.network.NetworkRequest;
import org.json.JSONException;

/* JADX INFO: loaded from: classes22.dex */
class ListTask implements Runnable {
    private static final String TAG = "ListTask";
    private final Integer maxResults;
    private final String pageToken;
    private final TaskCompletionSource<ListResult> pendingResult;
    private final ExponentialBackoffSender sender;
    private final StorageReference storageRef;

    ListTask(StorageReference storageRef, Integer maxResults, String pageToken, TaskCompletionSource<ListResult> pendingResult) {
        Preconditions.checkNotNull(storageRef);
        Preconditions.checkNotNull(pendingResult);
        this.storageRef = storageRef;
        this.maxResults = maxResults;
        this.pageToken = pageToken;
        this.pendingResult = pendingResult;
        FirebaseStorage storage = this.storageRef.getStorage();
        this.sender = new ExponentialBackoffSender(storage.getApp().getApplicationContext(), storage.getAuthProvider(), storage.getAppCheckProvider(), storage.getMaxDownloadRetryTimeMillis());
    }

    @Override // java.lang.Runnable
    public void run() throws JSONException {
        NetworkRequest request = new ListNetworkRequest(this.storageRef.getStorageReferenceUri(), this.storageRef.getApp(), this.maxResults, this.pageToken);
        this.sender.sendWithExponentialBackoff(request);
        ListResult listResult = null;
        if (request.isResultSuccess()) {
            try {
                listResult = ListResult.fromJSON(this.storageRef.getStorage(), request.getResultBody());
            } catch (JSONException e) {
                Log.e(TAG, "Unable to parse response body. " + request.getRawResult(), e);
                this.pendingResult.setException(StorageException.fromException(e));
                return;
            }
        }
        if (this.pendingResult != null) {
            request.completeTask(this.pendingResult, listResult);
        }
    }
}
