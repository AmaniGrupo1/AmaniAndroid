.class public final Landroidx/media3/common/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# static fields
.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L

.field public static final MODE_NO_OFFSET:J = 0x7fffffffffffffffL

.field public static final MODE_SHARED:J = 0x7ffffffffffffffeL


# instance fields
.field private firstSampleTimestampUs:J

.field private lastUnadjustedTimestampUs:J

.field private final nextSampleTimestampUs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "firstSampleTimestampUs"    # J

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 88
    return-void
.end method

.method public static ptsToUs(J)J
    .locals 6
    .param p0, "pts"    # J

    .line 274
    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    move-wide v0, p0

    .end local p0    # "pts":J
    .local v0, "pts":J
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static usToNonWrappedPts(J)J
    .locals 6
    .param p0, "us"    # J

    .line 298
    const-wide/32 v2, 0x15f90

    const-wide/32 v4, 0xf4240

    move-wide v0, p0

    .end local p0    # "us":J
    .local v0, "us":J
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static usToWrappedPts(J)J
    .locals 4
    .param p0, "us"    # J

    .line 285
    invoke-static {p0, p1}, Landroidx/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x200000000L

    rem-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized adjustSampleTimestamp(J)J
    .locals 4
    .param p1, "timeUs"    # J

    monitor-enter p0

    .line 246
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 247
    monitor-exit p0

    return-wide v0

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 253
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_1
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    :goto_0
    nop

    .line 254
    .local v0, "desiredSampleTimestampUs":J
    sub-long v2, v0, p1

    iput-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 258
    .end local v0    # "desiredSampleTimestampUs":J
    :cond_2
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    .line 259
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, p1

    monitor-exit p0

    return-wide v0

    .line 245
    .end local p1    # "timeUs":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized adjustTsTimestamp(J)J
    .locals 12
    .param p1, "pts90Khz"    # J

    monitor-enter p0

    .line 197
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 198
    monitor-exit p0

    return-wide v0

    .line 200
    :cond_0
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 203
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    .line 204
    .local v0, "lastPts":J
    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    div-long/2addr v2, v4

    .line 205
    .local v2, "closestWrapCount":J
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long/2addr v6, v4

    add-long/2addr v6, p1

    .line 206
    .local v6, "ptsWrapBelow":J
    mul-long/2addr v4, v2

    add-long/2addr v4, p1

    .line 208
    .local v4, "ptsWrapAbove":J
    sub-long v8, v6, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 209
    move-wide v8, v6

    goto :goto_0

    .line 210
    :cond_1
    move-wide v8, v4

    :goto_0
    move-wide p1, v8

    .line 212
    .end local v0    # "lastPts":J
    .end local v2    # "closestWrapCount":J
    .end local v4    # "ptsWrapAbove":J
    .end local v6    # "ptsWrapBelow":J
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 196
    .end local p1    # "pts90Khz":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized adjustTsTimestampGreaterThanPreviousTimestamp(J)J
    .locals 10
    .param p1, "pts90Khz"    # J

    monitor-enter p0

    .line 225
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 226
    monitor-exit p0

    return-wide v0

    .line 228
    :cond_0
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 230
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    .line 231
    .local v0, "lastPts":J
    const-wide v2, 0x200000000L

    div-long v4, v0, v2

    .line 232
    .local v4, "wrapCount":J
    mul-long v6, v4, v2

    add-long/2addr v6, p1

    .line 233
    .local v6, "ptsSameWrap":J
    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v8, p1

    .line 234
    .local v8, "ptsNextWrap":J
    cmp-long v2, v6, v0

    if-ltz v2, :cond_1

    move-wide v2, v6

    goto :goto_0

    :cond_1
    move-wide v2, v8

    :goto_0
    move-wide p1, v2

    .line 236
    .end local v0    # "lastPts":J
    .end local v4    # "wrapCount":J
    .end local v6    # "ptsSameWrap":J
    .end local v8    # "ptsNextWrap":J
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 224
    .end local p1    # "pts90Khz":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getFirstSampleTimestampUs()J
    .locals 4

    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 152
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 151
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getLastAdjustedTimestampUs()J
    .locals 4

    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 162
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 163
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTimestampOffsetUs()J
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 171
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 4

    monitor-enter p0

    .line 264
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 264
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized reset(J)V
    .locals 5
    .param p1, "firstSampleTimestampUs"    # J

    monitor-enter p0

    .line 182
    :try_start_0
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    .line 183
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 184
    iput-wide v1, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    .end local p1    # "firstSampleTimestampUs":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized sharedInitializeOrWait(ZJJ)V
    .locals 13
    .param p1, "canInitialize"    # Z
    .param p2, "nextSampleTimestampUs"    # J
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-wide/from16 v0, p4

    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v4, 0x7ffffffffffffffeL

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 119
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 120
    monitor-exit p0

    return-void

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    .line 122
    :try_start_1
    iget-object v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 125
    .end local p0    # "this":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_2
    const-wide/16 v5, 0x0

    .line 126
    .local v5, "totalWaitDurationMs":J
    move-wide/from16 v7, p4

    .line 127
    .local v7, "remainingTimeoutMs":J
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    .line 128
    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-nez v2, :cond_3

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 131
    :cond_3
    cmp-long v2, v7, v9

    if-lez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 133
    .local v9, "waitStartingTimeMs":J
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    add-long/2addr v5, v11

    .line 135
    cmp-long v2, v5, v0

    if-ltz v2, :cond_6

    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 136
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimestampAdjuster failed to initialize in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v2    # "message":Ljava/lang/String;
    :cond_6
    :goto_3
    sub-long v7, v0, v5

    .line 141
    .end local v9    # "waitStartingTimeMs":J
    goto :goto_1

    .line 144
    .end local v5    # "totalWaitDurationMs":J
    .end local v7    # "remainingTimeoutMs":J
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    .line 117
    .end local p1    # "canInitialize":Z
    .end local p2    # "nextSampleTimestampUs":J
    .end local p4    # "timeoutMs":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
