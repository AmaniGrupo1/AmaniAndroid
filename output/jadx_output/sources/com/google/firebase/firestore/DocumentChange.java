package com.google.firebase.firestore;

/* JADX INFO: loaded from: classes22.dex */
public class DocumentChange {
    private final QueryDocumentSnapshot document;
    private final int newIndex;
    private final int oldIndex;
    private final Type type;

    public enum Type {
        ADDED,
        MODIFIED,
        REMOVED
    }

    DocumentChange(QueryDocumentSnapshot document, Type type, int oldIndex, int newIndex) {
        this.type = type;
        this.document = document;
        this.oldIndex = oldIndex;
        this.newIndex = newIndex;
    }

    public boolean equals(Object object) {
        if (!(object instanceof DocumentChange)) {
            return false;
        }
        DocumentChange that = (DocumentChange) object;
        return this.type.equals(that.type) && this.document.equals(that.document) && this.oldIndex == that.oldIndex && this.newIndex == that.newIndex;
    }

    public int hashCode() {
        int result = this.type.hashCode();
        return (((((result * 31) + this.document.hashCode()) * 31) + this.oldIndex) * 31) + this.newIndex;
    }

    public Type getType() {
        return this.type;
    }

    public QueryDocumentSnapshot getDocument() {
        return this.document;
    }

    public int getOldIndex() {
        return this.oldIndex;
    }

    public int getNewIndex() {
        return this.newIndex;
    }
}
