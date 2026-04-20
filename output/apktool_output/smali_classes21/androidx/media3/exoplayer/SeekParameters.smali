.class public final Landroidx/media3/exoplayer/SeekParameters;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# static fields
.field public static final CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

.field public static final DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

.field public static final EXACT:Landroidx/media3/exoplayer/SeekParameters;

.field public static final NEXT_SYNC:Landroidx/media3/exoplayer/SeekParameters;

.field public static final PREVIOUS_SYNC:Landroidx/media3/exoplayer/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->EXACT:Landroidx/media3/exoplayer/SeekParameters;

    .line 46
    new-instance v0, Landroidx/media3/exoplayer/SeekParameters;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v3, v4, v3, v4}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    .line 50
    new-instance v0, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->PREVIOUS_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    .line 53
    new-instance v0, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->NEXT_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    .line 56
    sget-object v0, Landroidx/media3/exoplayer/SeekParameters;->EXACT:Landroidx/media3/exoplayer/SeekParameters;

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "toleranceBeforeUs"    # J
    .param p3, "toleranceAfterUs"    # J

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 79
    iput-wide p1, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    .line 80
    iput-wide p3, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 121
    return v0

    .line 123
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/SeekParameters;

    .line 127
    .local v2, "other":Landroidx/media3/exoplayer/SeekParameters;
    iget-wide v3, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 124
    .end local v2    # "other":Landroidx/media3/exoplayer/SeekParameters;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 133
    iget-wide v0, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolveSeekPositionUs(JJJ)J
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "firstSyncUs"    # J
    .param p5, "secondSyncUs"    # J

    .line 94
    iget-wide v0, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    return-wide p1

    .line 97
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    .line 98
    const-wide/high16 v5, -0x8000000000000000L

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide v3

    .line 99
    .local v3, "minPositionUs":J
    iget-wide v7, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    const-wide v9, 0x7fffffffffffffffL

    move-wide v5, p1

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v0

    .line 100
    .local v0, "maxPositionUs":J
    cmp-long v2, v3, p3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v2, :cond_1

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    .line 101
    .local v2, "firstSyncPositionValid":Z
    :goto_0
    cmp-long v7, v3, p5

    if-gtz v7, :cond_2

    cmp-long v7, p5, v0

    if-gtz v7, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    .line 103
    .local v5, "secondSyncPositionValid":Z
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 104
    sub-long v6, p3, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v8, p5, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 105
    return-wide p3

    .line 107
    :cond_3
    return-wide p5

    .line 109
    :cond_4
    if-eqz v2, :cond_5

    .line 110
    return-wide p3

    .line 111
    :cond_5
    if-eqz v5, :cond_6

    .line 112
    return-wide p5

    .line 114
    :cond_6
    return-wide v3
.end method
