.class public final Landroidx/media3/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "FlacSeekTableSeekMap.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private final firstFrameOffset:J

.field private final flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V
    .locals 0
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "firstFrameOffset"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 42
    iput-wide p2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    .line 43
    return-void
.end method

.method private getSeekPoint(JJ)Landroidx/media3/extractor/SeekPoint;
    .locals 5
    .param p1, "sampleNumber"    # J
    .param p3, "offsetFromFirstFrame"    # J

    .line 82
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget-object v2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 83
    .local v0, "seekTimeUs":J
    iget-wide v2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    add-long/2addr v2, p3

    .line 84
    .local v2, "seekPosition":J
    new-instance v4, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 52
    iget-object v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 16
    .param p1, "timeUs"    # J

    .line 57
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v3, v3, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v3, v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v3, v3, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v3, v3, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 59
    .local v3, "pointSampleNumbers":[J
    iget-object v4, v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v4, v4, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v4, v4, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    .line 61
    .local v4, "pointOffsets":[J
    iget-object v5, v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide v5

    .line 62
    .local v5, "targetSampleNumber":J
    nop

    .line 63
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v3, v5, v6, v7, v8}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v8

    .line 69
    .local v8, "index":I
    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    if-ne v8, v11, :cond_0

    move-wide v12, v9

    goto :goto_0

    :cond_0
    aget-wide v12, v3, v8

    .line 70
    .local v12, "seekPointSampleNumber":J
    :goto_0
    if-ne v8, v11, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v9, v4, v8

    .line 71
    .local v9, "seekPointOffsetFromFirstFrame":J
    :goto_1
    invoke-direct {v0, v12, v13, v9, v10}, Landroidx/media3/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Landroidx/media3/extractor/SeekPoint;

    move-result-object v11

    .line 72
    .local v11, "seekPoint":Landroidx/media3/extractor/SeekPoint;
    iget-wide v14, v11, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v14, v14, v1

    if-eqz v14, :cond_3

    array-length v14, v3

    sub-int/2addr v14, v7

    if-ne v8, v14, :cond_2

    goto :goto_2

    .line 75
    :cond_2
    add-int/lit8 v7, v8, 0x1

    aget-wide v14, v3, v7

    add-int/lit8 v7, v8, 0x1

    aget-wide v1, v4, v7

    .line 76
    invoke-direct {v0, v14, v15, v1, v2}, Landroidx/media3/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Landroidx/media3/extractor/SeekPoint;

    move-result-object v1

    .line 77
    .local v1, "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v11, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v2

    .line 73
    .end local v1    # "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_3
    :goto_2
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v11}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method
