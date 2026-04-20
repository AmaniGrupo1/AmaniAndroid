.class public Landroidx/media3/common/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    nop

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized block(J)Z
    .locals 6
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 100
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 103
    .local v0, "nowMs":J
    add-long v2, v0, p1

    .line 104
    .local v2, "endMs":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 106
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->block()V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    if-nez v4, :cond_2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 109
    iget-object v4, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 110
    sub-long v4, v2, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 111
    iget-object v4, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 114
    :cond_2
    :goto_1
    iget-boolean v4, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    .line 98
    .end local v0    # "nowMs":J
    .end local v2    # "endMs":J
    .end local p1    # "timeoutMs":J
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized blockUninterruptible()V
    .locals 2

    monitor-enter p0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "wasInterrupted":Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 128
    :try_start_1
    iget-object v1, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    goto :goto_0

    .line 130
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 132
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_1
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized blockUninterruptible(J)Z
    .locals 7
    .param p1, "timeoutMs"    # J

    monitor-enter p0

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 153
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 155
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 156
    .local v0, "nowMs":J
    add-long v2, v0, p1

    .line 157
    .local v2, "endMs":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 159
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    goto :goto_2

    .line 161
    :cond_1
    const/4 v4, 0x0

    .line 162
    .local v4, "wasInterrupted":Z
    :goto_0
    iget-boolean v5, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    .line 164
    :try_start_2
    iget-object v5, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v5}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 165
    sub-long v5, v2, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    goto :goto_1

    .line 166
    :catch_0
    move-exception v5

    .line 167
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 169
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_3
    iget-object v5, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v5}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    goto :goto_0

    .line 171
    :cond_2
    if-eqz v4, :cond_3

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 176
    .end local v4    # "wasInterrupted":Z
    :cond_3
    :goto_2
    iget-boolean v4, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v4

    .line 151
    .end local v0    # "nowMs":J
    .end local v2    # "endMs":J
    .end local p1    # "timeoutMs":J
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()Z
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    .line 74
    .local v0, "wasOpen":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return v0

    .line 72
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 181
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized open()Z
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return v0

    .line 58
    .end local p0    # "this":Landroidx/media3/common/util/ConditionVariable;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
