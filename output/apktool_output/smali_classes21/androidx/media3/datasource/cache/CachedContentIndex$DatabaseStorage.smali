.class final Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseStorage"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_KEY:I = 0x1

.field private static final COLUMN_INDEX_METADATA:I = 0x2

.field private static final COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_METADATA:Ljava/lang/String; = "metadata"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerCacheIndex"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

.field private static final TABLE_VERSION:I = 0x1

.field private static final WHERE_ID_EQUALS:Ljava/lang/String; = "id = ?"


# instance fields
.field private final databaseProvider:Landroidx/media3/database/DatabaseProvider;

.field private hexUid:Ljava/lang/String;

.field private final pendingUpdates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 751
    const-string v0, "key"

    const-string v1, "metadata"

    const-string v2, "id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/database/DatabaseProvider;)V
    .locals 1
    .param p1, "databaseProvider"    # Landroidx/media3/database/DatabaseProvider;

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 775
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 776
    return-void
.end method

.method private addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Landroidx/media3/datasource/cache/CachedContent;)V
    .locals 5
    .param p1, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cachedContent"    # Landroidx/media3/datasource/cache/CachedContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 938
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Landroidx/media3/datasource/cache/CachedContent;->getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$100(Landroidx/media3/datasource/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    .line 939
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 941
    .local v1, "data":[B
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 942
    .local v2, "values":Landroid/content/ContentValues;
    iget v3, p2, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    const-string v3, "key"

    iget-object v4, p2, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v3, "metadata"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 945
    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 946
    return-void
.end method

.method public static delete(Landroidx/media3/database/DatabaseProvider;J)V
    .locals 1
    .param p0, "databaseProvider"    # Landroidx/media3/database/DatabaseProvider;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 769
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->delete(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method private static delete(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V
    .locals 3
    .param p0, "databaseProvider"    # Landroidx/media3/database/DatabaseProvider;
    .param p1, "hexUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 951
    :try_start_0
    invoke-static {p1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 953
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1, v2, p1}, Landroidx/media3/database/VersionTable;->removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 957
    invoke-static {v1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 958
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 961
    nop

    .line 964
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 965
    return-void

    .line 960
    .restart local v0    # "tableName":Ljava/lang/String;
    .restart local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 961
    nop

    .end local p0    # "databaseProvider":Landroidx/media3/database/DatabaseProvider;
    .end local p1    # "hexUid":Ljava/lang/String;
    throw v2
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 962
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "databaseProvider":Landroidx/media3/database/DatabaseProvider;
    .restart local p1    # "hexUid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method private deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p1, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # I

    .line 931
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 932
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 931
    const-string v2, "id = ?"

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p0, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 9

    .line 908
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 909
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 911
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    .line 910
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 908
    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hexUid"    # Ljava/lang/String;

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayerCacheIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 924
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 921
    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v1}, Landroidx/media3/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 926
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 928
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->delete(Landroidx/media3/database/DatabaseProvider;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public exists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/database/DatabaseIOException;
        }
    .end annotation

    .line 787
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 788
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 790
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 787
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroidx/media3/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public initialize(J)V
    .locals 1
    .param p1, "uid"    # J

    .line 780
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 782
    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    .local p2, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 808
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    .line 810
    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 812
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 809
    invoke-static {v0, v2, v3}, Landroidx/media3/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    .line 813
    .local v0, "version":I
    if-eq v0, v2, :cond_1

    .line 814
    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    invoke-interface {v3}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 815
    .local v3, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :try_start_1
    invoke-direct {p0, v3}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 818
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 821
    goto :goto_1

    .line 820
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 821
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    .end local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    throw v1

    .line 824
    .end local v3    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->getCursor()Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 825
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 826
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 827
    .local v4, "id":I
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 828
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 830
    .local v6, "metadataBytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 831
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 832
    .local v8, "input":Ljava/io/DataInputStream;
    invoke-static {v8}, Landroidx/media3/datasource/cache/CachedContentIndex;->access$000(Ljava/io/DataInputStream;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v9

    .line 834
    .local v9, "metadata":Landroidx/media3/datasource/cache/DefaultContentMetadata;
    new-instance v10, Landroidx/media3/datasource/cache/CachedContent;

    invoke-direct {v10, v4, v5, v9}, Landroidx/media3/datasource/cache/CachedContent;-><init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V

    .line 835
    .local v10, "cachedContent":Landroidx/media3/datasource/cache/CachedContent;
    iget-object v11, v10, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget v11, v10, Landroidx/media3/datasource/cache/CachedContent;->id:I

    iget-object v12, v10, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 837
    .end local v4    # "id":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "metadataBytes":[B
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "input":Ljava/io/DataInputStream;
    .end local v9    # "metadata":Landroidx/media3/datasource/cache/DefaultContentMetadata;
    .end local v10    # "cachedContent":Landroidx/media3/datasource/cache/CachedContent;
    goto :goto_2

    .line 838
    :cond_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 843
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    nop

    .line 844
    return-void

    .line 824
    .restart local v0    # "version":I
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v3, :cond_4

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    .end local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 839
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 841
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 842
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public onRemove(Landroidx/media3/datasource/cache/CachedContent;Z)V
    .locals 3
    .param p1, "cachedContent"    # Landroidx/media3/datasource/cache/CachedContent;
    .param p2, "neverStored"    # Z

    .line 900
    nop

    .line 903
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 900
    if-eqz p2, :cond_0

    .line 901
    iget v1, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 903
    :cond_0
    iget v1, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 905
    :goto_0
    return-void
.end method

.method public onUpdate(Landroidx/media3/datasource/cache/CachedContent;)V
    .locals 2
    .param p1, "cachedContent"    # Landroidx/media3/datasource/cache/CachedContent;

    .line 895
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 850
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 853
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CachedContent;

    .line 854
    .local v2, "cachedContent":Landroidx/media3/datasource/cache/CachedContent;
    invoke-direct {p0, v0, v2}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Landroidx/media3/datasource/cache/CachedContent;)V

    .line 855
    .end local v2    # "cachedContent":Landroidx/media3/datasource/cache/CachedContent;
    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 857
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 860
    nop

    .line 863
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 864
    return-void

    .line 859
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 860
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    throw v1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 861
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 869
    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Landroidx/media3/database/DatabaseProvider;

    invoke-interface {v0}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 873
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 876
    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CachedContent;

    .line 877
    .local v2, "cachedContent":Landroidx/media3/datasource/cache/CachedContent;
    if-nez v2, :cond_1

    .line 878
    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_1

    .line 880
    :cond_1
    invoke-direct {p0, v0, v2}, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Landroidx/media3/datasource/cache/CachedContent;)V

    .line 875
    .end local v2    # "cachedContent":Landroidx/media3/datasource/cache/CachedContent;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 884
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 887
    nop

    .line 890
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 891
    return-void

    .line 886
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 887
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    throw v1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 888
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/datasource/cache/CachedContent;>;"
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method
