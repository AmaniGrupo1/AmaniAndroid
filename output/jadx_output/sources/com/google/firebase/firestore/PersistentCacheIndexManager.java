package com.google.firebase.firestore;

import androidx.core.util.Consumer;
import com.google.firebase.firestore.core.FirestoreClient;

/* JADX INFO: loaded from: classes22.dex */
public final class PersistentCacheIndexManager {
    private FirestoreClientProvider client;

    PersistentCacheIndexManager(FirestoreClientProvider client) {
        this.client = client;
    }

    public void enableIndexAutoCreation() {
        this.client.procedure(new Consumer() { // from class: com.google.firebase.firestore.PersistentCacheIndexManager$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ((FirestoreClient) obj).setIndexAutoCreationEnabled(true);
            }
        });
    }

    public void disableIndexAutoCreation() {
        this.client.procedure(new Consumer() { // from class: com.google.firebase.firestore.PersistentCacheIndexManager$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ((FirestoreClient) obj).setIndexAutoCreationEnabled(false);
            }
        });
    }

    public void deleteAllIndexes() {
        this.client.procedure(new Consumer() { // from class: com.google.firebase.firestore.PersistentCacheIndexManager$$ExternalSyntheticLambda2
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ((FirestoreClient) obj).deleteAllFieldIndexes();
            }
        });
    }
}
