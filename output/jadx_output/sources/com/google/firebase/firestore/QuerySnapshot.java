package com.google.firebase.firestore;

import com.google.firebase.firestore.DocumentChange;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.core.ViewSnapshot;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes22.dex */
public class QuerySnapshot implements Iterable<QueryDocumentSnapshot> {
    private List<DocumentChange> cachedChanges;
    private MetadataChanges cachedChangesMetadataState;
    private final FirebaseFirestore firestore;
    private final SnapshotMetadata metadata;
    private final Query originalQuery;
    private final ViewSnapshot snapshot;

    QuerySnapshot(Query originalQuery, ViewSnapshot snapshot, FirebaseFirestore firestore) {
        this.originalQuery = (Query) Preconditions.checkNotNull(originalQuery);
        this.snapshot = (ViewSnapshot) Preconditions.checkNotNull(snapshot);
        this.firestore = (FirebaseFirestore) Preconditions.checkNotNull(firestore);
        this.metadata = new SnapshotMetadata(snapshot.hasPendingWrites(), snapshot.isFromCache());
    }

    private class QuerySnapshotIterator implements Iterator<QueryDocumentSnapshot> {
        private final Iterator<Document> it;

        QuerySnapshotIterator(Iterator<Document> it) {
            this.it = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.it.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public QueryDocumentSnapshot next() {
            return QuerySnapshot.this.convertDocument(this.it.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("QuerySnapshot does not support remove().");
        }
    }

    public Query getQuery() {
        return this.originalQuery;
    }

    public SnapshotMetadata getMetadata() {
        return this.metadata;
    }

    public List<DocumentChange> getDocumentChanges() {
        return getDocumentChanges(MetadataChanges.EXCLUDE);
    }

    public List<DocumentChange> getDocumentChanges(MetadataChanges metadataChanges) {
        if (MetadataChanges.INCLUDE.equals(metadataChanges) && this.snapshot.excludesMetadataChanges()) {
            throw new IllegalArgumentException("To include metadata changes with your document changes, you must also pass MetadataChanges.INCLUDE to addSnapshotListener().");
        }
        if (this.cachedChanges == null || this.cachedChangesMetadataState != metadataChanges) {
            this.cachedChanges = Collections.unmodifiableList(RealtimePipelineKt.changesFromSnapshot(metadataChanges, this.snapshot, new Function4() { // from class: com.google.firebase.firestore.QuerySnapshot$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return this.f$0.m8336x37b38043((Document) obj, (DocumentChange.Type) obj2, (Integer) obj3, (Integer) obj4);
                }
            }));
            this.cachedChangesMetadataState = metadataChanges;
        }
        return this.cachedChanges;
    }

    /* JADX INFO: renamed from: lambda$getDocumentChanges$0$com-google-firebase-firestore-QuerySnapshot, reason: not valid java name */
    /* synthetic */ DocumentChange m8336x37b38043(Document doc, DocumentChange.Type type, Integer oldIndex, Integer newIndex) {
        QueryDocumentSnapshot documentSnapshot = QueryDocumentSnapshot.fromDocument(this.firestore, doc, this.snapshot.isFromCache(), this.snapshot.getMutatedKeys().contains(doc.getKey()));
        return new DocumentChange(documentSnapshot, type, oldIndex.intValue(), newIndex.intValue());
    }

    public List<DocumentSnapshot> getDocuments() {
        List<DocumentSnapshot> res = new ArrayList<>(this.snapshot.getDocuments().size());
        for (Document doc : this.snapshot.getDocuments()) {
            res.add(convertDocument(doc));
        }
        return res;
    }

    public boolean isEmpty() {
        return this.snapshot.getDocuments().isEmpty();
    }

    public int size() {
        return this.snapshot.getDocuments().size();
    }

    @Override // java.lang.Iterable
    public Iterator<QueryDocumentSnapshot> iterator() {
        return new QuerySnapshotIterator(this.snapshot.getDocuments().iterator());
    }

    public <T> List<T> toObjects(Class<T> clazz) {
        return toObjects(clazz, DocumentSnapshot.ServerTimestampBehavior.DEFAULT);
    }

    public <T> List<T> toObjects(Class<T> clazz, DocumentSnapshot.ServerTimestampBehavior serverTimestampBehavior) {
        Preconditions.checkNotNull(clazz, "Provided POJO type must not be null.");
        ArrayList arrayList = new ArrayList();
        for (DocumentSnapshot d : this) {
            arrayList.add(d.toObject(clazz, serverTimestampBehavior));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QueryDocumentSnapshot convertDocument(Document document) {
        return QueryDocumentSnapshot.fromDocument(this.firestore, document, this.snapshot.isFromCache(), this.snapshot.getMutatedKeys().contains(document.getKey()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QuerySnapshot)) {
            return false;
        }
        QuerySnapshot other = (QuerySnapshot) obj;
        return this.firestore.equals(other.firestore) && this.originalQuery.equals(other.originalQuery) && this.snapshot.equals(other.snapshot) && this.metadata.equals(other.metadata);
    }

    public int hashCode() {
        int hash = this.firestore.hashCode();
        return (((((hash * 31) + this.originalQuery.hashCode()) * 31) + this.snapshot.hashCode()) * 31) + this.metadata.hashCode();
    }
}
