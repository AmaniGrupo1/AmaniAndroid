.class final Landroidx/media3/exoplayer/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media3/exoplayer/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_FATAL_ERROR:I = 0x4

.field private static final MSG_FINISH:I = 0x2

.field private static final MSG_IO_EXCEPTION:I = 0x3

.field private static final MSG_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private executorThread:Ljava/lang/Thread;

.field private final loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Landroidx/media3/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;IJ)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p5, "defaultMinRetryCount"    # I
    .param p6, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 385
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Landroidx/media3/exoplayer/upstream/Loader$Loadable;, "TT;"
    .local p4, "callback":Landroidx/media3/exoplayer/upstream/Loader$Callback;, "Landroidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    .line 386
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 387
    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    .line 388
    iput-object p4, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    .line 389
    iput p5, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 390
    iput-wide p6, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    .line 391
    return-void
.end method

.method private execute()V
    .locals 7

    .line 550
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 551
    .local v2, "nowMs":J
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v4, v2, v0

    .line 552
    .local v4, "durationMs":J
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    iget v6, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadStarted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 554
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader;->access$500(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/util/ReleasableExecutor;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-static {v1}, Landroidx/media3/exoplayer/upstream/Loader;->access$100(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/util/ReleasableExecutor;->execute(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method private finish()V
    .locals 2

    .line 558
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->access$102(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/upstream/Loader$LoadTask;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 559
    return-void
.end method

.method private getRetryDelayMillis()J
    .locals 2

    .line 562
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 8
    .param p1, "released"    # Z

    .line 410
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 412
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    iput-boolean v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    .line 415
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->removeMessages(I)V

    .line 416
    if-nez p1, :cond_2

    .line 417
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 421
    :cond_0
    monitor-enter p0

    .line 422
    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    .line 423
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Landroidx/media3/exoplayer/upstream/Loader$Loadable;->cancelLoad()V

    .line 424
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 425
    .local v1, "executorThread":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 428
    .end local v1    # "executorThread":Ljava/lang/Thread;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 431
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->finish()V

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 433
    .local v3, "nowMs":J
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/Loader$Callback;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    iget-wide v5, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V

    .line 438
    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    .line 440
    .end local v3    # "nowMs":J
    :cond_3
    return-void

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 498
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 502
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->execute()V

    .line 503
    return-void

    .line 505
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    .line 508
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->finish()V

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 510
    .local v5, "nowMs":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v7, v5, v2

    .line 511
    .local v7, "durationMs":J
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/upstream/Loader$Callback;

    .line 512
    .local v3, "callback":Landroidx/media3/exoplayer/upstream/Loader$Callback;, "Landroidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_2

    .line 513
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V

    .line 514
    return-void

    .line 516
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 527
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 528
    iget v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    .line 529
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    iget-object v9, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    iget v10, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    .line 530
    invoke-interface/range {v3 .. v10}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v0

    .line 531
    .local v0, "action":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 532
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/upstream/Loader;->access$202(Landroidx/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 533
    :cond_3
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    .line 534
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 535
    iput v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    .line 537
    :cond_4
    nop

    .line 538
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)J

    move-result-wide v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v9

    if-eqz v1, :cond_5

    .line 539
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)J

    move-result-wide v1

    goto :goto_0

    .line 540
    :cond_5
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v1

    .line 537
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->start(J)V

    goto :goto_1

    .line 519
    .end local v0    # "action":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    :pswitch_1
    :try_start_0
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    goto :goto_1

    .line 520
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception handling load completed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/upstream/Loader;->access$202(Landroidx/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    .line 525
    .end local v0    # "e":Ljava/lang/RuntimeException;
    nop

    .line 547
    :cond_6
    :goto_1
    return-void

    .line 506
    .end local v3    # "callback":Landroidx/media3/exoplayer/upstream/Loader$Callback;, "Landroidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    .end local v5    # "nowMs":J
    .end local v7    # "durationMs":J
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public maybeThrowError(I)V
    .locals 1
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    throw v0

    .line 397
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 446
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :try_start_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 448
    .local v1, "shouldLoad":Z
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 449
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 450
    if-eqz v1, :cond_1

    .line 451
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 453
    :try_start_3
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/Loader$Loadable;->load()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 455
    :try_start_4
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 456
    goto :goto_1

    .line 455
    :catchall_0
    move-exception v2

    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 456
    throw v2

    .line 458
    :cond_1
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 459
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 461
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 462
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 463
    :try_start_6
    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_3

    .line 464
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 462
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    .line 449
    .end local v1    # "shouldLoad":Z
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    .line 484
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Error;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_2

    .line 489
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 492
    :cond_2
    throw v0

    .line 476
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_3

    .line 481
    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 470
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_3

    .line 473
    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 467
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_3

    .line 468
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 493
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    nop

    .line 494
    return-void
.end method

.method public start(J)V
    .locals 4
    .param p1, "delayMillis"    # J

    .line 400
    .local p0, "this":Landroidx/media3/exoplayer/upstream/Loader$LoadTask;, "Landroidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader;->access$100(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 401
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->access$102(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/upstream/Loader$LoadTask;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 402
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 403
    invoke-virtual {p0, v1, p1, p2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 405
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->execute()V

    .line 407
    :goto_1
    return-void
.end method
