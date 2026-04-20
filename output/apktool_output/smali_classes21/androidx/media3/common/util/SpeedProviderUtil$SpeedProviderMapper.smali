.class public final Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;
.super Ljava/lang/Object;
.source "SpeedProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/SpeedProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedProviderMapper"
.end annotation


# instance fields
.field private final inputSegmentStartTimesUs:[J

.field private final outputSegmentStartTimesUs:[J

.field private final speeds:[F


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/SpeedProvider;)V
    .locals 18
    .param p1, "speedProvider"    # Landroidx/media3/common/audio/SpeedProvider;

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v2, Landroidx/media3/common/util/LongArray;

    invoke-direct {v2}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 116
    .local v2, "outputSegmentStartTimesUs":Landroidx/media3/common/util/LongArray;
    new-instance v3, Landroidx/media3/common/util/LongArray;

    invoke-direct {v3}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 117
    .local v3, "inputSegmentStartTimesUs":Landroidx/media3/common/util/LongArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v4, "speeds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const-wide/16 v5, 0x0

    .line 120
    .local v5, "lastOutputSegmentStartTimeUs":J
    const-wide/16 v7, 0x0

    .line 121
    .local v7, "lastInputSegmentStartTimeUs":J
    invoke-interface {v1, v7, v8}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v9

    .line 122
    .local v9, "lastSpeed":F
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 123
    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 124
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    nop

    .line 126
    invoke-interface {v1, v7, v8}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v10

    .line 127
    .local v10, "nextSpeedChangeTimeUs":J
    const/4 v12, 0x0

    cmpl-float v13, v9, v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lez v13, :cond_0

    move v13, v14

    goto :goto_0

    :cond_0
    move v13, v15

    :goto_0
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 129
    :goto_1
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v10, v16

    if-eqz v13, :cond_3

    .line 130
    cmp-long v13, v10, v7

    if-lez v13, :cond_1

    move v13, v14

    goto :goto_2

    :cond_1
    move v13, v15

    :goto_2
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 131
    cmpl-float v13, v9, v12

    if-lez v13, :cond_2

    move v13, v14

    goto :goto_3

    :cond_2
    move v13, v15

    :goto_3
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 132
    sub-long v12, v10, v7

    .line 133
    invoke-static {v12, v13, v9}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v12

    add-long/2addr v5, v12

    .line 135
    move-wide v7, v10

    .line 136
    invoke-interface {v1, v7, v8}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v9

    .line 137
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 138
    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 139
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v1, v7, v8}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v10

    const/4 v12, 0x0

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v2}, Landroidx/media3/common/util/LongArray;->toArray()[J

    move-result-object v12

    iput-object v12, v0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    .line 143
    invoke-virtual {v3}, Landroidx/media3/common/util/LongArray;->toArray()[J

    move-result-object v12

    iput-object v12, v0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    .line 144
    invoke-static {v4}, Lcom/google/common/primitives/Floats;->toArray(Ljava/util/Collection;)[F

    move-result-object v12

    iput-object v12, v0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->speeds:[F

    .line 145
    return-void
.end method


# virtual methods
.method public getAdjustedTimeUs(J)J
    .locals 6
    .param p1, "originalTimeUs"    # J

    .line 149
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, p1, v3

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 150
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 151
    iget-object v0, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    .line 152
    invoke-static {v0, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 157
    .local v0, "index":I
    iget-object v1, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    aget-wide v4, v1, v0

    sub-long v4, p1, v4

    iget-object v1, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->speeds:[F

    aget v1, v1, v0

    .line 158
    invoke-static {v4, v5, v1}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 157
    return-wide v2
.end method

.method public getOriginalTimeUs(J)J
    .locals 6
    .param p1, "adjustedTimeUs"    # J

    .line 164
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, p1, v3

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 165
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 166
    iget-object v0, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    .line 167
    invoke-static {v0, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 172
    .local v0, "index":I
    iget-object v1, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    aget-wide v4, v1, v0

    sub-long v4, p1, v4

    iget-object v1, p0, Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;->speeds:[F

    aget v1, v1, v0

    .line 173
    invoke-static {v4, v5, v1}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 172
    return-wide v2
.end method
