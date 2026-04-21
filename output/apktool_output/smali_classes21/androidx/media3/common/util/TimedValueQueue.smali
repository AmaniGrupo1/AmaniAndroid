.class public final Landroidx/media3/common/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "TimedValueQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0xa


# instance fields
.field private first:I

.field private size:I

.field private timestamps:[J

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialBufferSize"    # I

    .line 39
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    .line 41
    invoke-static {p1}, Landroidx/media3/common/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private addUnchecked(JLjava/lang/Object;)V
    .locals 2
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 169
    .local v0, "next":I
    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    aput-wide p1, v1, v0

    .line 170
    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 171
    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    .line 172
    return-void
.end method

.method private clearBufferOnTimeDiscontinuity(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 136
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-lez v0, :cond_0

    .line 137
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 138
    .local v0, "last":I
    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    .line 142
    .end local v0    # "last":I
    :cond_0
    return-void
.end method

.method private doubleCapacityIfFull()V
    .locals 8

    .line 145
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    .line 146
    .local v0, "capacity":I
    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-ge v1, v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 150
    .local v1, "newCapacity":I
    new-array v2, v1, [J

    .line 151
    .local v2, "newTimestamps":[J
    invoke-static {v1}, Landroidx/media3/common/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "newValues":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    sub-int v4, v0, v4

    .line 155
    .local v4, "length":I
    iget-object v5, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    iget v6, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v5, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v5, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v5, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    if-lez v5, :cond_1

    .line 159
    iget-object v5, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    iget v6, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v5, v7, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v5, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v5, v7, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_1
    iput-object v2, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    .line 163
    iput-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 164
    iput v7, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    .line 165
    return-void
.end method

.method private static newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 176
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method private poll(JZ)Ljava/lang/Object;
    .locals 7
    .param p1, "timestamp"    # J
    .param p3, "onlyOlder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    .line 112
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    const/4 v0, 0x0

    .line 113
    .local v0, "value":Ljava/lang/Object;, "TV;"
    const-wide v1, 0x7fffffffffffffffL

    .line 114
    .local v1, "previousTimeDiff":J
    :goto_0
    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-lez v3, :cond_1

    .line 115
    iget-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:[J

    iget v4, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    aget-wide v4, v3, v4

    sub-long v3, p1, v4

    .line 116
    .local v3, "timeDiff":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v5, v5, v1

    if-ltz v5, :cond_0

    .line 117
    goto :goto_1

    .line 119
    :cond_0
    move-wide v1, v3

    .line 120
    invoke-direct {p0}, Landroidx/media3/common/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .end local v3    # "timeDiff":J
    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    return-object v0
.end method

.method private popFirst()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 127
    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 128
    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    aget-object v0, v0, v2

    .line 129
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 130
    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    .line 131
    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    .line 132
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(JLjava/lang/Object;)V
    .locals 0
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->clearBufferOnTimeDiscontinuity(J)V

    .line 51
    invoke-direct {p0}, Landroidx/media3/common/util/TimedValueQueue;->doubleCapacityIfFull()V

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/util/TimedValueQueue;->addUnchecked(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 49
    .end local p0    # "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    .end local p3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 57
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    .line 58
    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    .line 59
    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized poll(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 97
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    .end local p0    # "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 70
    :try_start_0
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 70
    .end local p0    # "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized pollFloor(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 84
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    .end local p0    # "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 64
    :try_start_0
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 64
    .end local p0    # "this":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
