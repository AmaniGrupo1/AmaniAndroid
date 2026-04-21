.class final Landroidx/media3/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsDurationReader"

.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x4e20


# instance fields
.field private durationUs:J

.field private firstScrValue:J

.field private isDurationRead:Z

.field private isFirstScrValueRead:Z

.field private isLastScrValueRead:Z

.field private lastScrValue:J

.field private final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 61
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 62
    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 63
    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    .line 64
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 65
    return-void
.end method

.method private static checkMarkerBits([B)Z
    .locals 4
    .param p0, "scrBytes"    # [B

    .line 224
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    .line 225
    return v0

    .line 229
    :cond_0
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    .line 230
    return v0

    .line 234
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    .line 235
    return v0

    .line 238
    :cond_2
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    .line 239
    return v0

    .line 243
    :cond_3
    const/16 v1, 0x8

    aget-byte v1, p0, v1

    const/4 v3, 0x3

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method private finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;

    .line 136
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    .line 138
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method private peekIntAtPosition([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "position"    # I

    .line 216
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private readFirstScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const-wide/16 v0, 0x4e20

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 145
    .local v0, "bytesToSearch":I
    const/4 v1, 0x0

    .line 146
    .local v1, "searchStartPosition":I
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 147
    int-to-long v4, v1

    iput-wide v4, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 148
    return v3

    .line 151
    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 152
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 153
    iget-object v2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 155
    iget-object v2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->readFirstScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 156
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    .line 157
    return v4
.end method

.method private readFirstScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 8
    .param p1, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 161
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 162
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 163
    .local v1, "searchEndPosition":I
    move v2, v0

    .line 164
    .local v2, "searchPosition":I
    :goto_0
    add-int/lit8 v3, v1, -0x3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v3, :cond_1

    .line 166
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v3

    .line 167
    .local v3, "nextStartCode":I
    const/16 v6, 0x1ba

    if-ne v3, v6, :cond_0

    .line 168
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 169
    invoke-static {p1}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v6

    .line 170
    .local v6, "scrValue":J
    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    .line 171
    return-wide v6

    .line 165
    .end local v3    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "searchPosition":I
    :cond_1
    return-wide v4
.end method

.method private readLastScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 10
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 181
    .local v0, "inputLength":J
    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 182
    .local v2, "bytesToSearch":I
    int-to-long v3, v2

    sub-long v3, v0, v3

    .line 183
    .local v3, "searchStartPosition":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 184
    iput-wide v3, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 185
    return v6

    .line 188
    :cond_0
    iget-object v5, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 189
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 190
    iget-object v5, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {p1, v5, v7, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 192
    iget-object v5, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v5}, Landroidx/media3/extractor/ts/PsDurationReader;->readLastScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 193
    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    .line 194
    return v7
.end method

.method private readLastScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 8
    .param p1, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 198
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 199
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 200
    .local v1, "searchEndPosition":I
    add-int/lit8 v2, v1, -0x4

    .line 201
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v5

    .line 204
    .local v5, "nextStartCode":I
    const/16 v6, 0x1ba

    if-ne v5, v6, :cond_0

    .line 205
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 206
    invoke-static {p1}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v6

    .line 207
    .local v6, "scrValue":J
    cmp-long v3, v6, v3

    if-eqz v3, :cond_0

    .line 208
    return-wide v6

    .line 202
    .end local v5    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 212
    .end local v2    # "searchPosition":I
    :cond_1
    return-wide v3
.end method

.method public static readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 6
    .param p0, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 121
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 122
    .local v0, "originalPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    .line 124
    return-wide v2

    .line 126
    :cond_0
    new-array v1, v4, [B

    .line 127
    .local v1, "scrBytes":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 128
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 129
    invoke-static {v1}, Landroidx/media3/extractor/ts/PsDurationReader;->checkMarkerBits([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    return-wide v2

    .line 132
    :cond_1
    invoke-static {v1}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPackHeader([B)J

    move-result-wide v2

    return-wide v2
.end method

.method private static readScrValueFromPackHeader([B)J
    .locals 13
    .param p0, "scrBytes"    # [B

    .line 254
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v2, 0x14

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v4, p0, v2

    int-to-long v4, v4

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v0, v4

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0xd

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    aget-byte v2, p0, v3

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/4 v2, 0x5

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v10

    shr-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 113
    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getScrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/ts/PsDurationReader;->readLastScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 94
    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 95
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 97
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/ts/PsDurationReader;->readFirstScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 100
    :cond_2
    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 101
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 104
    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v1, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 105
    .local v0, "minScrPositionUs":J
    iget-object v2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v3, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 106
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestampGreaterThanPreviousTimestamp(J)J

    move-result-wide v2

    .line 107
    .local v2, "maxScrPositionUs":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    .line 108
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v4

    return v4
.end method
