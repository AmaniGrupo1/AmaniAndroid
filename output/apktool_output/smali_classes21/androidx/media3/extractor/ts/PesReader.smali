.class public final Landroidx/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Landroidx/media3/common/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V
    .locals 2
    .param p1, "reader"    # Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 65
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    .line 67
    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 201
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 202
    .local v0, "bytesToRead":I
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 203
    return v1

    .line 204
    :cond_0
    if-nez p2, :cond_1

    .line 205
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 207
    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 209
    :goto_0
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    .line 210
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    if-ne v2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 8

    .line 216
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 217
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 218
    .local v0, "startCodePrefix":I
    const-string v2, "PesReader"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 221
    return v1

    .line 224
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 225
    iget-object v1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 226
    .local v1, "packetLength":I
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 227
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 228
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 229
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    .line 230
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    .line 233
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 234
    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 236
    if-nez v1, :cond_1

    .line 237
    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    .line 239
    :cond_1
    add-int/lit8 v5, v1, 0x6

    add-int/lit8 v5, v5, -0x9

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 244
    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-gez v5, :cond_2

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found negative packet payload size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 249
    :cond_2
    :goto_0
    return v4
.end method

.method private parseHeaderExtension()V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "timestampAdjuster"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 255
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    .line 256
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 258
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 259
    .local v3, "pts":J
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 260
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 261
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 262
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 263
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 264
    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 265
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 266
    iget-object v1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 267
    .local v0, "dts":J
    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 268
    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 269
    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 270
    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 271
    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 277
    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 278
    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    .line 280
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    .line 282
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 186
    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    .line 188
    return-void
.end method


# virtual methods
.method public canConsumeSynthesizedEmptyPusi(Z)Z
    .locals 5
    .param p1, "isModeHls"    # Z

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 179
    .local v2, "headerParsed":Z
    :goto_1
    iget v3, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    instance-of v3, v3, Landroidx/media3/extractor/ts/H262Reader;

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 7
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 94
    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    const-string v4, "PesReader"

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 107
    :pswitch_0
    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start indicator: expected "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " more bytes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 112
    .local v0, "isEndOfInput":Z
    :goto_0
    iget-object v4, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v4, v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    .line 113
    goto :goto_1

    .line 100
    .end local v0    # "isEndOfInput":Z
    :pswitch_1
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto :goto_1

    .line 98
    :pswitch_2
    nop

    .line 117
    :goto_1
    invoke-direct {p0, v3}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    .line 120
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 121
    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    packed-switch v0, :pswitch_data_1

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 142
    :pswitch_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 143
    .local v0, "readLength":I
    iget v4, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v4, v1, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    iget v4, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    sub-int v4, v0, v4

    .line 144
    .local v4, "padding":I
    :goto_3
    if-lez v4, :cond_4

    .line 145
    sub-int/2addr v0, v4

    .line 146
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 148
    :cond_4
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v5, p1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 149
    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v5, v1, :cond_2

    .line 150
    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    sub-int/2addr v5, v0

    iput v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 151
    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-nez v5, :cond_2

    .line 153
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v5, v2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    .line 154
    invoke-direct {p0, v3}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_2

    .line 131
    .end local v0    # "readLength":I
    .end local v4    # "padding":I
    :pswitch_4
    const/16 v0, 0xa

    iget v4, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    .restart local v0    # "readLength":I
    iget-object v4, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v0}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 134
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, v4}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 136
    iget-boolean v4, p0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    or-int/2addr p2, v4

    .line 137
    iget-object v4, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iget-wide v5, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v4, v5, v6, p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 138
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_2

    .line 126
    .end local v0    # "readLength":I
    :pswitch_5
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/16 v4, 0x9

    invoke-direct {p0, p1, v0, v4}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_2

    .line 123
    :pswitch_6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 124
    goto/16 :goto_2

    .line 162
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 74
    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 75
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p2, p3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 76
    return-void
.end method

.method public seek()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    .line 83
    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    .line 84
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    .line 85
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    .line 86
    return-void
.end method
