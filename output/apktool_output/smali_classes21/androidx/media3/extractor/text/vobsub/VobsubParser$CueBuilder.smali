.class final Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
.super Ljava/lang/Object;
.source "VobsubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/vobsub/VobsubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;
    }
.end annotation


# static fields
.field private static final CMD_ALPHA:I = 0x4

.field private static final CMD_AREA:I = 0x5

.field private static final CMD_COLORS:I = 0x3

.field private static final CMD_END:I = 0xff

.field private static final CMD_FORCE_START:I = 0x0

.field private static final CMD_OFFSETS:I = 0x6

.field private static final CMD_START:I = 0x1

.field private static final CMD_STOP:I = 0x2


# instance fields
.field private boundingBox:Landroid/graphics/Rect;

.field private final colors:[I

.field private dataOffset0:I

.field private dataOffset1:I

.field private endTimeUs:J

.field private hasColors:Z

.field private hasPlane:Z

.field private palette:[I

.field private planeHeight:I

.field private planeWidth:I

.field private startTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->startTimeUs:J

    .line 144
    iput-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->endTimeUs:J

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 147
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
    .param p1, "x1"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 118
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseSpuControlSequenceTable(Landroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    .line 118
    iget-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->endTimeUs:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    .line 118
    iget-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->startTimeUs:J

    return-wide v0
.end method

.method private static getColor([II)I
    .locals 1
    .param p0, "palette"    # [I
    .param p1, "index"    # I

    .line 306
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget v0, p0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    :goto_0
    return v0
.end method

.method private static parseColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 180
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "VobsubParser"

    const-string v2, "Parsing color failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    const/4 v1, 0x0

    return v1
.end method

.method private parseCommand(JLandroidx/media3/common/util/ParsableByteArray;)Z
    .locals 4
    .param p1, "spuTimeUs"    # J
    .param p3, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.palette"
        }
    .end annotation

    .line 259
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 260
    .local v0, "command":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VobsubParser"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return v1

    .line 279
    :sswitch_0
    return v1

    .line 271
    :sswitch_1
    invoke-direct {p0, p3}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlOffsets(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v1

    return v1

    .line 269
    :sswitch_2
    invoke-direct {p0, p3}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlArea(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v1

    return v1

    .line 267
    :sswitch_3
    invoke-direct {p0, p3}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlAlpha(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v1

    return v1

    .line 265
    :sswitch_4
    invoke-direct {p0, p3}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlColors(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v1

    return v1

    .line 273
    :sswitch_5
    iput-wide p1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->endTimeUs:J

    .line 274
    return v2

    .line 262
    :sswitch_6
    iput-wide p1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->startTimeUs:J

    .line 263
    return v2

    .line 277
    :sswitch_7
    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private parseControlAlpha(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 8
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 310
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const-string v1, "VobsubParser"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 311
    const-string v0, "Incomplete alpha command"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return v2

    .line 314
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    if-nez v0, :cond_1

    .line 315
    const-string v0, "Ignoring alpha command before color command"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return v2

    .line 319
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 320
    .local v0, "byte0":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 322
    .local v1, "byte1":I
    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v5, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    shr-int/lit8 v7, v0, 0x4

    invoke-static {v5, v7}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v5

    aput v5, v4, v6

    .line 323
    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v5, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    aget v5, v5, v3

    and-int/lit8 v6, v0, 0xf

    invoke-static {v5, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v5

    aput v5, v4, v3

    .line 324
    iget-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    shr-int/lit8 v6, v1, 0x4

    invoke-static {v4, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v4

    aput v4, v3, v5

    .line 325
    iget-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    aget v4, v4, v2

    and-int/lit8 v6, v1, 0xf

    invoke-static {v4, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v4

    aput v4, v3, v2

    .line 327
    return v5
.end method

.method private parseControlArea(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 13
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 335
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 336
    const-string v0, "VobsubParser"

    const-string v1, "Incomplete area command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    return v0

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 341
    .local v0, "byte0":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 342
    .local v1, "byte1":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 344
    .local v2, "byte2":I
    shl-int/lit8 v3, v0, 0x4

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    .line 345
    .local v3, "left":I
    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v2

    .line 347
    .local v4, "right":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 348
    .local v5, "byte3":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 349
    .local v6, "byte4":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 351
    .local v7, "byte5":I
    shl-int/lit8 v8, v5, 0x4

    shr-int/lit8 v9, v6, 0x4

    or-int/2addr v8, v9

    .line 352
    .local v8, "top":I
    and-int/lit8 v9, v6, 0xf

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v7

    .line 354
    .local v9, "bottom":I
    new-instance v10, Landroid/graphics/Rect;

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v12, v9, 0x1

    invoke-direct {v10, v3, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 356
    const/4 v10, 0x1

    return v10
.end method

.method private parseControlColors(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 7
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.palette"
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 289
    const-string v0, "VobsubParser"

    const-string v2, "Incomplete color command"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return v1

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 294
    .local v0, "byte0":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 296
    .local v3, "byte1":I
    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v5, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v5, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v5

    const/4 v6, 0x3

    aput v5, v4, v6

    .line 297
    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v5, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    and-int/lit8 v6, v0, 0xf

    invoke-static {v5, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v5

    aput v5, v4, v2

    .line 298
    iget-object v2, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    shr-int/lit8 v5, v3, 0x4

    invoke-static {v4, v5}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v2, v5

    .line 299
    iget-object v2, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    and-int/lit8 v6, v3, 0xf

    invoke-static {v4, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v4

    aput v4, v2, v1

    .line 300
    iput-boolean v5, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    .line 302
    return v5
.end method

.method private parseControlOffsets(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 360
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 361
    const-string v0, "VobsubParser"

    const-string v1, "Incomplete offsets command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    return v0

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 366
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method private parseControlSequence(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 8
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "spuStartPosition"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.palette"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 233
    return v2

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 237
    .local v0, "sequenceStartPosition":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    .line 238
    .local v1, "spuTimeUs":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    add-int/2addr v3, p2

    .line 239
    .local v3, "nextSequencePosition":I
    if-eq v3, v0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 241
    .local v2, "hasNextSequence":Z
    :goto_0
    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    .line 243
    .local v4, "sequenceEndPosition":I
    :goto_1
    const/4 v5, 0x1

    .line 244
    .local v5, "hasNextCommand":Z
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v4, :cond_3

    if-eqz v5, :cond_3

    .line 245
    int-to-long v6, v1

    invoke-direct {p0, v6, v7, p1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseCommand(JLandroidx/media3/common/util/ParsableByteArray;)Z

    move-result v5

    goto :goto_2

    .line 247
    :cond_3
    if-eqz v2, :cond_4

    .line 248
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 250
    :cond_4
    return v2
.end method

.method private parseRleData(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V
    .locals 10
    .param p1, "bitBuffer"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p2, "evenInterlace"    # Z
    .param p3, "boundingBox"    # Landroid/graphics/Rect;
    .param p4, "bitmapData"    # [I

    .line 420
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 421
    .local v0, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 422
    .local v1, "height":I
    const/4 v2, 0x0

    .line 423
    .local v2, "x":I
    xor-int/lit8 v3, p2, 0x1

    .line 424
    .local v3, "y":I
    mul-int v4, v3, v0

    .line 425
    .local v4, "outIndex":I
    new-instance v5, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;-><init>(Landroidx/media3/extractor/text/vobsub/VobsubParser$1;)V

    .line 428
    .local v5, "run":Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;
    :goto_0
    invoke-static {p1, v0, v5}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRun(Landroidx/media3/common/util/ParsableBitArray;ILandroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;)V

    .line 430
    iget v6, v5, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    sub-int v7, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 431
    .local v6, "length":I
    if-lez v6, :cond_0

    .line 432
    add-int v7, v4, v6

    iget-object v8, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget v9, v5, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    aget v8, v8, v9

    invoke-static {p4, v4, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 433
    add-int/2addr v4, v6

    .line 434
    add-int/2addr v2, v6

    .line 436
    :cond_0
    if-lt v2, v0, :cond_2

    .line 437
    add-int/lit8 v3, v3, 0x2

    .line 438
    if-lt v3, v1, :cond_1

    .line 439
    nop

    .line 446
    .end local v6    # "length":I
    return-void

    .line 441
    .restart local v6    # "length":I
    :cond_1
    const/4 v2, 0x0

    .line 442
    mul-int v4, v3, v0

    .line 443
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 445
    .end local v6    # "length":I
    :cond_2
    goto :goto_0
.end method

.method private static parseRun(Landroidx/media3/common/util/ParsableBitArray;ILandroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;)V
    .locals 4
    .param p0, "bitBuffer"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "width"    # I
    .param p2, "output"    # Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "value":I
    const/4 v1, 0x1

    .line 452
    .local v1, "test":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v1, :cond_1

    const/16 v3, 0x40

    if-gt v1, v3, :cond_1

    .line 453
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 454
    const/4 v2, -0x1

    iput v2, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    .line 455
    const/4 v2, 0x0

    iput v2, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    .line 456
    return-void

    .line 458
    :cond_0
    shl-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    or-int v0, v3, v2

    .line 459
    shl-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 461
    :cond_1
    and-int/lit8 v3, v0, 0x3

    iput v3, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    .line 462
    if-ge v0, v2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    shr-int/lit8 v2, v0, 0x2

    :goto_1
    iput v2, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    .line 463
    return-void
.end method

.method private parseSpuControlSequenceTable(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 198
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    const-string v1, "VobsubParser"

    if-nez v0, :cond_0

    .line 199
    const-string v0, "Skipping SPU (no palette)"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    if-nez v0, :cond_1

    .line 203
    const-string v0, "Skipping SPU (no plane)"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 208
    .local v0, "spuStartOffset":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 211
    .local v1, "controlStartOffset":I
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 214
    :cond_2
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlSequence(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v2

    .line 215
    .local v2, "hasNextSequence":Z
    if-nez v2, :cond_2

    .line 216
    return-void
.end method

.method private static setAlpha(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 331
    const v0, 0xffffff

    and-int/2addr v0, p0

    mul-int/lit8 v1, p1, 0x11

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public build(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/text/Cue;
    .locals 8
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 373
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 380
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 384
    .local v0, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 385
    .local v1, "bitmapData":[I
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 387
    .local v2, "bitBuffer":Landroidx/media3/common/util/ParsableBitArray;
    iget v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 388
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 389
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 390
    iget v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 391
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 392
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 394
    nop

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 395
    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 398
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v5}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 399
    invoke-virtual {v5, v4}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 400
    invoke-virtual {v5, v6}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    .line 401
    invoke-virtual {v5, v3}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 402
    invoke-virtual {v5, v6, v3}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    .line 403
    invoke-virtual {v5, v3}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v3

    .line 404
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v3

    .line 405
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v3

    .line 398
    return-object v3

    .line 381
    .end local v0    # "boundingBox":Landroid/graphics/Rect;
    .end local v1    # "bitmapData":[I
    .end local v2    # "bitBuffer":Landroidx/media3/common/util/ParsableBitArray;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseIdx(Ljava/lang/String;)V
    .locals 9
    .param p1, "idx"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\r?\\n"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 152
    .local v4, "line":Ljava/lang/String;
    const-string/jumbo v5, "palette: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    .line 156
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 157
    iget-object v7, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v5    # "values":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_0
    goto :goto_2

    .line 159
    :cond_1
    const-string/jumbo v5, "size: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "sizes":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    const-string v8, "VobsubParser"

    if-eq v6, v7, :cond_2

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring malformed IDX size line: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    goto :goto_3

    .line 168
    :cond_2
    :try_start_0
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    .line 169
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    .line 170
    iput-boolean v6, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_3

    .line 171
    :catch_0
    move-exception v6

    .line 172
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v7, "Parsing IDX failed"

    invoke-static {v8, v7, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 159
    .end local v5    # "sizes":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    nop

    .line 151
    .end local v4    # "line":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 176
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 2

    .line 466
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->startTimeUs:J

    .line 467
    iput-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->endTimeUs:J

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 470
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 471
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 472
    return-void
.end method
