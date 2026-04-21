.class Lcom/google/firebase/firestore/local/SQLiteSchema;
.super Ljava/lang/Object;
.source "SQLiteSchema.java"


# static fields
.field static final MIGRATION_BATCH_SIZE:I = 0x64

.field static final VERSION:I = 0x12


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 69
    return-void
.end method

.method private addDocumentType()V
    .locals 2

    .line 462
    const-string v0, "remote_documents"

    const-string v1, "document_type"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN document_type INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method

.method private addPathLength()V
    .locals 2

    .line 449
    const-string v0, "remote_documents"

    const-string v1, "path_length"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN path_length INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    :cond_0
    return-void
.end method

.method private addPendingDataMigration(Ljava/lang/String;)V
    .locals 3
    .param p1, "migration"    # Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR IGNORE INTO data_migrations (migration_name) VALUES (?)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method private addReadTime()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN read_time_seconds INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN read_time_nanos INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private addSequenceNumber()V
    .locals 2

    .line 443
    const-string v0, "target_documents"

    const-string v1, "sequence_number"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE target_documents ADD COLUMN sequence_number INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method private addTargetCount()V
    .locals 6

    .line 432
    const-string v0, "target_globals"

    const-string v1, "target_count"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ALTER TABLE target_globals ADD COLUMN target_count INTEGER"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "targets"

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 437
    .local v2, "count":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method private createBundleCache()V
    .locals 2

    .line 679
    const-string v0, "bundles"

    const-string v1, "named_queries"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda11;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method private createDataMigrationTable()V
    .locals 2

    .line 720
    const-string v0, "data_migrations"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 728
    return-void
.end method

.method private createFieldIndex()V
    .locals 3

    .line 380
    const-string v0, "index_state"

    const-string v1, "index_entries"

    const-string v2, "index_configuration"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda17;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method private createGlobalsTable()V
    .locals 2

    .line 737
    const-string v0, "globals"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method private createOverlays()V
    .locals 2

    .line 701
    const-string v0, "document_overlays"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda13;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 717
    return-void
.end method

.method private createV1MutationQueue()V
    .locals 3

    .line 244
    const-string v0, "mutations"

    const-string v1, "document_mutations"

    const-string v2, "mutation_queues"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda14;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method private createV1RemoteDocumentCache()V
    .locals 2

    .line 359
    const-string v0, "remote_documents"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method private createV1TargetCache()V
    .locals 3

    .line 308
    const-string v0, "target_globals"

    const-string v1, "target_documents"

    const-string v2, "targets"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda18;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method private createV8CollectionParentsIndex()V
    .locals 7

    .line 546
    const-string v0, "collection_parents"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 562
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;-><init>()V

    .line 564
    .local v0, "cache":Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 565
    const-string v2, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 567
    .local v1, "addIndexEntry":Landroid/database/sqlite/SQLiteStatement;
    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;)V

    .line 580
    .local v2, "addEntry":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    new-instance v3, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT path FROM remote_documents"

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 582
    .local v3, "remoteDocumentsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/util/Consumer;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 589
    new-instance v4, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT path FROM document_mutations"

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 591
    .local v4, "documentMutationsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/util/Consumer;)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 596
    return-void
.end method

.method private dropLastLimboFreeSnapshotVersion()V
    .locals 3

    .line 484
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT target_id, target_proto FROM targets"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    .line 485
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 500
    return-void
.end method

.method private dropV1TargetCache()V
    .locals 2

    .line 347
    const-string v0, "targets"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE targets"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    :cond_0
    const-string v0, "target_globals"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE target_globals"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    :cond_1
    const-string v0, "target_documents"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE target_documents"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    :cond_2
    return-void
.end method

.method private ensurePathLength()V
    .locals 5

    .line 645
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT path FROM remote_documents WHERE path_length IS NULL LIMIT ?"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 648
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 649
    .local v0, "documentsToMigrate":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 650
    const-string v2, "UPDATE remote_documents SET path_length = ? WHERE path = ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 652
    .local v1, "insertKey":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 655
    .local v2, "resultsRemaining":[Z
    :cond_0
    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 657
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda10;-><init>([ZLandroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 669
    aget-boolean v3, v2, v3

    if-nez v3, :cond_0

    .line 670
    return-void
.end method

.method private ensureReadTime()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE remote_documents SET read_time_seconds = 0, read_time_nanos = 0 WHERE read_time_seconds IS NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private ensureSequenceNumbers()V
    .locals 10

    .line 509
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT highest_listen_sequence_number FROM target_globals LIMIT 1"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 512
    .local v0, "sequenceNumberQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 513
    .local v1, "boxedSequenceNumber":Ljava/lang/Long;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Missing highest sequence number"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 516
    .local v4, "sequenceNumber":J
    iget-object v6, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 517
    const-string v7, "INSERT INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 520
    .local v6, "tagDocument":Landroid/database/sqlite/SQLiteStatement;
    new-instance v7, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v8, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT RD.path FROM remote_documents AS RD WHERE NOT EXISTS (SELECT TD.path FROM target_documents AS TD WHERE RD.path = TD.path AND TD.target_id = 0) LIMIT ?"

    invoke-direct {v7, v8, v9}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 527
    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v7

    .line 529
    .local v7, "untaggedDocumentsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-array v2, v2, [Z

    .line 532
    .local v2, "resultsRemaining":[Z
    :cond_1
    aput-boolean v3, v2, v3

    .line 534
    new-instance v8, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda16;

    invoke-direct {v8, v2, v6, v4, v5}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda16;-><init>([ZLandroid/database/sqlite/SQLiteStatement;J)V

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 542
    aget-boolean v8, v2, v3

    if-nez v8, :cond_1

    .line 543
    return-void
.end method

.method private ensureTargetGlobal()V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "target_globals"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    .local v0, "targetGlobalExists":Z
    :goto_0
    if-nez v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO target_globals (highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos) VALUES (?, ?, ?, ?)"

    const-string v3, "0"

    filled-new-array {v3, v3, v3, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_1
    return-void
.end method

.method private hasReadTime()Z
    .locals 7

    .line 468
    const-string v0, "read_time_seconds"

    const-string v1, "remote_documents"

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 469
    .local v0, "hasReadTimeSeconds":Z
    const-string v2, "read_time_nanos"

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 471
    .local v1, "hasReadTimeNanos":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Table contained just one of read_time_seconds or read_time_nanos"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 475
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "tables"    # [Ljava/lang/String;
    .param p2, "fn"    # Ljava/lang/Runnable;

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "tablesFound":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "allTables":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 221
    aget-object v3, p1, v2

    .line 222
    .local v3, "table":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v5

    .line 223
    .local v5, "tableFound":Z
    if-nez v2, :cond_0

    .line 224
    move v0, v5

    goto :goto_2

    .line 225
    :cond_0
    if-eq v5, v0, :cond_2

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected all of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to either exist or not, but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "msg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, p1, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " exists and "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " does not"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v6    # "msg":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    goto :goto_1

    .line 230
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v6    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, p1, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " does not exist and "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " does"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "tableFound":Z
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 236
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 238
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping migration because all of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "SQLiteSchema"

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_3
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$10(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 4
    .param p0, "cache"    # Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;
    .param p1, "addIndexEntry"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "collectionPath"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 569
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->add(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "collectionId":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 572
    .local v1, "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 573
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 574
    const/4 v2, 0x2

    invoke-static {v1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 577
    .end local v0    # "collectionId":Ljava/lang/String;
    .end local v1    # "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_0
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$11(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "addEntry"    # Lcom/google/firebase/firestore/util/Consumer;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 584
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 585
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {p0, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 586
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$12(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "addEntry"    # Lcom/google/firebase/firestore/util/Consumer;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 593
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 594
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {p0, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method static synthetic lambda$ensurePathLength$14([ZLandroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;)V
    .locals 6
    .param p0, "resultsRemaining"    # [Z
    .param p1, "insertKey"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 659
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    .line 661
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "encodedPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 664
    .local v3, "decodedPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 665
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 666
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v4, "Failed to update document path"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method static synthetic lambda$ensureSequenceNumbers$7(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .line 512
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$ensureSequenceNumbers$8([ZLandroid/database/sqlite/SQLiteStatement;JLandroid/database/Cursor;)V
    .locals 6
    .param p0, "resultsRemaining"    # [Z
    .param p1, "tagDocument"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "sequenceNumber"    # J
    .param p4, "row"    # Landroid/database/Cursor;

    .line 536
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    .line 537
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 538
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 539
    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 540
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Failed to insert a sentinel row"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method private removeAcknowledgedMutations()V
    .locals 3

    .line 276
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT uid, last_acknowledged_batch_id FROM mutation_queues"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 280
    .local v0, "mutationQueuesQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda12;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 291
    return-void
.end method

.method private removeMutationBatch(Ljava/lang/String;I)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "batchId"    # I

    .line 294
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 295
    const-string v1, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 296
    .local v0, "mutationDeleter":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 297
    const/4 v2, 0x2

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 298
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 299
    .local v2, "deleted":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Mutation batch (%s, %d) did not exist"

    invoke-static {v1, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 302
    const-string v4, "DELETE FROM document_mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method private rewriteCanonicalIds()V
    .locals 3

    .line 624
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT target_id, target_proto FROM targets"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    .line 625
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 641
    return-void
.end method

.method private tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .line 599
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->getTableColumns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 600
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private tableExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "table"    # Ljava/lang/String;

    .line 746
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT 1=1 FROM sqlite_master WHERE tbl_name = ?"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 747
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->isEmpty()Z

    move-result v0

    .line 746
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getTableColumns(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA table_info("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 611
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 612
    .local v2, "nameIndex":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 616
    .end local v2    # "nameIndex":I
    :cond_0
    if-eqz v0, :cond_1

    .line 617
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_1
    return-object v1

    .line 616
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 617
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_2
    throw v2
.end method

.method synthetic lambda$createBundleCache$15$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE bundles (bundle_id TEXT PRIMARY KEY, create_time_seconds INTEGER, create_time_nanos INTEGER, schema_version INTEGER, total_documents INTEGER, total_bytes INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE named_queries (name TEXT PRIMARY KEY, read_time_seconds INTEGER, read_time_nanos INTEGER, bundled_query_proto BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method synthetic lambda$createDataMigrationTable$17$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE data_migrations (migration_name TEXT, PRIMARY KEY (migration_name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method synthetic lambda$createFieldIndex$5$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE index_configuration (index_id INTEGER, collection_group TEXT, index_proto BLOB, PRIMARY KEY (index_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE index_state (index_id INTEGER, uid TEXT, sequence_number INTEGER, read_time_seconds INTEGER, read_time_nanos INTEGER, document_key TEXT, largest_batch_id INTEGER, PRIMARY KEY (index_id, uid))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE index_entries (index_id INTEGER, uid TEXT, array_value BLOB, directional_value BLOB, document_key TEXT, PRIMARY KEY (index_id, uid, array_value, directional_value, document_key))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX read_time ON remote_documents(read_time_seconds, read_time_nanos)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method synthetic lambda$createGlobalsTable$18$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE globals (name TEXT PRIMARY KEY, value BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method synthetic lambda$createOverlays$16$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE document_overlays (uid TEXT, collection_path TEXT, document_id TEXT, collection_group TEXT, largest_batch_id INTEGER, overlay_mutation BLOB, PRIMARY KEY (uid, collection_path, document_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX batch_id_overlay ON document_overlays (uid, largest_batch_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX collection_group_overlay ON document_overlays (uid, collection_group)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method synthetic lambda$createV1MutationQueue$0$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE mutation_queues (uid TEXT PRIMARY KEY, last_acknowledged_batch_id INTEGER, last_stream_token BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE mutations (uid TEXT, batch_id INTEGER, mutations BLOB, PRIMARY KEY (uid, batch_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE document_mutations (uid TEXT, path TEXT, batch_id INTEGER, PRIMARY KEY (uid, path, batch_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method synthetic lambda$createV1RemoteDocumentCache$4$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE remote_documents (path TEXT PRIMARY KEY, contents BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method synthetic lambda$createV1TargetCache$3$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE targets (target_id INTEGER PRIMARY KEY, canonical_id TEXT, snapshot_version_seconds INTEGER, snapshot_version_nanos INTEGER, resume_token BLOB, last_listen_sequence_number INTEGER,target_proto BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX query_targets ON targets (canonical_id, target_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE target_globals (highest_target_id INTEGER, highest_listen_sequence_number INTEGER, last_remote_snapshot_version_seconds INTEGER, last_remote_snapshot_version_nanos INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE target_documents (target_id INTEGER, path TEXT, PRIMARY KEY (target_id, path))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX document_targets ON target_documents (path, target_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method synthetic lambda$createV8CollectionParentsIndex$9$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE collection_parents (collection_id TEXT, parent TEXT, PRIMARY KEY(collection_id, parent))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method synthetic lambda$dropLastLimboFreeSnapshotVersion$6$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 487
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 488
    .local v0, "targetId":I
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 491
    .local v1, "targetProtoBytes":[B
    :try_start_0
    invoke-static {v1}, Lcom/google/firebase/firestore/proto/Target;->parseFrom([B)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v2

    .line 492
    .local v2, "targetProto":Lcom/google/firebase/firestore/proto/Target;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/proto/Target;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/proto/Target$Builder;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/proto/Target$Builder;->clearLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/proto/Target$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/proto/Target;

    .line 493
    .end local v2    # "targetProto":Lcom/google/firebase/firestore/proto/Target;
    .local v3, "targetProto":Lcom/google/firebase/firestore/proto/Target;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE targets SET target_proto = ? WHERE target_id = ?"

    .line 495
    invoke-virtual {v3}, Lcom/google/firebase/firestore/proto/Target;->toByteArray()[B

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 493
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v3    # "targetProto":Lcom/google/firebase/firestore/proto/Target;
    nop

    .line 499
    return-void

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to decode Query data for target %s"

    invoke-static {v4, v3}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3
.end method

.method synthetic lambda$removeAcknowledgedMutations$1$com-google-firebase-firestore-local-SQLiteSchema(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/database/Cursor;

    .line 289
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->removeMutationBatch(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$removeAcknowledgedMutations$2$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "mutationQueueEntry"    # Landroid/database/Cursor;

    .line 282
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "uid":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 285
    .local v1, "lastAcknowledgedBatchId":J
    new-instance v3, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT batch_id FROM mutations WHERE uid = ? AND batch_id <= ?"

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 288
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v3

    .line 289
    .local v3, "mutationsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 290
    return-void
.end method

.method synthetic lambda$rewriteCanonicalIds$13$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 627
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 628
    .local v0, "targetId":I
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 631
    .local v1, "targetProtoBytes":[B
    :try_start_0
    invoke-static {v1}, Lcom/google/firebase/firestore/proto/Target;->parseFrom([B)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v2

    .line 632
    .local v2, "targetProto":Lcom/google/firebase/firestore/proto/Target;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeTargetData(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v3

    .line 633
    .local v3, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/TargetOrPipeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/TargetOrPipeline;->canonicalId()Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "updatedCanonicalId":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE targets SET canonical_id  = ? WHERE target_id = ?"

    .line 636
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 634
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .end local v2    # "targetProto":Lcom/google/firebase/firestore/proto/Target;
    .end local v3    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    .end local v4    # "updatedCanonicalId":Ljava/lang/String;
    nop

    .line 640
    return-void

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to decode Query data for target %s"

    invoke-static {v4, v3}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3
.end method

.method runSchemaUpgrades()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(I)V

    .line 73
    return-void
.end method

.method runSchemaUpgrades(I)V
    .locals 1
    .param p1, "fromVersion"    # I

    .line 76
    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(II)V

    .line 77
    return-void
.end method

.method runSchemaUpgrades(II)V
    .locals 6
    .param p1, "fromVersion"    # I
    .param p2, "toVersion"    # I

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "startTime":J
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1MutationQueue()V

    .line 97
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1TargetCache()V

    .line 98
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1RemoteDocumentCache()V

    .line 104
    :cond_0
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->dropV1TargetCache()V

    .line 109
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1TargetCache()V

    .line 113
    :cond_1
    const/4 v2, 0x4

    if-ge p1, v2, :cond_2

    if-lt p2, v2, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensureTargetGlobal()V

    .line 115
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addTargetCount()V

    .line 118
    :cond_2
    const/4 v2, 0x5

    if-ge p1, v2, :cond_3

    if-lt p2, v2, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addSequenceNumber()V

    .line 122
    :cond_3
    const/4 v2, 0x6

    if-ge p1, v2, :cond_4

    if-lt p2, v2, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->removeAcknowledgedMutations()V

    .line 126
    :cond_4
    const/4 v2, 0x7

    if-ge p1, v2, :cond_5

    if-lt p2, v2, :cond_5

    .line 127
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensureSequenceNumbers()V

    .line 130
    :cond_5
    const/16 v2, 0x8

    if-ge p1, v2, :cond_6

    if-lt p2, v2, :cond_6

    .line 131
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV8CollectionParentsIndex()V

    .line 134
    :cond_6
    const/16 v2, 0x9

    if-ge p1, v2, :cond_8

    if-lt p2, v2, :cond_8

    .line 135
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->hasReadTime()Z

    move-result v3

    if-nez v3, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addReadTime()V

    goto :goto_0

    .line 143
    :cond_7
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->dropLastLimboFreeSnapshotVersion()V

    .line 147
    :cond_8
    :goto_0
    if-ne p1, v2, :cond_9

    const/16 v2, 0xa

    if-lt p2, v2, :cond_9

    .line 151
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->dropLastLimboFreeSnapshotVersion()V

    .line 154
    :cond_9
    const/16 v2, 0xb

    if-ge p1, v2, :cond_a

    if-lt p2, v2, :cond_a

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->rewriteCanonicalIds()V

    .line 159
    :cond_a
    const/16 v2, 0xc

    if-ge p1, v2, :cond_b

    if-lt p2, v2, :cond_b

    .line 160
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createBundleCache()V

    .line 163
    :cond_b
    const/16 v2, 0xd

    if-ge p1, v2, :cond_c

    if-lt p2, v2, :cond_c

    .line 164
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addPathLength()V

    .line 165
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensurePathLength()V

    .line 168
    :cond_c
    const/16 v2, 0xe

    if-ge p1, v2, :cond_d

    if-lt p2, v2, :cond_d

    .line 169
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createOverlays()V

    .line 170
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createDataMigrationTable()V

    .line 171
    sget-object v2, Lcom/google/firebase/firestore/local/Persistence;->DATA_MIGRATION_BUILD_OVERLAYS:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addPendingDataMigration(Ljava/lang/String;)V

    .line 174
    :cond_d
    const/16 v2, 0xf

    if-ge p1, v2, :cond_e

    if-lt p2, v2, :cond_e

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensureReadTime()V

    .line 178
    :cond_e
    const/16 v2, 0x10

    if-ge p1, v2, :cond_f

    if-lt p2, v2, :cond_f

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createFieldIndex()V

    .line 182
    :cond_f
    const/16 v2, 0x11

    if-ge p1, v2, :cond_10

    if-lt p2, v2, :cond_10

    .line 183
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createGlobalsTable()V

    .line 186
    :cond_10
    const/16 v2, 0x12

    if-ge p1, v2, :cond_11

    if-lt p2, v2, :cond_11

    .line 187
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addDocumentType()V

    .line 203
    :cond_11
    nop

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 203
    const-string v3, "SQLiteSchema"

    const-string v4, "Migration from version %s to %s took %s milliseconds"

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method
