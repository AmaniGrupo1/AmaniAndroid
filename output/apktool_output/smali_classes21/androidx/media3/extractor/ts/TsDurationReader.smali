.class final Landroidx/media3/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TsDurationReader"


# instance fields
.field private durationUs:J

.field private firstPcrValue:J

.field private isDurationRead:Z

.field private isFirstPcrValueRead:Z

.field private isLastPcrValueRead:Z

.field private lastPcrValue:J

.field private final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final timestampSearchBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "timestampSearchBytes"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    .line 57
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 58
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 59
    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 60
    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    .line 61
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 62
    return-void
.end method

.method private finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;

    .line 123
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 125
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method private readFirstPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v0, v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 132
    .local v0, "bytesToSearch":I
    const/4 v1, 0x0

    .line 133
    .local v1, "searchStartPosition":I
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 134
    int-to-long v4, v1

    iput-wide v4, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 135
    return v3

    .line 138
    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 139
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 140
    iget-object v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 142
    iget-object v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v2, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 143
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    .line 144
    return v4
.end method

.method private readFirstPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J
    .locals 7
    .param p1, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "pcrPid"    # I

    .line 148
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 149
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 150
    .local v1, "searchEndPosition":I
    move v2, v0

    .line 151
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_2

    .line 153
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v2

    const/16 v6, 0x47

    if-eq v5, v6, :cond_0

    .line 154
    goto :goto_1

    .line 156
    :cond_0
    invoke-static {p1, v2, p2}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v5

    .line 157
    .local v5, "pcrValue":J
    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    .line 158
    return-wide v5

    .line 152
    .end local v5    # "pcrValue":J
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v3
.end method

.method private readLastPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I
    .locals 10
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 167
    .local v0, "inputLength":J
    iget v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 168
    .local v2, "bytesToSearch":I
    int-to-long v3, v2

    sub-long v3, v0, v3

    .line 169
    .local v3, "searchStartPosition":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 170
    iput-wide v3, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 171
    return v6

    .line 174
    :cond_0
    iget-object v5, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 175
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 176
    iget-object v5, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {p1, v5, v7, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 178
    iget-object v5, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v5, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 179
    iput-boolean v6, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    .line 180
    return v7
.end method

.method private readLastPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J
    .locals 7
    .param p1, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "pcrPid"    # I

    .line 184
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 185
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 188
    .local v1, "searchEndPosition":I
    add-int/lit16 v2, v1, -0xbc

    .line 189
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_2

    .line 191
    nop

    .line 192
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 191
    invoke-static {v5, v0, v1, v2}, Landroidx/media3/extractor/ts/TsUtil;->isStartOfTsPacket([BIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 193
    goto :goto_1

    .line 195
    :cond_0
    invoke-static {p1, v2, p2}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v5

    .line 196
    .local v5, "pcrValue":J
    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    .line 197
    return-wide v5

    .line 190
    .end local v5    # "pcrValue":J
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 200
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v3
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 111
    iget-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    if-gtz p3, :cond_0

    .line 85
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 87
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readLastPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 90
    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 91
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 93
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_3

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readFirstPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 96
    :cond_3
    iget-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 97
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 100
    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 101
    .local v0, "minPcrPositionUs":J
    iget-object v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v3, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 102
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestampGreaterThanPreviousTimestamp(J)J

    move-result-wide v2

    .line 103
    .local v2, "maxPcrPositionUs":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    .line 104
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v4

    return v4
.end method
