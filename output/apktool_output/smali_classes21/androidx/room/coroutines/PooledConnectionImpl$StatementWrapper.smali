.class final Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
.super Ljava/lang/Object;
.source "ConnectionPoolImpl.kt"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PooledConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatementWrapper"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$StatementWrapper\n*L\n1#1,537:1\n524#1,10:538\n524#1,10:548\n524#1,10:558\n524#1,10:568\n524#1,10:578\n524#1,10:588\n524#1,10:598\n524#1,10:608\n524#1,10:618\n524#1,10:628\n524#1,10:638\n524#1,10:648\n524#1,10:658\n524#1,10:668\n524#1,10:678\n524#1,10:688\n524#1,10:698\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$StatementWrapper\n*L\n481#1:538,10\n485#1:548,10\n489#1:558,10\n493#1:568,10\n497#1:578,10\n499#1:588,10\n501#1:598,10\n503#1:608,10\n505#1:618,10\n507#1:628,10\n509#1:638,10\n511#1:648,10\n513#1:658,10\n515#1:668,10\n517#1:678,10\n519#1:688,10\n521#1:698,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u0019\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u001c\u001a\u00020\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u0008H\u0016J\u0008\u0010\u001e\u001a\u00020\u0008H\u0016J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J\"\u0010 \u001a\u0002H!\"\u0004\u0008\u0000\u0010!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H!0#H\u0082\u0008\u00a2\u0006\u0002\u0010$R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;",
        "Landroidx/sqlite/SQLiteStatement;",
        "delegate",
        "<init>",
        "(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/sqlite/SQLiteStatement;)V",
        "threadId",
        "",
        "bindBlob",
        "",
        "index",
        "",
        "value",
        "",
        "bindDouble",
        "",
        "bindLong",
        "bindText",
        "",
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
        "withStateCheck",
        "R",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "room-runtime_release"
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
.field private final delegate:Landroidx/sqlite/SQLiteStatement;

.field final synthetic this$0:Landroidx/room/coroutines/PooledConnectionImpl;

.field private final threadId:J


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "this$0"    # Landroidx/room/coroutines/PooledConnectionImpl;
    .param p2, "delegate"    # Landroidx/sqlite/SQLiteStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteStatement;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    .line 479
    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    .line 475
    return-void
.end method

.method private final withStateCheck(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 524
    .local v0, "$i$f$withStateCheck":I
    iget-object v1, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v1}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v1

    const/16 v2, 0x15

    if-nez v1, :cond_1

    .line 527
    iget-wide v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 533
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 529
    :cond_0
    nop

    .line 530
    nop

    .line 528
    const-string v1, "Attempted to use statement on a different thread"

    invoke-static {v2, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 525
    :cond_1
    const-string v1, "Statement is recycled"

    invoke-static {v2, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "value"    # [B

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 538
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 541
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 547
    const/4 v2, 0x0

    .line 482
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindBlob$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 483
    nop

    .line 547
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindBlob$1":I
    nop

    .line 483
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 543
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 544
    nop

    .line 542
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 539
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public bindDouble(ID)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 485
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 548
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 551
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 557
    const/4 v2, 0x0

    .line 486
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindDouble$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 487
    nop

    .line 557
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindDouble$1":I
    nop

    .line 487
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 553
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 554
    nop

    .line 552
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 549
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public bindLong(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 489
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 558
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 561
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 567
    const/4 v2, 0x0

    .line 490
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindLong$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 491
    nop

    .line 567
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindLong$1":I
    nop

    .line 491
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 563
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 564
    nop

    .line 562
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 559
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public bindNull(I)V
    .locals 8
    .param p1, "index"    # I

    .line 497
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 578
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 581
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 587
    const/4 v2, 0x0

    .line 497
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindNull$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 587
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindNull$1":I
    nop

    .line 497
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 583
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 584
    nop

    .line 582
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 579
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 568
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 571
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 577
    const/4 v2, 0x0

    .line 494
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindText$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 495
    nop

    .line 577
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$bindText$1":I
    nop

    .line 495
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 573
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 574
    nop

    .line 572
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 569
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public clearBindings()V
    .locals 8

    .line 519
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 688
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 691
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 697
    const/4 v2, 0x0

    .line 519
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$clearBindings$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->clearBindings()V

    .line 697
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$clearBindings$1":I
    nop

    .line 519
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 693
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 694
    nop

    .line 692
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 689
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public close()V
    .locals 8

    .line 521
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 698
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 701
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 707
    const/4 v2, 0x0

    .line 521
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$close$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 707
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$close$1":I
    nop

    .line 521
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 703
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 704
    nop

    .line 702
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 699
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getBlob(I)[B
    .locals 8
    .param p1, "index"    # I

    .line 499
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 588
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 591
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 597
    const/4 v2, 0x0

    .line 499
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getBlob$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v2

    .line 597
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getBlob$1":I
    nop

    .line 499
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-object v2

    .line 593
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 594
    nop

    .line 592
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 589
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getColumnCount()I
    .locals 8

    .line 509
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 638
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 641
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 647
    const/4 v2, 0x0

    .line 509
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getColumnCount$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result v2

    .line 647
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getColumnCount$1":I
    nop

    .line 509
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return v2

    .line 643
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 644
    nop

    .line 642
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 639
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I

    .line 511
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 648
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 651
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 657
    const/4 v2, 0x0

    .line 511
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getColumnName$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 657
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getColumnName$1":I
    nop

    .line 511
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-object v2

    .line 653
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 654
    nop

    .line 652
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 649
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getColumnType(I)I
    .locals 8
    .param p1, "index"    # I

    .line 513
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 658
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 661
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 667
    const/4 v2, 0x0

    .line 513
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getColumnType$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnType(I)I

    move-result v2

    .line 667
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getColumnType$1":I
    nop

    .line 513
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return v2

    .line 663
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 664
    nop

    .line 662
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 659
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getDouble(I)D
    .locals 8
    .param p1, "index"    # I

    .line 501
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 598
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 601
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 607
    const/4 v2, 0x0

    .line 501
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getDouble$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v2

    .line 607
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getDouble$1":I
    nop

    .line 501
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-wide v2

    .line 603
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 604
    nop

    .line 602
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 599
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .line 503
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 608
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 611
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 617
    const/4 v2, 0x0

    .line 503
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getLong$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    .line 617
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getLong$1":I
    nop

    .line 503
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-wide v2

    .line 613
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 614
    nop

    .line 612
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 609
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getText(I)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I

    .line 505
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 618
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 621
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 627
    const/4 v2, 0x0

    .line 505
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getText$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$getText$1":I
    nop

    .line 505
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-object v2

    .line 623
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 624
    nop

    .line 622
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 619
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public isNull(I)Z
    .locals 8
    .param p1, "index"    # I

    .line 507
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 628
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 631
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 637
    const/4 v2, 0x0

    .line 507
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$isNull$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    .line 637
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$isNull$1":I
    nop

    .line 507
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return v2

    .line 633
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 634
    nop

    .line 632
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 629
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public reset()V
    .locals 8

    .line 517
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 678
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 681
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 687
    const/4 v2, 0x0

    .line 517
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$reset$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 687
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$reset$1":I
    nop

    .line 517
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return-void

    .line 683
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 684
    nop

    .line 682
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 679
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public step()Z
    .locals 8

    .line 515
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    const/4 v1, 0x0

    .line 668
    .local v1, "$i$f$withStateCheck":I
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_1

    .line 671
    iget-wide v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->threadId:J

    invoke-static {}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 677
    const/4 v2, 0x0

    .line 515
    .local v2, "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$step$1":I
    iget-object v3, p0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    .line 677
    .end local v2    # "$i$a$-withStateCheck-PooledConnectionImpl$StatementWrapper$step$1":I
    nop

    .line 515
    .end local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .end local v1    # "$i$f$withStateCheck":I
    return v2

    .line 673
    .restart local v0    # "this_$iv":Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;
    .restart local v1    # "$i$f$withStateCheck":I
    :cond_0
    nop

    .line 674
    nop

    .line 672
    const-string v2, "Attempted to use statement on a different thread"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 669
    :cond_1
    const-string v2, "Statement is recycled"

    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method
