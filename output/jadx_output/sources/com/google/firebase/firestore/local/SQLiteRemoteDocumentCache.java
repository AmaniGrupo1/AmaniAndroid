package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.Timestamp;
import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.firestore.core.PipelineUtilKt;
import com.google.firebase.firestore.core.QueryOrPipeline;
import com.google.firebase.firestore.local.SQLitePersistence;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentCollections;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldIndex;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.proto.MaybeDocument;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.BackgroundQueue;
import com.google.firebase.firestore.util.Consumer;
import com.google.firebase.firestore.util.Function;
import com.google.firebase.firestore.util.Util;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes22.dex */
final class SQLiteRemoteDocumentCache implements RemoteDocumentCache {
    static final int BINDS_PER_STATEMENT = 9;
    private final SQLitePersistence db;
    private final DocumentTypeBackfiller documentTypeBackfiller = new DocumentTypeBackfiller();
    private IndexManager indexManager;
    private final LocalSerializer serializer;

    SQLiteRemoteDocumentCache(SQLitePersistence persistence, LocalSerializer serializer) {
        this.db = persistence;
        this.serializer = serializer;
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public void setIndexManager(IndexManager indexManager) {
        this.indexManager = indexManager;
    }

    private enum DocumentType {
        NO_DOCUMENT(1),
        FOUND_DOCUMENT(2),
        UNKNOWN_DOCUMENT(3),
        INVALID_DOCUMENT(4);

        final int dbValue;

        DocumentType(int dbValue) {
            this.dbValue = dbValue;
        }

        static DocumentType forMutableDocument(MutableDocument document) {
            if (document.isNoDocument()) {
                return NO_DOCUMENT;
            }
            if (document.isFoundDocument()) {
                return FOUND_DOCUMENT;
            }
            if (document.isUnknownDocument()) {
                return UNKNOWN_DOCUMENT;
            }
            Assert.hardAssert(!document.isValidDocument(), "MutableDocument has an unknown type", new Object[0]);
            return INVALID_DOCUMENT;
        }
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public void add(MutableDocument document, SnapshotVersion readTime) {
        Assert.hardAssert(!readTime.equals(SnapshotVersion.NONE), "Cannot add document to the RemoteDocumentCache with a read time of zero", new Object[0]);
        DocumentKey documentKey = document.getKey();
        Timestamp timestamp = readTime.getTimestamp();
        MessageLite message = this.serializer.encodeMaybeDocument(document);
        this.db.execute("INSERT OR REPLACE INTO remote_documents (path, path_length, read_time_seconds, read_time_nanos, document_type, contents) VALUES (?, ?, ?, ?, ?, ?)", EncodedPath.encode(documentKey.getPath()), Integer.valueOf(documentKey.getPath().length()), Long.valueOf(timestamp.getSeconds()), Integer.valueOf(timestamp.getNanoseconds()), Integer.valueOf(DocumentType.forMutableDocument(document).dbValue), message.toByteArray());
        this.indexManager.addToCollectionParentIndex(document.getKey().getCollectionPath());
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public void removeAll(Collection<DocumentKey> keys) {
        if (keys.isEmpty()) {
            return;
        }
        List<Object> encodedPaths = new ArrayList<>();
        ImmutableSortedMap<DocumentKey, Document> deletedDocs = DocumentCollections.emptyDocumentMap();
        for (DocumentKey key : keys) {
            encodedPaths.add(EncodedPath.encode(key.getPath()));
            deletedDocs = deletedDocs.insert(key, MutableDocument.newNoDocument(key, SnapshotVersion.NONE));
        }
        SQLitePersistence.LongQuery longQuery = new SQLitePersistence.LongQuery(this.db, "DELETE FROM remote_documents WHERE path IN (", encodedPaths, ")");
        while (longQuery.hasMoreSubqueries()) {
            longQuery.executeNextSubquery();
        }
        this.indexManager.updateIndexEntries(deletedDocs);
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public MutableDocument get(DocumentKey documentKey) {
        return getAll(Collections.singletonList(documentKey)).get(documentKey);
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public Map<DocumentKey, MutableDocument> getAll(Iterable<DocumentKey> documentKeys) {
        final Map<DocumentKey, MutableDocument> results = new HashMap<>();
        List<Object> bindVars = new ArrayList<>();
        for (DocumentKey key : documentKeys) {
            bindVars.add(EncodedPath.encode(key.getPath()));
            results.put(key, MutableDocument.newInvalidDocument(key));
        }
        SQLitePersistence.LongQuery longQuery = new SQLitePersistence.LongQuery(this.db, "SELECT contents, read_time_seconds, read_time_nanos, document_type, path FROM remote_documents WHERE path IN (", bindVars, ") ORDER BY path");
        final BackgroundQueue backgroundQueue = new BackgroundQueue();
        while (longQuery.hasMoreSubqueries()) {
            longQuery.performNextSubquery().forEach(new Consumer() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3
                @Override // com.google.firebase.firestore.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.m8413xca14d1c3(backgroundQueue, results, (Cursor) obj);
                }
            });
        }
        backgroundQueue.drain();
        this.documentTypeBackfiller.backfill(this.db);
        synchronized (results) {
        }
        return results;
    }

    /* JADX INFO: renamed from: lambda$getAll$0$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache, reason: not valid java name */
    /* synthetic */ void m8413xca14d1c3(BackgroundQueue backgroundQueue, Map results, Cursor row) {
        m8414xbda45604(backgroundQueue, results, row, null);
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public Map<DocumentKey, MutableDocument> getAll(String collectionGroup, FieldIndex.IndexOffset offset, int limit) {
        List<ResourcePath> collectionParents = this.indexManager.getCollectionParents(collectionGroup);
        List<ResourcePath> collections = new ArrayList<>(collectionParents.size());
        for (ResourcePath collectionParent : collectionParents) {
            collections.add(collectionParent.append(collectionGroup));
        }
        if (collections.isEmpty()) {
            return Collections.emptyMap();
        }
        if (collections.size() * 9 < 900) {
            return getAll(collections, offset, limit, null);
        }
        Map<DocumentKey, MutableDocument> results = new HashMap<>();
        for (int i = 0; i < collections.size(); i += 100) {
            results.putAll(getAll(collections.subList(i, Math.min(collections.size(), i + 100)), offset, limit, null));
        }
        return Util.firstNEntries(results, limit, FieldIndex.IndexOffset.DOCUMENT_COMPARATOR);
    }

    private Map<DocumentKey, MutableDocument> getAll(List<ResourcePath> collections, FieldIndex.IndexOffset offset, int count, @Nullable DocumentType tryFilterDocumentType, @Nullable final Function<MutableDocument, Boolean> filter, @Nullable QueryContext context) {
        String str;
        Timestamp readTime = offset.getReadTime().getTimestamp();
        DocumentKey documentKey = offset.getDocumentKey();
        StringBuilder sbAppend = new StringBuilder().append("SELECT contents, read_time_seconds, read_time_nanos, document_type, path FROM remote_documents WHERE path >= ? AND path < ? AND path_length = ? ");
        if (tryFilterDocumentType == null) {
            str = "";
        } else {
            str = " AND (document_type IS NULL OR document_type = ?) ";
        }
        StringBuilder sql = Util.repeatSequence(sbAppend.append(str).append("AND (read_time_seconds > ? OR ( read_time_seconds = ? AND read_time_nanos > ?) OR ( read_time_seconds = ? AND read_time_nanos = ? and path > ?)) ").toString(), collections.size(), " UNION ");
        sql.append("ORDER BY read_time_seconds, read_time_nanos, path LIMIT ?");
        Object[] bindVars = new Object[(((tryFilterDocumentType != null ? 1 : 0) + 9) * collections.size()) + 1];
        int i = 0;
        for (ResourcePath collection : collections) {
            String prefixPath = EncodedPath.encode(collection);
            int i2 = i + 1;
            bindVars[i] = prefixPath;
            int i3 = i2 + 1;
            bindVars[i2] = EncodedPath.prefixSuccessor(prefixPath);
            int i4 = i3 + 1;
            bindVars[i3] = Integer.valueOf(collection.length() + 1);
            if (tryFilterDocumentType != null) {
                bindVars[i4] = Integer.valueOf(tryFilterDocumentType.dbValue);
                i4++;
            }
            int i5 = i4 + 1;
            bindVars[i4] = Long.valueOf(readTime.getSeconds());
            int i6 = i5 + 1;
            bindVars[i5] = Long.valueOf(readTime.getSeconds());
            int i7 = i6 + 1;
            bindVars[i6] = Integer.valueOf(readTime.getNanoseconds());
            int i8 = i7 + 1;
            bindVars[i7] = Long.valueOf(readTime.getSeconds());
            int i9 = i8 + 1;
            bindVars[i8] = Integer.valueOf(readTime.getNanoseconds());
            bindVars[i9] = EncodedPath.encode(documentKey.getPath());
            i = i9 + 1;
        }
        bindVars[i] = Integer.valueOf(count);
        final BackgroundQueue backgroundQueue = new BackgroundQueue();
        final Map<DocumentKey, MutableDocument> results = new HashMap<>();
        int cnt = this.db.query(sql.toString()).binding(bindVars).forEach(new Consumer() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2
            @Override // com.google.firebase.firestore.util.Consumer
            public final void accept(Object obj) {
                this.f$0.m8414xbda45604(backgroundQueue, results, filter, (Cursor) obj);
            }
        });
        if (context != null) {
            context.incrementDocumentReadCount(cnt);
        }
        backgroundQueue.drain();
        this.documentTypeBackfiller.backfill(this.db);
        synchronized (results) {
        }
        return results;
    }

    private Map<DocumentKey, MutableDocument> getAll(List<ResourcePath> collections, FieldIndex.IndexOffset offset, int count, @Nullable Function<MutableDocument, Boolean> filter) {
        return getAll(collections, offset, count, null, filter, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processRowInBackground, reason: merged with bridge method [inline-methods] */
    public void m8414xbda45604(BackgroundQueue backgroundQueue, final Map<DocumentKey, MutableDocument> results, Cursor row, @Nullable final Function<MutableDocument, Boolean> filter) {
        final byte[] rawDocument = row.getBlob(0);
        final int readTimeSeconds = row.getInt(1);
        final int readTimeNanos = row.getInt(2);
        final boolean documentTypeIsNull = row.isNull(3);
        final String path = row.getString(4);
        Runnable runnable = new Runnable() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m8415x16ef698(rawDocument, readTimeSeconds, readTimeNanos, documentTypeIsNull, path, filter, results);
            }
        };
        if (row.isFirst() && row.isLast()) {
            runnable.run();
        } else {
            backgroundQueue.submit(runnable);
        }
    }

    /* JADX INFO: renamed from: lambda$processRowInBackground$2$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache, reason: not valid java name */
    /* synthetic */ void m8415x16ef698(byte[] rawDocument, int readTimeSeconds, int readTimeNanos, boolean documentTypeIsNull, String path, Function filter, Map results) {
        MutableDocument document = decodeMaybeDocument(rawDocument, readTimeSeconds, readTimeNanos);
        if (documentTypeIsNull) {
            this.documentTypeBackfiller.enqueue(path, readTimeSeconds, readTimeNanos, document);
        }
        if (filter == null || ((Boolean) filter.apply(document)).booleanValue()) {
            synchronized (results) {
                results.put(document.getKey(), document);
            }
        }
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public Map<DocumentKey, MutableDocument> getDocumentsMatchingQuery(QueryOrPipeline query, FieldIndex.IndexOffset offset, @Nonnull Set<DocumentKey> mutatedKeys) {
        return getDocumentsMatchingQuery(query, offset, mutatedKeys, null);
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public Map<DocumentKey, MutableDocument> getDocumentsMatchingQuery(final QueryOrPipeline query, FieldIndex.IndexOffset offset, @Nonnull final Set<DocumentKey> mutatedKeys, @Nullable QueryContext context) {
        ResourcePath path;
        ResourcePath resourcePath = ResourcePath.EMPTY;
        if (query.isQuery()) {
            path = query.query().getPath();
        } else {
            String pathString = PipelineUtilKt.getPipelineCollection(query.pipeline$com_google_firebase_firebase_firestore());
            Assert.hardAssert(pathString != null, "SQLiteRemoteDocumentCache.getDocumentsMatchingQuery receives pipeline without collection source.", new Object[0]);
            path = ResourcePath.fromString(pathString);
        }
        return getAll(Collections.singletonList(path), offset, Integer.MAX_VALUE, DocumentType.FOUND_DOCUMENT, new Function() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                MutableDocument mutableDocument = (MutableDocument) obj;
                return Boolean.valueOf(query.matches(mutableDocument) || mutatedKeys.contains(mutableDocument.getKey()));
            }
        }, context);
    }

    private MutableDocument decodeMaybeDocument(byte[] bytes, int readTimeSeconds, int readTimeNanos) {
        try {
            return this.serializer.decodeMaybeDocument(MaybeDocument.parseFrom(bytes)).setReadTime(new SnapshotVersion(new Timestamp(readTimeSeconds, readTimeNanos)));
        } catch (InvalidProtocolBufferException e) {
            throw Assert.fail("MaybeDocument failed to parse: %s", e);
        }
    }

    private static class DocumentTypeBackfiller {
        private final ConcurrentHashMap<BackfillKey, DocumentType> documentTypeByBackfillKey;

        private DocumentTypeBackfiller() {
            this.documentTypeByBackfillKey = new ConcurrentHashMap<>();
        }

        void enqueue(String path, int readTimeSeconds, int readTimeNanos, MutableDocument document) {
            BackfillKey backfillKey = new BackfillKey(path, readTimeSeconds, readTimeNanos);
            DocumentType documentType = DocumentType.forMutableDocument(document);
            this.documentTypeByBackfillKey.putIfAbsent(backfillKey, documentType);
        }

        void backfill(SQLitePersistence db) {
            while (true) {
                BackfillSqlInfo backfillSqlInfo = calculateBackfillSql();
                if (backfillSqlInfo != null) {
                    db.execute(backfillSqlInfo.sql, backfillSqlInfo.bindings);
                } else {
                    return;
                }
            }
        }

        private static class BackfillSqlInfo {
            final Object[] bindings;
            final int numDocumentsAffected;
            final String sql;

            BackfillSqlInfo(String sql, Object[] bindings, int numDocumentsAffected) {
                this.sql = sql;
                this.bindings = bindings;
                this.numDocumentsAffected = numDocumentsAffected;
            }
        }

        @Nullable
        BackfillSqlInfo calculateBackfillSql() {
            BackfillSqlInfo backfillSqlInfo = null;
            if (this.documentTypeByBackfillKey.isEmpty()) {
                return null;
            }
            ArrayList<Object> bindings = new ArrayList<>();
            StringBuilder caseClauses = new StringBuilder();
            StringBuilder whereClauses = new StringBuilder();
            Iterator<BackfillKey> backfillKeys = this.documentTypeByBackfillKey.keySet().iterator();
            int numDocumentsAffected = 0;
            while (backfillKeys.hasNext() && bindings.size() < 900) {
                BackfillKey backfillKey = backfillKeys.next();
                DocumentType documentType = this.documentTypeByBackfillKey.remove(backfillKey);
                if (documentType != null) {
                    numDocumentsAffected++;
                    bindings.add(backfillKey.path);
                    int pathBindingNumber = bindings.size();
                    bindings.add(Integer.valueOf(backfillKey.readTimeSeconds));
                    int readTimeSecondsBindingNumber = bindings.size();
                    bindings.add(Integer.valueOf(backfillKey.readTimeNanos));
                    int readTimeNanosBindingNumber = bindings.size();
                    bindings.add(Integer.valueOf(documentType.dbValue));
                    int dbValueBindingNumber = bindings.size();
                    BackfillSqlInfo backfillSqlInfo2 = backfillSqlInfo;
                    caseClauses.append(" WHEN path=?").append(pathBindingNumber).append(" AND read_time_seconds=?").append(readTimeSecondsBindingNumber).append(" AND read_time_nanos=?").append(readTimeNanosBindingNumber).append(" THEN ?").append(dbValueBindingNumber);
                    if (whereClauses.length() > 0) {
                        whereClauses.append(" OR");
                    }
                    whereClauses.append(" (path=?").append(pathBindingNumber).append(" AND read_time_seconds=?").append(readTimeSecondsBindingNumber).append(" AND read_time_nanos=?").append(readTimeNanosBindingNumber).append(')');
                    backfillSqlInfo = backfillSqlInfo2;
                }
            }
            BackfillSqlInfo backfillSqlInfo3 = backfillSqlInfo;
            if (numDocumentsAffected == 0) {
                return backfillSqlInfo3;
            }
            String sql = "UPDATE remote_documents SET document_type = CASE" + ((Object) caseClauses) + " ELSE NULL END WHERE" + ((Object) whereClauses);
            return new BackfillSqlInfo(sql, bindings.toArray(), numDocumentsAffected);
        }

        private static class BackfillKey {
            final String path;
            final int readTimeNanos;
            final int readTimeSeconds;

            BackfillKey(String path, int readTimeSeconds, int readTimeNanos) {
                this.path = path;
                this.readTimeSeconds = readTimeSeconds;
                this.readTimeNanos = readTimeNanos;
            }

            public boolean equals(Object object) {
                if (object == this) {
                    return true;
                }
                if (!(object instanceof BackfillKey)) {
                    return false;
                }
                BackfillKey other = (BackfillKey) object;
                return this.readTimeSeconds == other.readTimeSeconds && this.readTimeNanos == other.readTimeNanos && Objects.equals(this.path, other.path);
            }

            public int hashCode() {
                return Objects.hash(this.path, Integer.valueOf(this.readTimeSeconds), Integer.valueOf(this.readTimeNanos));
            }

            public String toString() {
                return "DocumentTypeBackfiller.BackfillKey(path=" + this.path + ", readTimeSeconds=" + this.readTimeSeconds + ", readTimeNanos=" + this.readTimeNanos + ")";
            }
        }
    }
}
