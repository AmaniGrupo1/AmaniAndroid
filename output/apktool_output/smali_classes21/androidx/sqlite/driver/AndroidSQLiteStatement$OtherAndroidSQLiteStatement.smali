.class final Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;
.super Landroidx/sqlite/driver/AndroidSQLiteStatement;
.source "AndroidSQLiteStatement.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/AndroidSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OtherAndroidSQLiteStatement"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u001d\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0008\u0010!\u001a\u00020\u000cH\u0016J\u0008\u0010\"\u001a\u00020\u000cH\u0016J\u0008\u0010#\u001a\u00020\u000cH\u0016R\u0012\u0010\u0008\u001a\u00060\tj\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;",
        "Landroidx/sqlite/driver/AndroidSQLiteStatement;",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "sql",
        "",
        "<init>",
        "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V",
        "delegate",
        "Landroid/database/sqlite/SQLiteStatement;",
        "Landroidx/sqlite/driver/FrameworkStatement;",
        "bindBlob",
        "",
        "index",
        "",
        "value",
        "",
        "bindDouble",
        "",
        "bindLong",
        "",
        "bindText",
        "bindNull",
        "getBlob",
        "getDouble",
        "getLong",
        "getText",
        "isNull",
        "",
        "getColumnCount",
        "getColumnName",
        "getColumnType",
        "step",
        "reset",
        "clearBindings",
        "close",
        "sqlite-framework_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sql"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/AndroidSQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 294
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const-string v1, "compileStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 291
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 298
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 299
    return-void
.end method

.method public bindDouble(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 302
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 303
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 304
    return-void
.end method

.method public bindLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 307
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 308
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 309
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .line 317
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 318
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 319
    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 313
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 372
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 373
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 374
    return-void
.end method

.method public close()V
    .locals 1

    .line 377
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->setClosed(Z)V

    .line 379
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "index"    # I

    .line 322
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 323
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 347
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 352
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 353
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getColumnType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 357
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 358
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 327
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 328
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 332
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 333
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 337
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 338
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 342
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 343
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 369
    return-void
.end method

.method public step()Z
    .locals 1

    .line 362
    invoke-virtual {p0}, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->throwIfClosed()V

    .line 363
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 364
    const/4 v0, 0x0

    return v0
.end method
