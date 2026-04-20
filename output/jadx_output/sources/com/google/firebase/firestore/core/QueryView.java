package com.google.firebase.firestore.core;

/* JADX INFO: loaded from: classes22.dex */
final class QueryView {
    private final QueryOrPipeline query;
    private final int targetId;
    private final View view;

    QueryView(QueryOrPipeline query, int targetId, View view) {
        this.query = query;
        this.targetId = targetId;
        this.view = view;
    }

    public QueryOrPipeline getQuery() {
        return this.query;
    }

    public int getTargetId() {
        return this.targetId;
    }

    public View getView() {
        return this.view;
    }
}
