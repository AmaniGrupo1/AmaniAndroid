.class final Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 18
    .param p0, "fixedSampleSize"    # I
    .param p1, "chunkOffsets"    # [J
    .param p2, "chunkSampleCounts"    # [I
    .param p3, "timestampDeltaInTimeUnits"    # J

    .line 74
    move-object/from16 v0, p2

    const/16 v1, 0x2000

    div-int v1, v1, p0

    .line 77
    .local v1, "maxSampleCount":I
    const/4 v2, 0x0

    .line 78
    .local v2, "rechunkedSampleCount":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 79
    .local v5, "chunkSampleCount":I
    invoke-static {v5, v1}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v6

    add-int/2addr v2, v6

    .line 78
    .end local v5    # "chunkSampleCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-array v6, v2, [J

    .line 83
    .local v6, "offsets":[J
    new-array v7, v2, [I

    .line 84
    .local v7, "sizes":[I
    const/4 v3, 0x0

    .line 85
    .local v3, "maximumSize":I
    new-array v9, v2, [J

    .line 86
    .local v9, "timestamps":[J
    new-array v10, v2, [I

    .line 87
    .local v10, "flags":[I
    const/4 v4, 0x0

    .line 89
    .local v4, "totalSize":I
    const/4 v5, 0x0

    .line 90
    .local v5, "originalSampleIndex":I
    const/4 v8, 0x0

    .line 91
    .local v8, "newSampleIndex":I
    const/4 v11, 0x0

    move/from16 v16, v8

    move v8, v3

    move v3, v5

    .end local v5    # "originalSampleIndex":I
    .local v3, "originalSampleIndex":I
    .local v8, "maximumSize":I
    .local v11, "chunkIndex":I
    .local v16, "newSampleIndex":I
    :goto_1
    array-length v5, v0

    if-ge v11, v5, :cond_2

    .line 92
    aget v5, v0, v11

    .line 93
    .local v5, "chunkSamplesRemaining":I
    aget-wide v12, p1, v11

    .line 95
    .local v12, "sampleOffset":J
    :goto_2
    if-lez v5, :cond_1

    .line 96
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 98
    .local v14, "bufferSampleCount":I
    aput-wide v12, v6, v16

    .line 99
    mul-int v15, p0, v14

    aput v15, v7, v16

    .line 100
    aget v15, v7, v16

    add-int/2addr v4, v15

    .line 101
    aget v15, v7, v16

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 102
    move/from16 v17, v1

    .end local v1    # "maxSampleCount":I
    .local v17, "maxSampleCount":I
    int-to-long v0, v3

    mul-long v0, v0, p3

    aput-wide v0, v9, v16

    .line 103
    const/4 v0, 0x1

    aput v0, v10, v16

    .line 105
    aget v0, v7, v16

    int-to-long v0, v0

    add-long/2addr v12, v0

    .line 106
    add-int/2addr v3, v14

    .line 108
    sub-int/2addr v5, v14

    .line 109
    nop

    .end local v14    # "bufferSampleCount":I
    add-int/lit8 v16, v16, 0x1

    .line 110
    move-object/from16 v0, p2

    move/from16 v1, v17

    goto :goto_2

    .line 95
    .end local v17    # "maxSampleCount":I
    .restart local v1    # "maxSampleCount":I
    :cond_1
    move/from16 v17, v1

    .line 91
    .end local v1    # "maxSampleCount":I
    .end local v5    # "chunkSamplesRemaining":I
    .end local v12    # "sampleOffset":J
    .restart local v17    # "maxSampleCount":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    goto :goto_1

    .line 112
    .end local v11    # "chunkIndex":I
    .end local v17    # "maxSampleCount":I
    .restart local v1    # "maxSampleCount":I
    :cond_2
    int-to-long v0, v3

    mul-long v11, p3, v0

    .line 114
    .local v11, "duration":J
    new-instance v5, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    int-to-long v13, v4

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJJLandroidx/media3/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v5
.end method
