package com.google.firebase.firestore.remote;

import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.core.DocumentViewChange;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.util.Assert;
import com.google.protobuf.ByteString;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
final class TargetState {
    private int outstandingResponses = 0;
    private final Map<DocumentKey, DocumentViewChange.Type> documentChanges = new HashMap();
    private boolean hasChanges = true;
    private ByteString resumeToken = ByteString.EMPTY;
    private boolean current = false;

    TargetState() {
    }

    boolean isCurrent() {
        return this.current;
    }

    boolean isPending() {
        return this.outstandingResponses != 0;
    }

    boolean hasChanges() {
        return this.hasChanges;
    }

    void updateResumeToken(ByteString resumeToken) {
        if (!resumeToken.isEmpty()) {
            this.hasChanges = true;
            this.resumeToken = resumeToken;
        }
    }

    TargetChange toTargetChange() {
        ImmutableSortedSet<DocumentKey> addedDocuments = DocumentKey.emptyKeySet();
        ImmutableSortedSet<DocumentKey> modifiedDocuments = DocumentKey.emptyKeySet();
        ImmutableSortedSet<DocumentKey> removedDocuments = DocumentKey.emptyKeySet();
        ImmutableSortedSet<DocumentKey> addedDocuments2 = addedDocuments;
        ImmutableSortedSet<DocumentKey> modifiedDocuments2 = modifiedDocuments;
        ImmutableSortedSet<DocumentKey> removedDocuments2 = removedDocuments;
        for (Map.Entry<DocumentKey, DocumentViewChange.Type> entry : this.documentChanges.entrySet()) {
            DocumentKey key = entry.getKey();
            DocumentViewChange.Type changeType = entry.getValue();
            switch (changeType) {
                case ADDED:
                    addedDocuments2 = addedDocuments2.insert(key);
                    break;
                case MODIFIED:
                    modifiedDocuments2 = modifiedDocuments2.insert(key);
                    break;
                case REMOVED:
                    removedDocuments2 = removedDocuments2.insert(key);
                    break;
                default:
                    throw Assert.fail("Encountered invalid change type: %s", changeType);
            }
        }
        return new TargetChange(this.resumeToken, this.current, addedDocuments2, modifiedDocuments2, removedDocuments2);
    }

    void clearChanges() {
        this.hasChanges = false;
        this.documentChanges.clear();
    }

    void addDocumentChange(DocumentKey key, DocumentViewChange.Type changeType) {
        this.hasChanges = true;
        this.documentChanges.put(key, changeType);
    }

    void removeDocumentChange(DocumentKey key) {
        this.hasChanges = true;
        this.documentChanges.remove(key);
    }

    void recordPendingTargetRequest() {
        this.outstandingResponses++;
    }

    void recordTargetResponse() {
        this.outstandingResponses--;
    }

    void markCurrent() {
        this.hasChanges = true;
        this.current = true;
    }
}
