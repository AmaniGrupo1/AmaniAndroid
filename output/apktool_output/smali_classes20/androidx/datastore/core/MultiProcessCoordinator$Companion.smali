.class public final Landroidx/datastore/core/MultiProcessCoordinator$Companion;
.super Ljava/lang/Object;
.source "MultiProcessCoordinator.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/MultiProcessCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0082@\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/datastore/core/MultiProcessCoordinator$Companion;",
        "",
        "<init>",
        "()V",
        "getExclusiveFileLockWithRetryIfDeadlock",
        "Ljava/nio/channels/FileLock;",
        "lockFileStream",
        "Ljava/io/FileOutputStream;",
        "(Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "DEADLOCK_ERROR_MESSAGE",
        "",
        "INITIAL_WAIT_MILLIS",
        "",
        "MAX_WAIT_MILLIS",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getExclusiveFileLockWithRetryIfDeadlock(Landroidx/datastore/core/MultiProcessCoordinator$Companion;Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/MultiProcessCoordinator$Companion;
    .param p1, "lockFileStream"    # Ljava/io/FileOutputStream;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 170
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;->getExclusiveFileLockWithRetryIfDeadlock(Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getExclusiveFileLockWithRetryIfDeadlock(Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileOutputStream;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/nio/channels/FileLock;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;

    iget v2, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator$Companion;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 173
    iget v5, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v7, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->J$0:J

    .local v7, "backoff":J
    iget-object v5, v1, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/io/FileOutputStream;

    .local v5, "lockFileStream":Ljava/io/FileOutputStream;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v17

    goto :goto_2

    .end local v5    # "lockFileStream":Ljava/io/FileOutputStream;
    .end local v7    # "backoff":J
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    .line 176
    .restart local v5    # "lockFileStream":Ljava/io/FileOutputStream;
    invoke-static {}, Landroidx/datastore/core/MultiProcessCoordinator;->access$getINITIAL_WAIT_MILLIS$cp()J

    move-result-wide v7

    move-wide v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    .line 177
    .end local v5    # "lockFileStream":Ljava/io/FileOutputStream;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$result":Ljava/lang/Object;
    .local v7, "lockFileStream":Ljava/io/FileOutputStream;
    .local v8, "backoff":J
    :goto_1
    invoke-static {}, Landroidx/datastore/core/MultiProcessCoordinator;->access$getMAX_WAIT_MILLIS$cp()J

    move-result-wide v10

    cmp-long v0, v8, v10

    const-string/jumbo v10, "lock(...)"

    if-gtz v0, :cond_4

    .line 178
    nop

    .line 179
    :try_start_0
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_1

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {}, Landroidx/datastore/core/MultiProcessCoordinator;->access$getDEADLOCK_ERROR_MESSAGE$cp()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-static {v10, v13, v12, v6, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-ne v10, v11, :cond_1

    move v12, v11

    :cond_1
    if-eqz v12, :cond_3

    .line 184
    .end local v0    # "ex":Ljava/io/IOException;
    iput-object v7, v3, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v3, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->J$0:J

    iput v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    invoke-static {v8, v9, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_2

    .line 173
    return-object v5

    .line 184
    :cond_2
    move-object v0, v7

    move-wide v7, v8

    .line 185
    .end local v8    # "backoff":J
    .local v0, "lockFileStream":Ljava/io/FileOutputStream;
    .local v7, "backoff":J
    :goto_2
    int-to-long v9, v6

    mul-long v8, v7, v9

    move-object v7, v0

    .end local v7    # "backoff":J
    .restart local v8    # "backoff":J
    goto :goto_1

    .line 182
    .local v0, "ex":Ljava/io/IOException;
    .local v7, "lockFileStream":Ljava/io/FileOutputStream;
    :cond_3
    throw v0

    .line 188
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
