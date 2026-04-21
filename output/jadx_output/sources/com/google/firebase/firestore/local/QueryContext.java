package com.google.firebase.firestore.local;

/* JADX INFO: loaded from: classes22.dex */
public class QueryContext {
    private int documentReadCount = 0;

    public int getDocumentReadCount() {
        return this.documentReadCount;
    }

    public void incrementDocumentReadCount(int cnt) {
        this.documentReadCount += cnt;
    }
}
