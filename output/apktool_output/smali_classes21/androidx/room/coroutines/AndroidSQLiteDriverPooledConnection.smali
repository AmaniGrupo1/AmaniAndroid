.class final Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
.super Ljava/lang/Object;
.source "AndroidSQLiteDriverConnectionPool.android.kt"

# interfaces
.implements Landroidx/room/Transactor;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$AndroidSQLiteDriverTransactor;,
        Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidSQLiteDriverConnectionPool.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidSQLiteDriverConnectionPool.android.kt\nandroidx/room/coroutines/AndroidSQLiteDriverPooledConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001#B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J0\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002H\u00100\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0016JK\u0010\u0017\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0018\u001a\u00020\n2-\u0010\u0013\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0019\u00a2\u0006\u0002\u0008\u001dH\u0096@\u00a2\u0006\u0002\u0010\u001eJK\u0010\u001f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0018\u001a\u00020\n2-\u0010\u0013\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0019\u00a2\u0006\u0002\u0008\u001dH\u0082@\u00a2\u0006\u0002\u0010\u001eJ\u000e\u0010 \u001a\u00020!H\u0096@\u00a2\u0006\u0002\u0010\"R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;",
        "Landroidx/room/Transactor;",
        "Landroidx/room/coroutines/RawConnectionAccessor;",
        "delegate",
        "Landroidx/sqlite/driver/AndroidSQLiteConnection;",
        "<init>",
        "(Landroidx/sqlite/driver/AndroidSQLiteConnection;)V",
        "getDelegate",
        "()Landroidx/sqlite/driver/AndroidSQLiteConnection;",
        "currentTransactionType",
        "Landroidx/room/Transactor$SQLiteTransactionType;",
        "rawConnection",
        "Landroidx/sqlite/SQLiteConnection;",
        "getRawConnection",
        "()Landroidx/sqlite/SQLiteConnection;",
        "usePrepared",
        "R",
        "sql",
        "",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/sqlite/SQLiteStatement;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withTransaction",
        "type",
        "Lkotlin/Function2;",
        "Landroidx/room/TransactionScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "transaction",
        "inTransaction",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "AndroidSQLiteDriverTransactor",
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
.field private currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

.field private final delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;


# direct methods
.method public constructor <init>(Landroidx/sqlite/driver/AndroidSQLiteConnection;)V
    .locals 1
    .param p1, "delegate"    # Landroidx/sqlite/driver/AndroidSQLiteConnection;

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;

    return-void
.end method

.method public static final synthetic access$getCurrentTransactionType$p(Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;)Landroidx/room/Transactor$SQLiteTransactionType;
    .locals 1
    .param p0, "$this"    # Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 52
    iget-object v0, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    return-object v0
.end method

.method public static final synthetic access$transaction(Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .param p1, "type"    # Landroidx/room/Transactor$SQLiteTransactionType;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/Transactor$SQLiteTransactionType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/TransactionScope<",
            "TR;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;

    iget v1, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;-><init>(Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 72
    iget v3, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object p1, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .local p1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object p2, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .local p2, "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/room/coroutines/ConnectionPool$RollbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, p1

    move-object p1, v1

    goto :goto_2

    .line 93
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 90
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 72
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 76
    .local v3, "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .local p1, "type":Landroidx/room/Transactor$SQLiteTransactionType;
    .local p2, "block":Lkotlin/jvm/functions/Function2;
    iget-object v5, v3, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;

    invoke-virtual {v5}, Landroidx/sqlite/driver/AndroidSQLiteConnection;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 77
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    iput-object p1, v3, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 80
    :cond_1
    nop

    .end local p1    # "type":Landroidx/room/Transactor$SQLiteTransactionType;
    sget-object v6, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/room/Transactor$SQLiteTransactionType;->ordinal()I

    move-result p1

    aget p1, v6, p1

    packed-switch p1, :pswitch_data_1

    .end local v3    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 84
    .restart local v3    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "block":Lkotlin/jvm/functions/Function2;
    :pswitch_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    .line 83
    :pswitch_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 86
    :goto_1
    nop

    .line 87
    :try_start_1
    new-instance p1, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$AndroidSQLiteDriverTransactor;

    invoke-direct {p1, v3}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$AndroidSQLiteDriverTransactor;-><init>(Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;)V

    iput-object v3, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroidx/room/coroutines/ConnectionPool$RollbackException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    if-ne p1, v2, :cond_2

    .line 72
    return-object v2

    .line 87
    :cond_2
    move-object p2, v3

    .line 72
    .end local v3    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .local p2, "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :goto_2
    nop

    .line 88
    .local p1, "result":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroidx/room/coroutines/ConnectionPool$RollbackException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    nop

    .line 93
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    iput-object v4, p2, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 89
    .end local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :cond_3
    return-object p1

    .line 93
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :catchall_1
    move-exception v2

    move-object p1, v5

    goto :goto_4

    .line 90
    :catch_1
    move-exception v2

    move-object p1, v5

    goto :goto_3

    .line 93
    .end local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .restart local v3    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :catchall_2
    move-exception v2

    move-object p2, v3

    move-object p1, v5

    goto :goto_4

    .line 90
    :catch_2
    move-exception v2

    move-object p2, v3

    move-object p1, v5

    .line 91
    .end local v3    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "rollback":Landroidx/room/coroutines/ConnectionPool$RollbackException;
    .local p1, "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Landroidx/room/coroutines/ConnectionPool$RollbackException;->getResult()Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v2    # "rollback":Landroidx/room/coroutines/ConnectionPool$RollbackException;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    iput-object v4, p2, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 91
    .end local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :cond_4
    return-object v3

    .line 93
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_5

    .line 95
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    iput-object v4, p2, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    .end local p2    # "this":Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    :cond_5
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getDelegate()Landroidx/sqlite/driver/AndroidSQLiteConnection;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;

    return-object v0
.end method

.method public getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    return-object v0
.end method

.method public inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;

    invoke-virtual {v0}, Landroidx/sqlite/driver/AndroidSQLiteConnection;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/SQLiteStatement;",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->delegate:Landroidx/sqlite/driver/AndroidSQLiteConnection;

    invoke-virtual {v0, p1}, Landroidx/sqlite/driver/AndroidSQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Landroidx/sqlite/SQLiteStatement;

    .line 126
    .local v1, "it":Landroidx/sqlite/SQLiteStatement;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-use-AndroidSQLiteDriverPooledConnection$usePrepared$2":I
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "it":Landroidx/sqlite/SQLiteStatement;
    .end local v2    # "$i$a$-use-AndroidSQLiteDriverPooledConnection$usePrepared$2":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception v1

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Landroidx/room/Transactor$SQLiteTransactionType;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/Transactor$SQLiteTransactionType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/TransactionScope<",
            "TR;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
