.class final Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;
.super Ljava/lang/Object;
.source "SQLiteRemoteDocumentCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/RemoteDocumentCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;,
        Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    }
.end annotation


# static fields
.field static final BINDS_PER_STATEMENT:I = 0x9


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

.field private indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 2
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$1;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    .line 64
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 66
    return-void
.end method

.method private decodeMaybeDocument([BII)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "readTimeSeconds"    # I
    .param p3, "readTimeNanos"    # I

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 370
    invoke-static {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->parseFrom([B)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMaybeDocument(Lcom/google/firebase/firestore/proto/MaybeDocument;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v2, Lcom/google/firebase/Timestamp;

    int-to-long v3, p2

    invoke-direct {v2, v3, v4, p3}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument;->setReadTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "MaybeDocument failed to parse: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 14
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "count"    # I
    .param p4, "tryFilterDocumentType"    # Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I",
            "Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 228
    .local p1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    .local p5, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v3

    .line 229
    .local v3, "readTime":Lcom/google/firebase/Timestamp;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 231
    .local v4, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT contents, read_time_seconds, read_time_nanos, document_type, path FROM remote_documents WHERE path >= ? AND path < ? AND path_length = ? "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    if-nez v1, :cond_0

    .line 237
    const-string v5, ""

    goto :goto_0

    .line 238
    :cond_0
    const-string v5, " AND (document_type IS NULL OR document_type = ?) "

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "AND (read_time_seconds > ? OR ( read_time_seconds = ? AND read_time_nanos > ?) OR ( read_time_seconds = ? AND read_time_nanos = ? and path > ?)) "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, " UNION "

    .line 232
    invoke-static {v0, v5, v6}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 244
    .local v5, "sql":Ljava/lang/StringBuilder;
    const-string v0, "ORDER BY read_time_seconds, read_time_nanos, path LIMIT ?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    nop

    .line 248
    const/4 v0, 0x1

    if-eqz v1, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v6, v6, 0x9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 250
    .local v6, "bindVars":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 251
    .local v7, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 252
    .local v9, "collection":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-static {v9}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "prefixPath":Ljava/lang/String;
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "i":I
    .local v11, "i":I
    aput-object v10, v6, v7

    .line 254
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "i":I
    .restart local v7    # "i":I
    invoke-static {v10}, Lcom/google/firebase/firestore/local/EncodedPath;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    .line 255
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v12

    add-int/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    .line 256
    if-eqz v1, :cond_2

    .line 257
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "i":I
    .restart local v7    # "i":I
    iget v12, v1, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->dbValue:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    move v11, v7

    .line 259
    .end local v7    # "i":I
    .restart local v11    # "i":I
    :cond_2
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v11

    .line 260
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v7

    .line 261
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    .line 262
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v7

    .line 263
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    .line 264
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v12

    invoke-static {v12}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    .line 265
    .end local v9    # "collection":Lcom/google/firebase/firestore/model/ResourcePath;
    .end local v10    # "prefixPath":Ljava/lang/String;
    move v7, v11

    goto :goto_2

    .line 266
    .end local v11    # "i":I
    .restart local v7    # "i":I
    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    .line 268
    new-instance v0, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    move-object v8, v0

    .line 269
    .local v8, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 270
    .local v9, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v10, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;

    move-object/from16 v11, p5

    invoke-direct {v10, p0, v8, v9, v11}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;)V

    .line 273
    invoke-virtual {v0, v10}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    move-result v10

    .line 274
    .local v10, "cnt":I
    if-eqz v2, :cond_4

    .line 275
    invoke-virtual {v2, v10}, Lcom/google/firebase/firestore/local/QueryContext;->incrementDocumentReadCount(I)V

    .line 277
    :cond_4
    invoke-virtual {v8}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 280
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    iget-object v12, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v0, v12}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->backfill(Lcom/google/firebase/firestore/local/SQLitePersistence;)V

    .line 283
    monitor-enter v9

    .line 284
    :try_start_0
    monitor-exit v9

    return-object v9

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;
    .locals 7
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "count"    # I
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 293
    .local p1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    .local p4, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    .end local p2    # "offset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .end local p3    # "count":I
    .end local p4    # "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    .local v1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    .local v2, "offset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .local v3, "count":I
    .local v5, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getDocumentsMatchingQuery$3(Lcom/google/firebase/firestore/core/QueryOrPipeline;Ljava/util/Set;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .param p1, "mutatedKeys"    # Ljava/util/Set;
    .param p2, "doc"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 362
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V
    .locals 10
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p3, "row"    # Landroid/database/Cursor;
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/BackgroundQueue;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Landroid/database/Cursor;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .local p4, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 303
    .local v3, "rawDocument":[B
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 304
    .local v4, "readTimeSeconds":I
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 305
    .local v5, "readTimeNanos":I
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    .line 306
    .local v6, "documentTypeIsNull":Z
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "path":Ljava/lang/String;
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v9, p2

    move-object v8, p4

    .end local p2    # "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local p4    # "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    .local v8, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    .local v9, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;[BIIZLjava/lang/String;Lcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V

    .line 324
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {p3}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;->submit(Ljava/lang/Runnable;)V

    .line 329
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 11
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 101
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 102
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    const-string v2, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 106
    .local v0, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v1

    .line 107
    .local v1, "timestamp":Lcom/google/firebase/Timestamp;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMaybeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v2

    .line 109
    .local v2, "message":Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 113
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 115
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 116
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 117
    invoke-static {p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->forMutableDocument(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    move-result-object v4

    iget v4, v4, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->dbValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 118
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    .line 109
    const-string v5, "INSERT OR REPLACE INTO remote_documents (path, path_length, read_time_seconds, read_time_nanos, document_type, contents) VALUES (?, ?, ?, ?, ?, ?)"

    invoke-virtual {v3, v5, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/firebase/firestore/local/IndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    .line 121
    return-void
.end method

.method public get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p1, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 148
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 153
    .local p1, "documentKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "bindVars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 156
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v3}, Lcom/google/firebase/firestore/model/MutableDocument;->newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 163
    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v4, "SELECT contents, read_time_seconds, read_time_nanos, document_type, path FROM remote_documents WHERE path IN ("

    const-string v5, ") ORDER BY path"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 172
    .local v2, "longQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
    new-instance v3, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v3}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 173
    .local v3, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    :goto_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    nop

    .line 175
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 176
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 181
    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->backfill(Lcom/google/firebase/firestore/local/SQLitePersistence;)V

    .line 184
    monitor-enter v0

    .line 185
    :try_start_0
    monitor-exit v0

    return-object v0

    .line 186
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAll(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;I)Ljava/util/Map;
    .locals 8
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->getCollectionParents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "collectionParents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 195
    .local v3, "collectionParent":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v3    # "collectionParent":Lcom/google/firebase/firestore/model/ResourcePath;
    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 200
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    const/16 v3, 0x384

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 201
    invoke-direct {p0, v1, p2, p3, v4}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 204
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    const/16 v3, 0x64

    .line 206
    .local v3, "pageSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 207
    nop

    .line 209
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 208
    invoke-direct {p0, v6, p2, p3, v4}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;

    move-result-object v6

    .line 207
    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 206
    add-int/2addr v5, v3

    goto :goto_1

    .line 214
    .end local v5    # "i":I
    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->DOCUMENT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p3, v4}, Lcom/google/firebase/firestore/util/Util;->firstNEntries(Ljava/util/Map;ILjava/util/Comparator;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 334
    .local p3, "mutatedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 8
    .param p1, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 343
    .local p3, "mutatedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    sget-object v0, Lcom/google/firebase/firestore/model/ResourcePath;->EMPTY:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 344
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->query()Lcom/google/firebase/firestore/core/Query;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    goto :goto_1

    .line 347
    :cond_0
    nop

    .line 348
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->pipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineCollection(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "pathString":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const-string v4, "SQLiteRemoteDocumentCache.getDocumentsMatchingQuery receives pipeline without collection source."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-static {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 354
    .end local v1    # "pathString":Ljava/lang/String;
    :goto_1
    nop

    .line 355
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v5, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    new-instance v6, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/core/QueryOrPipeline;Ljava/util/Set;)V

    .line 354
    const v4, 0x7fffffff

    move-object v1, p0

    move-object v3, p2

    move-object v7, p4

    .end local p2    # "offset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .end local p4    # "context":Lcom/google/firebase/firestore/local/QueryContext;
    .local v3, "offset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .local v7, "context":Lcom/google/firebase/firestore/local/QueryContext;
    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object p2

    return-object p2
.end method

.method synthetic lambda$getAll$0$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "results"    # Ljava/util/Map;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V

    return-void
.end method

.method synthetic lambda$getAll$1$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "results"    # Ljava/util/Map;
    .param p3, "filter"    # Lcom/google/firebase/firestore/util/Function;
    .param p4, "row"    # Landroid/database/Cursor;

    .line 273
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V

    return-void
.end method

.method synthetic lambda$processRowInBackground$2$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache([BIIZLjava/lang/String;Lcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V
    .locals 2
    .param p1, "rawDocument"    # [B
    .param p2, "readTimeSeconds"    # I
    .param p3, "readTimeNanos"    # I
    .param p4, "documentTypeIsNull"    # Z
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "filter"    # Lcom/google/firebase/firestore/util/Function;
    .param p7, "results"    # Ljava/util/Map;

    .line 310
    nop

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->decodeMaybeDocument([BII)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    .line 312
    .local v0, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    if-eqz p4, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    invoke-virtual {v1, p5, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->enqueue(Ljava/lang/String;IILcom/google/firebase/firestore/model/MutableDocument;)V

    .line 315
    :cond_0
    if-eqz p6, :cond_1

    invoke-interface {p6, v0}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    :cond_1
    monitor-enter p7

    .line 317
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-interface {p7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit p7

    .line 320
    :cond_2
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "encodedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 130
    .local v1, "deletedDocs":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 131
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 133
    invoke-static {v3, v4}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 134
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 136
    :cond_1
    new-instance v2, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v4, "DELETE FROM remote_documents WHERE path IN ("

    const-string v5, ")"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 139
    .local v2, "longQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
    :goto_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->executeNextSubquery()V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v3, v1}, Lcom/google/firebase/firestore/local/IndexManager;->updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 144
    return-void
.end method

.method public setIndexManager(Lcom/google/firebase/firestore/local/IndexManager;)V
    .locals 0
    .param p1, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 70
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 71
    return-void
.end method
