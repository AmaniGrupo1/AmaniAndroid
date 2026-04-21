.class public final Landroidx/media3/container/ReorderingBufferQueue;
.super Ljava/lang/Object;
.source "ReorderingBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;,
        Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;
    }
.end annotation


# instance fields
.field private lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

.field private final outputConsumer:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

.field private final pendingBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private reorderingQueueSize:I

.field private final unusedBuffersWithTimestamp:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private final unusedParsableByteArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V
    .locals 1
    .param p1, "outputConsumer"    # Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->outputConsumer:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedBuffersWithTimestamp:Ljava/util/ArrayDeque;

    .line 66
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    .line 68
    return-void
.end method

.method private copy(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 6
    .param p1, "input"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 151
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    :goto_0
    nop

    .line 154
    .local v0, "result":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 158
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 160
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    .line 155
    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    return-object v0
.end method

.method private flushQueueDownToSize(I)V
    .locals 6
    .param p1, "targetSize"    # I

    .line 178
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 179
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 180
    .local v0, "buffersWithTimestamp":Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->nalBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 181
    iget-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->outputConsumer:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    iget-wide v3, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->presentationTimeUs:J

    iget-object v5, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->nalBuffers:Ljava/util/List;

    .line 182
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 181
    invoke-interface {v2, v3, v4, v5}, Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 183
    iget-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    iget-object v3, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->nalBuffers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->nalBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    iget-wide v1, v1, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->presentationTimeUs:J

    iget-wide v3, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->presentationTimeUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 190
    :cond_1
    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedBuffersWithTimestamp:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 191
    .end local v0    # "buffersWithTimestamp":Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;
    goto :goto_0

    .line 192
    :cond_2
    return-void
.end method


# virtual methods
.method public add(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4
    .param p1, "presentationTimeUs"    # J
    .param p3, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 118
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    .line 121
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    .line 122
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    iget-wide v2, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->presentationTimeUs:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-direct {p0, p3}, Landroidx/media3/container/ReorderingBufferQueue;->copy(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v0

    .line 129
    .local v0, "bufferCopy":Landroidx/media3/common/util/ParsableByteArray;
    iget-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    iget-wide v2, v2, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->presentationTimeUs:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 130
    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    iget-object v1, v1, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->nalBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void

    .line 134
    :cond_1
    iget-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedBuffersWithTimestamp:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    new-instance v2, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    invoke-direct {v2}, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;-><init>()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->unusedBuffersWithTimestamp:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    :goto_0
    nop

    .line 137
    .local v2, "buffersWithTimestamp":Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;
    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->init(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 138
    iget-object v3, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 139
    iput-object v2, p0, Landroidx/media3/container/ReorderingBufferQueue;->lastQueuedBuffer:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 140
    iget v3, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    if-eq v3, v1, :cond_3

    .line 141
    iget v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    invoke-direct {p0, v1}, Landroidx/media3/container/ReorderingBufferQueue;->flushQueueDownToSize(I)V

    .line 143
    :cond_3
    return-void

    .line 123
    .end local v0    # "bufferCopy":Landroidx/media3/common/util/ParsableByteArray;
    .end local v2    # "buffersWithTimestamp":Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->outputConsumer:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 124
    return-void
.end method

.method public clear()V
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->pendingBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 167
    return-void
.end method

.method public flush()V
    .locals 1

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/container/ReorderingBufferQueue;->flushQueueDownToSize(I)V

    .line 175
    return-void
.end method

.method public getMaxSize()I
    .locals 1

    .line 99
    iget v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    return v0
.end method

.method public setMaxSize(I)V
    .locals 1
    .param p1, "reorderingQueueSize"    # I

    .line 88
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 89
    iput p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->reorderingQueueSize:I

    .line 90
    invoke-direct {p0, p1}, Landroidx/media3/container/ReorderingBufferQueue;->flushQueueDownToSize(I)V

    .line 91
    return-void
.end method
