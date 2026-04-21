.class public abstract Lio/grpc/internal/AbstractStream$TransportState;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;
.implements Lio/grpc/internal/MessageDeframer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransportState"
.end annotation


# static fields
.field public static final DEFAULT_ONREADY_THRESHOLD:I = 0x8000


# instance fields
.field private allocated:Z

.field private deallocated:Z

.field private deframer:Lio/grpc/internal/Deframer;

.field private numSentBytesQueued:I

.field private final onReadyLock:Ljava/lang/Object;

.field private final rawDeframer:Lio/grpc/internal/MessageDeframer;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;


# direct methods
.method protected constructor <init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 7
    .param p1, "maxMessageSize"    # I
    .param p2, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p3, "transportTracer"    # Lio/grpc/internal/TransportTracer;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    .line 150
    const-string v0, "statsTraceCtx"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 151
    const-string v0, "transportTracer"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 152
    new-instance v1, Lio/grpc/internal/MessageDeframer;

    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "maxMessageSize":I
    .end local p2    # "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    .end local p3    # "transportTracer":Lio/grpc/internal/TransportTracer;
    .local v4, "maxMessageSize":I
    .local v5, "statsTraceCtx":Lio/grpc/internal/StatsTraceContext;
    .local v6, "transportTracer":Lio/grpc/internal/TransportTracer;
    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/MessageDeframer;-><init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/Decompressor;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    iput-object v1, v2, Lio/grpc/internal/AbstractStream$TransportState;->rawDeframer:Lio/grpc/internal/MessageDeframer;

    .line 159
    iget-object p1, v2, Lio/grpc/internal/AbstractStream$TransportState;->rawDeframer:Lio/grpc/internal/MessageDeframer;

    iput-object p1, v2, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/AbstractStream$TransportState;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractStream$TransportState;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->requestMessagesFromDeframer(I)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/AbstractStream$TransportState;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AbstractStream$TransportState;

    .line 112
    invoke-direct {p0}, Lio/grpc/internal/AbstractStream$TransportState;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/grpc/internal/AbstractStream$TransportState;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractStream$TransportState;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->onSendingBytes(I)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/AbstractStream$TransportState;)Lio/grpc/internal/Deframer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AbstractStream$TransportState;

    .line 112
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    return-object v0
.end method

.method private isReady()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->allocated:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    const v2, 0x8000

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->deallocated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyIfReady()V
    .locals 2

    .line 335
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/AbstractStream$TransportState;->isReady()Z

    move-result v1

    .line 337
    .local v1, "doNotify":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream$TransportState;->listener()Lio/grpc/internal/StreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/StreamListener;->onReady()V

    .line 341
    :cond_0
    return-void

    .line 337
    .end local v1    # "doNotify":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onSendingBytes(I)V
    .locals 2
    .param p1, "numBytes"    # I

    .line 301
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestMessagesFromDeframer(I)V
    .locals 3
    .param p1, "numMessages"    # I

    .line 222
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    instance-of v0, v0, Lio/grpc/internal/ThreadOptimizedDeframer;

    if-eqz v0, :cond_2

    .line 223
    const-string v0, "AbstractStream.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 224
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    invoke-interface {v1, p1}, Lio/grpc/internal/Deframer;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 226
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 223
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 228
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_2
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 240
    .local v0, "link":Lio/perfmark/Link;
    new-instance v1, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;

    invoke-direct {v1, p0, v0, p1}, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;-><init>(Lio/grpc/internal/AbstractStream$TransportState;Lio/perfmark/Link;I)V

    invoke-virtual {p0, v1}, Lio/grpc/internal/AbstractStream$TransportState;->runOnTransportThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected final closeDeframer(Z)V
    .locals 1
    .param p1, "stopDelivery"    # Z

    .line 198
    nop

    .line 201
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-interface {v0}, Lio/grpc/internal/Deframer;->close()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v0}, Lio/grpc/internal/Deframer;->closeWhenComplete()V

    .line 203
    :goto_0
    return-void
.end method

.method protected final deframe(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1
    .param p1, "frame"    # Lio/grpc/internal/ReadableBuffer;

    .line 211
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    invoke-interface {v0, p1}, Lio/grpc/internal/Deframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final getStatsTraceContext()Lio/grpc/internal/StatsTraceContext;
    .locals 1

    .line 253
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-object v0
.end method

.method protected getTransportTracer()Lio/grpc/internal/TransportTracer;
    .locals 1

    .line 330
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object v0
.end method

.method protected abstract listener()Lio/grpc/internal/StreamListener;
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 183
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream$TransportState;->listener()Lio/grpc/internal/StreamListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/StreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 184
    return-void
.end method

.method public final onSentBytes(I)V
    .locals 6
    .param p1, "numBytes"    # I

    .line 316
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->allocated:Z

    const-string v2, "onStreamAllocated was not called, but it seems the stream is active"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 319
    iget v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    const v2, 0x8000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 320
    .local v1, "belowThresholdBefore":Z
    :goto_0
    iget v5, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    sub-int/2addr v5, p1

    iput v5, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    .line 321
    iget v5, p0, Lio/grpc/internal/AbstractStream$TransportState;->numSentBytesQueued:I

    if-ge v5, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 322
    .local v2, "belowThresholdAfter":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 323
    .end local v1    # "belowThresholdBefore":Z
    .end local v2    # "belowThresholdAfter":Z
    .local v3, "doNotify":Z
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    if-eqz v3, :cond_3

    .line 325
    invoke-direct {p0}, Lio/grpc/internal/AbstractStream$TransportState;->notifyIfReady()V

    .line 327
    :cond_3
    return-void

    .line 323
    .end local v3    # "doNotify":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onStreamAllocated()V
    .locals 4

    .line 273
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream$TransportState;->listener()Lio/grpc/internal/StreamListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 274
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-boolean v3, p0, Lio/grpc/internal/AbstractStream$TransportState;->allocated:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    const-string v3, "Already allocated"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 276
    iput-boolean v2, p0, Lio/grpc/internal/AbstractStream$TransportState;->allocated:Z

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-direct {p0}, Lio/grpc/internal/AbstractStream$TransportState;->notifyIfReady()V

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final onStreamDeallocated()V
    .locals 2

    .line 289
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->onReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->deallocated:Z

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final optimizeForDirectExecutor()V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->rawDeframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p0}, Lio/grpc/internal/MessageDeframer;->setListener(Lio/grpc/internal/MessageDeframer$Listener;)V

    .line 164
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->rawDeframer:Lio/grpc/internal/MessageDeframer;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    .line 165
    return-void
.end method

.method public final requestMessagesFromDeframerForTesting(I)V
    .locals 0
    .param p1, "numMessages"    # I

    .line 249
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->requestMessagesFromDeframer(I)V

    .line 250
    return-void
.end method

.method protected final setDecompressor(Lio/grpc/Decompressor;)V
    .locals 1
    .param p1, "decompressor"    # Lio/grpc/Decompressor;

    .line 257
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    invoke-interface {v0, p1}, Lio/grpc/internal/Deframer;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 258
    return-void
.end method

.method protected setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 2
    .param p1, "fullStreamDecompressor"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 168
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->rawDeframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V

    .line 169
    new-instance v0, Lio/grpc/internal/ApplicationThreadDeframer;

    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState;->rawDeframer:Lio/grpc/internal/MessageDeframer;

    invoke-direct {v0, p0, p0, v1}, Lio/grpc/internal/ApplicationThreadDeframer;-><init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;Lio/grpc/internal/MessageDeframer;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    .line 170
    return-void
.end method

.method final setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 173
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$TransportState;->deframer:Lio/grpc/internal/Deframer;

    invoke-interface {v0, p1}, Lio/grpc/internal/Deframer;->setMaxInboundMessageSize(I)V

    .line 174
    return-void
.end method
