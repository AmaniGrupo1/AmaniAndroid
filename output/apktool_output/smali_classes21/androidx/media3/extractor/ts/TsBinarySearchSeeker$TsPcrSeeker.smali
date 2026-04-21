.class final Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final pcrPid:I

.field private final pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final timestampSearchBytes:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;I)V
    .locals 1
    .param p1, "pcrPid"    # I
    .param p2, "pcrTimestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "timestampSearchBytes"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    .line 78
    iput-object p2, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 79
    iput p3, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->timestampSearchBytes:I

    .line 80
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 81
    return-void
.end method

.method private searchForPcrValueInBuffer(Landroidx/media3/common/util/ParsableByteArray;JJ)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 21
    .param p1, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "targetPcrTimeUs"    # J
    .param p4, "bufferStartOffset"    # J

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    .line 99
    .local v4, "limit":I
    const-wide/16 v5, -0x1

    .line 100
    .local v5, "startOfLastPacketPosition":J
    const-wide/16 v7, -0x1

    .line 101
    .local v7, "endOfLastPacketPosition":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    .local v9, "lastPcrTimeUsInRange":J
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xbc

    if-lt v11, v12, :cond_5

    .line 104
    nop

    .line 105
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v4}, Landroidx/media3/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v11

    .line 106
    .local v11, "startOfPacket":I
    add-int/lit16 v12, v11, 0xbc

    .line 107
    .local v12, "endOfPacket":I
    if-le v12, v4, :cond_0

    .line 108
    move/from16 v18, v4

    move-wide/from16 v19, v5

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 110
    :cond_0
    iget v15, v0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v11, v15}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v13

    .line 111
    .local v13, "pcrValue":J
    cmp-long v15, v13, v16

    if-eqz v15, :cond_4

    .line 112
    iget-object v15, v0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    move/from16 v18, v4

    move-wide/from16 v19, v5

    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .local v18, "limit":I
    .local v19, "startOfLastPacketPosition":J
    invoke-virtual {v15, v13, v14}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    .line 113
    .local v4, "pcrTimeUs":J
    cmp-long v6, v4, p2

    if-lez v6, :cond_2

    .line 114
    cmp-long v6, v9, v16

    if-nez v6, :cond_1

    .line 116
    invoke-static {v4, v5, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 119
    :cond_1
    add-long v15, v2, v19

    invoke-static/range {v15 .. v16}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 122
    :cond_2
    const-wide/32 v15, 0x186a0

    add-long/2addr v15, v4

    cmp-long v6, v15, p2

    if-lez v6, :cond_3

    .line 123
    int-to-long v2, v11

    add-long v2, p4, v2

    .line 124
    .local v2, "startOfPacketInStream":J
    invoke-static {v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 127
    .end local v2    # "startOfPacketInStream":J
    :cond_3
    move-wide v2, v4

    .line 128
    .end local v9    # "lastPcrTimeUsInRange":J
    .local v2, "lastPcrTimeUsInRange":J
    int-to-long v9, v11

    move-wide v5, v9

    move-wide v9, v2

    .end local v19    # "startOfLastPacketPosition":J
    .local v9, "startOfLastPacketPosition":J
    goto :goto_1

    .line 111
    .end local v2    # "lastPcrTimeUsInRange":J
    .end local v18    # "limit":I
    .local v4, "limit":I
    .restart local v5    # "startOfLastPacketPosition":J
    .local v9, "lastPcrTimeUsInRange":J
    :cond_4
    move/from16 v18, v4

    move-wide/from16 v19, v5

    .line 130
    .end local v4    # "limit":I
    .restart local v18    # "limit":I
    :goto_1
    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 131
    int-to-long v7, v12

    .line 132
    .end local v11    # "startOfPacket":I
    .end local v12    # "endOfPacket":I
    .end local v13    # "pcrValue":J
    move-wide/from16 v2, p4

    move/from16 v4, v18

    goto :goto_0

    .line 103
    .end local v18    # "limit":I
    .restart local v4    # "limit":I
    :cond_5
    move/from16 v18, v4

    move-wide/from16 v19, v5

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 134
    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .restart local v18    # "limit":I
    .restart local v19    # "startOfLastPacketPosition":J
    :goto_2
    cmp-long v2, v9, v16

    if-eqz v2, :cond_6

    .line 135
    add-long v2, p4, v7

    .line 136
    .local v2, "endOfLastPacketPositionInStream":J
    invoke-static {v9, v10, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v4

    return-object v4

    .line 139
    .end local v2    # "endOfLastPacketPositionInStream":J
    :cond_6
    sget-object v2, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v2
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 146
    return-void
.end method

.method public searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "targetTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    .line 87
    .local v4, "inputPosition":J
    iget v0, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->timestampSearchBytes:I

    int-to-long v0, v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    .line 89
    .local v6, "bytesToSearch":I
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 90
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v6}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 92
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    .end local p2    # "targetTimestamp":J
    .local v2, "targetTimestamp":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->searchForPcrValueInBuffer(Landroidx/media3/common/util/ParsableByteArray;JJ)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p2

    return-object p2
.end method
