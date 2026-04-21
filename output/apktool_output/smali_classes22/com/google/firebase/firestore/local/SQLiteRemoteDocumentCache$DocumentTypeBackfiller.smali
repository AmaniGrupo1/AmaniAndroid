.class Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;
.super Ljava/lang/Object;
.source "SQLiteRemoteDocumentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentTypeBackfiller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;,
        Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
    }
.end annotation


# instance fields
.field private final documentTypeByBackfillKey:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;",
            "Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->documentTypeByBackfillKey:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$1;

    .line 396
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;-><init>()V

    return-void
.end method


# virtual methods
.method backfill(Lcom/google/firebase/firestore/local/SQLitePersistence;)V
    .locals 3
    .param p1, "db"    # Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 409
    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->calculateBackfillSql()Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;

    move-result-object v0

    .line 410
    .local v0, "backfillSqlInfo":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
    if-nez v0, :cond_0

    .line 411
    nop

    .line 415
    .end local v0    # "backfillSqlInfo":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
    return-void

    .line 413
    .restart local v0    # "backfillSqlInfo":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;->sql:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;->bindings:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .end local v0    # "backfillSqlInfo":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
    goto :goto_0
.end method

.method calculateBackfillSql()Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
    .locals 17
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->documentTypeByBackfillKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 432
    return-object v2

    .line 435
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v1, "bindings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v3, "caseClauses":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v4, "whereClauses":Ljava/lang/StringBuilder;
    iget-object v5, v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->documentTypeByBackfillKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 440
    .local v5, "backfillKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;>;"
    const/4 v6, 0x0

    .line 441
    .local v6, "numDocumentsAffected":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x384

    if-ge v7, v8, :cond_3

    .line 442
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;

    .line 443
    .local v7, "backfillKey":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;
    iget-object v8, v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->documentTypeByBackfillKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    .line 444
    .local v8, "documentType":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    if-nez v8, :cond_1

    .line 445
    goto :goto_0

    .line 448
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 449
    iget-object v9, v7, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;->path:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 451
    .local v9, "pathBindingNumber":I
    iget v10, v7, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;->readTimeSeconds:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 453
    .local v10, "readTimeSecondsBindingNumber":I
    iget v11, v7, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;->readTimeNanos:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 455
    .local v11, "readTimeNanosBindingNumber":I
    iget v12, v8, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->dbValue:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 458
    .local v12, "dbValueBindingNumber":I
    nop

    .line 459
    const-string v13, " WHEN path=?"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 460
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 461
    const-string v14, " AND read_time_seconds=?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 462
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 463
    const-string v15, " AND read_time_nanos=?"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 464
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 465
    move-object/from16 v16, v2

    const-string v2, " THEN ?"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 469
    const-string v2, " OR"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_2
    nop

    .line 472
    const-string v2, " (path=?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 475
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    const/16 v13, 0x29

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    .end local v7    # "backfillKey":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;
    .end local v8    # "documentType":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    .end local v9    # "pathBindingNumber":I
    .end local v10    # "readTimeSecondsBindingNumber":I
    .end local v11    # "readTimeNanosBindingNumber":I
    .end local v12    # "dbValueBindingNumber":I
    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 441
    :cond_3
    move-object/from16 v16, v2

    .line 481
    if-nez v6, :cond_4

    .line 482
    return-object v16

    .line 485
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE remote_documents SET document_type = CASE"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " ELSE NULL END WHERE"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "sql":Ljava/lang/String;
    new-instance v7, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v2, v8, v6}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    return-object v7
.end method

.method enqueue(Ljava/lang/String;IILcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readTimeSeconds"    # I
    .param p3, "readTimeNanos"    # I
    .param p4, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 402
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;-><init>(Ljava/lang/String;II)V

    .line 403
    .local v0, "backfillKey":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillKey;
    invoke-static {p4}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->forMutableDocument(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    move-result-object v1

    .line 404
    .local v1, "documentType":Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->documentTypeByBackfillKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method
