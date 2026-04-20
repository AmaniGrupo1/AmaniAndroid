package com.google.firebase.firestore.core;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.core.DocumentViewChange;
import com.google.firebase.firestore.core.LimboDocumentChange;
import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.core.ViewSnapshot;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.DocumentSet;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.remote.TargetChange;
import com.google.firebase.firestore.util.Assert;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public class View {
    private boolean current;
    private DocumentSet documentSet;
    private final QueryOrPipeline query;
    private ImmutableSortedSet<DocumentKey> syncedDocuments;
    private ViewSnapshot.SyncState syncState = ViewSnapshot.SyncState.NONE;
    private ImmutableSortedSet<DocumentKey> limboDocuments = DocumentKey.emptyKeySet();
    private ImmutableSortedSet<DocumentKey> mutatedKeys = DocumentKey.emptyKeySet();

    public static class DocumentChanges {
        final DocumentViewChangeSet changeSet;
        final DocumentSet documentSet;
        final ImmutableSortedSet<DocumentKey> mutatedKeys;
        private final boolean needsRefill;

        private DocumentChanges(DocumentSet newDocuments, DocumentViewChangeSet changes, ImmutableSortedSet<DocumentKey> mutatedKeys, boolean needsRefill) {
            this.documentSet = newDocuments;
            this.changeSet = changes;
            this.mutatedKeys = mutatedKeys;
            this.needsRefill = needsRefill;
        }

        public boolean needsRefill() {
            return this.needsRefill;
        }
    }

    private static class LimitEdges {
        final Document first;
        final Document second;

        LimitEdges(Document first, Document second) {
            this.first = first;
            this.second = second;
        }
    }

    public View(QueryOrPipeline query, ImmutableSortedSet<DocumentKey> remoteDocuments) {
        this.query = query;
        this.documentSet = DocumentSet.emptySet(query.comparator());
        this.syncedDocuments = remoteDocuments;
    }

    public ViewSnapshot.SyncState getSyncState() {
        return this.syncState;
    }

    public DocumentChanges computeDocChanges(ImmutableSortedMap<DocumentKey, Document> docChanges) {
        return computeDocChanges(docChanges, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0097 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DocumentChanges computeDocChanges(ImmutableSortedMap<DocumentKey, Document> docChanges, DocumentChanges previousChanges) {
        ImmutableSortedSet<DocumentKey> newMutatedKeys;
        Document oldDoc;
        DocumentSet oldDocumentSet;
        boolean z;
        boolean changeApplied;
        boolean needsRefill;
        Iterator<Map.Entry<DocumentKey, Document>> it;
        boolean needsRefill2;
        DocumentViewChangeSet changeSet = previousChanges != null ? previousChanges.changeSet : new DocumentViewChangeSet();
        DocumentSet oldDocumentSet2 = previousChanges != null ? previousChanges.documentSet : this.documentSet;
        ImmutableSortedSet<DocumentKey> newMutatedKeys2 = previousChanges != null ? previousChanges.mutatedKeys : this.mutatedKeys;
        DocumentSet newDocumentSet = oldDocumentSet2;
        boolean docsEqual = false;
        LimitEdges limitEdges = getLimitEdges(this.query, oldDocumentSet2);
        Document lastDocInLimit = limitEdges.first;
        Document firstDocInLimit = limitEdges.second;
        Iterator<Map.Entry<DocumentKey, Document>> it2 = docChanges.iterator();
        while (it2.hasNext()) {
            Map.Entry<DocumentKey, Document> entry = it2.next();
            DocumentKey key = entry.getKey();
            Document oldDoc2 = oldDocumentSet2.getDocument(key);
            Document newDoc = this.query.matches(entry.getValue()) ? entry.getValue() : null;
            boolean oldDocHadPendingMutations = oldDoc2 != null && this.mutatedKeys.contains(oldDoc2.getKey());
            if (newDoc == null) {
                oldDocumentSet = oldDocumentSet2;
            } else {
                if (newDoc.hasLocalMutations()) {
                    oldDocumentSet = oldDocumentSet2;
                } else {
                    oldDocumentSet = oldDocumentSet2;
                    if (!this.mutatedKeys.contains(newDoc.getKey()) || !newDoc.hasCommittedMutations()) {
                    }
                    boolean newDocHasPendingMutations = z;
                    changeApplied = false;
                    if (oldDoc2 == null || newDoc == null) {
                        needsRefill = docsEqual;
                        it = it2;
                        if (oldDoc2 != null && newDoc != null) {
                            changeSet.addChange(DocumentViewChange.create(DocumentViewChange.Type.ADDED, newDoc));
                            changeApplied = true;
                            docsEqual = needsRefill;
                        } else if (oldDoc2 == null && newDoc == null) {
                            changeSet.addChange(DocumentViewChange.create(DocumentViewChange.Type.REMOVED, oldDoc2));
                            changeApplied = true;
                            docsEqual = (lastDocInLimit == null && firstDocInLimit == null) ? needsRefill : true;
                        } else {
                            docsEqual = needsRefill;
                        }
                    } else {
                        boolean needsRefill3 = docsEqual;
                        it = it2;
                        boolean docsEqual2 = oldDoc2.getData().equals(newDoc.getData());
                        if (!docsEqual2) {
                            if (!shouldWaitForSyncedDocument(oldDoc2, newDoc)) {
                                changeSet.addChange(DocumentViewChange.create(DocumentViewChange.Type.MODIFIED, newDoc));
                                Comparator<Document> queryComparator = this.query.comparator();
                                if ((lastDocInLimit != null && queryComparator.compare(newDoc, lastDocInLimit) > 0) || (firstDocInLimit != null && queryComparator.compare(newDoc, firstDocInLimit) < 0)) {
                                    needsRefill2 = true;
                                } else {
                                    needsRefill2 = needsRefill3;
                                }
                                changeApplied = true;
                                docsEqual = needsRefill2;
                            } else {
                                docsEqual = needsRefill3;
                            }
                        } else if (oldDocHadPendingMutations != newDocHasPendingMutations) {
                            changeSet.addChange(DocumentViewChange.create(DocumentViewChange.Type.METADATA, newDoc));
                            changeApplied = true;
                            docsEqual = needsRefill3;
                        }
                    }
                    if (changeApplied) {
                        if (newDoc != null) {
                            newDocumentSet = newDocumentSet.add(newDoc);
                            if (newDoc.hasLocalMutations()) {
                                newMutatedKeys2 = newMutatedKeys2.insert(newDoc.getKey());
                            } else {
                                newMutatedKeys2 = newMutatedKeys2.remove(newDoc.getKey());
                            }
                        } else {
                            newDocumentSet = newDocumentSet.remove(key);
                            newMutatedKeys2 = newMutatedKeys2.remove(key);
                        }
                    }
                    oldDocumentSet2 = oldDocumentSet;
                    it2 = it;
                }
                z = true;
                boolean newDocHasPendingMutations2 = z;
                changeApplied = false;
                if (oldDoc2 == null) {
                    needsRefill = docsEqual;
                    it = it2;
                    if (oldDoc2 != null) {
                        if (oldDoc2 == null) {
                            docsEqual = needsRefill;
                        }
                    }
                }
                if (changeApplied) {
                }
                oldDocumentSet2 = oldDocumentSet;
                it2 = it;
            }
            z = false;
            boolean newDocHasPendingMutations22 = z;
            changeApplied = false;
            if (oldDoc2 == null) {
            }
            if (changeApplied) {
            }
            oldDocumentSet2 = oldDocumentSet;
            it2 = it;
        }
        boolean needsRefill4 = docsEqual;
        Long limit = getLimit(this.query);
        if (limit == null) {
            newMutatedKeys = newMutatedKeys2;
        } else if (this.query.isPipeline()) {
            List<MutableDocument> candidates = new ArrayList<>();
            Iterator<Document> it3 = newDocumentSet.iterator();
            while (it3.hasNext()) {
                candidates.add((MutableDocument) it3.next());
            }
            List<MutableDocument> results = this.query.pipeline$com_google_firebase_firebase_firestore().evaluate$com_google_firebase_firebase_firestore(candidates);
            DocumentSet newResults = DocumentSet.emptySet(this.query.comparator());
            Iterator<MutableDocument> it4 = results.iterator();
            while (it4.hasNext()) {
                newResults = newResults.add(it4.next());
            }
            for (Document doc : newDocumentSet) {
                if (!newResults.contains(doc.getKey())) {
                    newMutatedKeys2 = newMutatedKeys2.remove(doc.getKey());
                    changeSet.addChange(DocumentViewChange.create(DocumentViewChange.Type.REMOVED, doc));
                }
            }
            newDocumentSet = newResults;
            newMutatedKeys = newMutatedKeys2;
        } else {
            long absLimit = Math.abs(limit.longValue());
            Query.LimitType limitType = getLimitType(this.query);
            for (long i = ((long) newDocumentSet.size()) - absLimit; i > 0; i--) {
                if (limitType == Query.LimitType.LIMIT_TO_FIRST) {
                    oldDoc = newDocumentSet.getLastDocument();
                } else {
                    oldDoc = newDocumentSet.getFirstDocument();
                }
                newDocumentSet = newDocumentSet.remove(oldDoc.getKey());
                newMutatedKeys2 = newMutatedKeys2.remove(oldDoc.getKey());
                changeSet.addChange(DocumentViewChange.create(DocumentViewChange.Type.REMOVED, oldDoc));
            }
            newMutatedKeys = newMutatedKeys2;
        }
        Assert.hardAssert(!needsRefill4 || previousChanges == null, "View was refilled using docs that themselves needed refilling.", new Object[0]);
        return new DocumentChanges(newDocumentSet, changeSet, newMutatedKeys, needsRefill4);
    }

    private boolean shouldWaitForSyncedDocument(Document oldDoc, Document newDoc) {
        return oldDoc.hasLocalMutations() && newDoc.hasCommittedMutations() && !newDoc.hasLocalMutations();
    }

    public ViewChange applyChanges(DocumentChanges docChanges) {
        return applyChanges(docChanges, null);
    }

    public ViewChange applyChanges(DocumentChanges docChanges, TargetChange targetChange) {
        return applyChanges(docChanges, targetChange, false);
    }

    public ViewChange applyChanges(DocumentChanges docChanges, TargetChange targetChange, boolean targetIsPendingReset) {
        ViewSnapshot snapshot;
        Assert.hardAssert(!docChanges.needsRefill, "Cannot apply changes that need a refill", new Object[0]);
        DocumentSet oldDocumentSet = this.documentSet;
        this.documentSet = docChanges.documentSet;
        this.mutatedKeys = docChanges.mutatedKeys;
        List<DocumentViewChange> viewChanges = docChanges.changeSet.getChanges();
        final Comparator<Document> queryComparator = this.query.comparator();
        Collections.sort(viewChanges, new Comparator() { // from class: com.google.firebase.firestore.core.View$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return View.lambda$applyChanges$0(queryComparator, (DocumentViewChange) obj, (DocumentViewChange) obj2);
            }
        });
        applyTargetChange(targetChange);
        List<LimboDocumentChange> limboDocumentChanges = targetIsPendingReset ? Collections.emptyList() : updateLimboDocuments();
        boolean synced = this.limboDocuments.size() == 0 && this.current && !targetIsPendingReset;
        ViewSnapshot.SyncState newSyncState = synced ? ViewSnapshot.SyncState.SYNCED : ViewSnapshot.SyncState.LOCAL;
        boolean syncStatedChanged = newSyncState != this.syncState;
        this.syncState = newSyncState;
        if (viewChanges.size() == 0 && !syncStatedChanged) {
            snapshot = null;
        } else {
            boolean fromCache = newSyncState == ViewSnapshot.SyncState.LOCAL;
            boolean hasCachedResults = (targetChange == null || targetChange.getResumeToken().isEmpty()) ? false : true;
            ViewSnapshot snapshot2 = new ViewSnapshot(this.query, docChanges.documentSet, oldDocumentSet, viewChanges, fromCache, docChanges.mutatedKeys, syncStatedChanged, false, hasCachedResults);
            snapshot = snapshot2;
        }
        return new ViewChange(snapshot, limboDocumentChanges);
    }

    static /* synthetic */ int lambda$applyChanges$0(Comparator queryComparator, DocumentViewChange o1, DocumentViewChange o2) {
        int i1 = changeTypeOrder(o1);
        int typeComp = Integer.compare(i1, changeTypeOrder(o2));
        if (typeComp != 0) {
            return typeComp;
        }
        return queryComparator.compare(o1.getDocument(), o2.getDocument());
    }

    public ViewChange applyOnlineStateChange(OnlineState onlineState) {
        if (this.current && onlineState == OnlineState.OFFLINE) {
            this.current = false;
            return applyChanges(new DocumentChanges(this.documentSet, new DocumentViewChangeSet(), this.mutatedKeys, false));
        }
        return new ViewChange(null, Collections.emptyList());
    }

    private void applyTargetChange(TargetChange targetChange) {
        if (targetChange != null) {
            for (DocumentKey documentKey : targetChange.getAddedDocuments()) {
                this.syncedDocuments = this.syncedDocuments.insert(documentKey);
            }
            for (DocumentKey documentKey2 : targetChange.getModifiedDocuments()) {
                Assert.hardAssert(this.syncedDocuments.contains(documentKey2), "Modified document %s not found in view.", documentKey2);
            }
            Iterator<DocumentKey> it = targetChange.getRemovedDocuments().iterator();
            while (it.hasNext()) {
                this.syncedDocuments = this.syncedDocuments.remove(it.next());
            }
            this.current = targetChange.isCurrent();
        }
    }

    private List<LimboDocumentChange> updateLimboDocuments() {
        if (!this.current) {
            return Collections.emptyList();
        }
        ImmutableSortedSet<DocumentKey> oldLimboDocs = this.limboDocuments;
        this.limboDocuments = DocumentKey.emptyKeySet();
        for (Document doc : this.documentSet) {
            if (shouldBeLimboDoc(doc.getKey())) {
                this.limboDocuments = this.limboDocuments.insert(doc.getKey());
            }
        }
        List<LimboDocumentChange> changes = new ArrayList<>(oldLimboDocs.size() + this.limboDocuments.size());
        for (DocumentKey key : oldLimboDocs) {
            if (!this.limboDocuments.contains(key)) {
                changes.add(new LimboDocumentChange(LimboDocumentChange.Type.REMOVED, key));
            }
        }
        for (DocumentKey key2 : this.limboDocuments) {
            if (!oldLimboDocs.contains(key2)) {
                changes.add(new LimboDocumentChange(LimboDocumentChange.Type.ADDED, key2));
            }
        }
        return changes;
    }

    private boolean shouldBeLimboDoc(DocumentKey key) {
        Document doc;
        return (this.syncedDocuments.contains(key) || (doc = this.documentSet.getDocument(key)) == null || doc.hasLocalMutations()) ? false : true;
    }

    ImmutableSortedSet<DocumentKey> getLimboDocuments() {
        return this.limboDocuments;
    }

    ImmutableSortedSet<DocumentKey> getSyncedDocuments() {
        return this.syncedDocuments;
    }

    private static int changeTypeOrder(DocumentViewChange change) {
        switch (change.getType()) {
            case ADDED:
                return 1;
            case MODIFIED:
                return 2;
            case METADATA:
                return 2;
            case REMOVED:
                return 0;
            default:
                throw new IllegalArgumentException("Unknown change type: " + change.getType());
        }
    }

    private static Long getLimit(QueryOrPipeline query) {
        if (query.isPipeline()) {
            Integer limit = PipelineUtilKt.getLastEffectiveLimit(query.pipeline$com_google_firebase_firebase_firestore());
            if (limit == null) {
                return null;
            }
            return Long.valueOf(limit.intValue());
        }
        Query q = query.query();
        if (q.hasLimit()) {
            return Long.valueOf(q.getLimit());
        }
        return null;
    }

    private static Query.LimitType getLimitType(QueryOrPipeline query) {
        if (query.isPipeline()) {
            Long limit = getLimit(query);
            return (limit == null || limit.longValue() <= 0) ? Query.LimitType.LIMIT_TO_LAST : Query.LimitType.LIMIT_TO_FIRST;
        }
        return query.query().getLimitType();
    }

    private static LimitEdges getLimitEdges(QueryOrPipeline query, DocumentSet oldDocumentSet) {
        Long limit = getLimit(query);
        if (limit == null) {
            return new LimitEdges(null, null);
        }
        if (!query.isPipeline()) {
            Query q = query.query();
            if (q.getLimitType() == Query.LimitType.LIMIT_TO_FIRST && oldDocumentSet.size() == q.getLimit()) {
                return new LimitEdges(oldDocumentSet.getLastDocument(), null);
            }
            if (q.getLimitType() == Query.LimitType.LIMIT_TO_LAST && oldDocumentSet.size() == q.getLimit()) {
                return new LimitEdges(null, oldDocumentSet.getFirstDocument());
            }
        } else {
            if (limit.longValue() > 0 && oldDocumentSet.size() == limit.longValue()) {
                return new LimitEdges(oldDocumentSet.getLastDocument(), null);
            }
            if (limit.longValue() < 0 && oldDocumentSet.size() == (-limit.longValue())) {
                return new LimitEdges(null, oldDocumentSet.getFirstDocument());
            }
        }
        return new LimitEdges(null, null);
    }
}
