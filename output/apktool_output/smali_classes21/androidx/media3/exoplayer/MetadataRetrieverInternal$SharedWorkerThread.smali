.class public final Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;
.super Ljava/lang/Object;
.source "MetadataRetrieverInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetrieverInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedWorkerThread"
.end annotation


# static fields
.field public static final MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mediaSourceThread:Landroid/os/HandlerThread;

.field private final pendingRetrievals:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;",
            ">;"
        }
    .end annotation
.end field

.field private referenceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 442
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;

    .line 435
    invoke-direct {p0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;-><init>()V

    return-void
.end method

.method private maybeStartNewRetrieval()V
    .locals 2

    .line 491
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    return-void

    .line 494
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->referenceCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 495
    .local v0, "activeRetrievals":I
    sget-object v1, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 496
    iget-object v1, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;

    .line 497
    .local v1, "retrieval":Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;->start()V

    .line 499
    .end local v1    # "retrieval":Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addWorker()Landroid/os/Looper;
    .locals 3

    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 460
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->referenceCount:I

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 461
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:MetadataRetriever"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 462
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 464
    .end local p0    # "this":Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->referenceCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->referenceCount:I

    .line 465
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeWorker()V
    .locals 1

    monitor-enter p0

    .line 480
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->referenceCount:I

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 483
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    goto :goto_0

    .line 485
    .end local p0    # "this":Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->maybeStartNewRetrieval()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startRetrieval(Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;)V
    .locals 1
    .param p1, "retrieval"    # Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;

    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 475
    invoke-direct {p0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->maybeStartNewRetrieval()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 473
    .end local p0    # "this":Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;
    .end local p1    # "retrieval":Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
