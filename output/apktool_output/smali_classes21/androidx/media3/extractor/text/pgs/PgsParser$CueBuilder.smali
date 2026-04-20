.class final Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
.super Ljava/lang/Object;
.source "PgsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/pgs/PgsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# instance fields
.field private final bitmapData:Landroidx/media3/common/util/ParsableByteArray;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private final colors:[I

.field private colorsSet:Z

.field private planeHeight:I

.field private planeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    .line 145
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    .line 146
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
    .param p1, "x1"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 130
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->parsePaletteSection(Landroidx/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
    .param p1, "x1"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 130
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->parseBitmapSection(Landroidx/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
    .param p1, "x1"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 130
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->parseIdentifierSection(Landroidx/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method private parseBitmapSection(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 176
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 180
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 181
    .local v1, "isBaseSection":Z
    :goto_0
    add-int/lit8 p2, p2, -0x4

    .line 183
    if-eqz v1, :cond_4

    .line 184
    const/4 v2, 0x7

    if-ge p2, v2, :cond_2

    .line 185
    return-void

    .line 187
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 188
    .local v2, "totalLength":I
    if-ge v2, v0, :cond_3

    .line 189
    return-void

    .line 191
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    .line 192
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    .line 193
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 194
    add-int/lit8 p2, p2, -0x7

    .line 197
    .end local v2    # "totalLength":I
    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 198
    .local v0, "position":I
    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 199
    .local v2, "limit":I
    if-ge v0, v2, :cond_5

    if-lez p2, :cond_5

    .line 200
    sub-int v3, v2, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 201
    .local v3, "bytesToRead":I
    iget-object v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {p1, v4, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 202
    iget-object v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    add-int v5, v0, v3

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 204
    .end local v3    # "bytesToRead":I
    :cond_5
    return-void
.end method

.method private parseIdentifierSection(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 207
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    .line 211
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    .line 212
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 213
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    .line 214
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    .line 215
    return-void
.end method

.method private parsePaletteSection(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 18
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 149
    move-object/from16 v0, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 155
    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 156
    div-int/lit8 v2, p2, 0x5

    .line 157
    .local v2, "entryCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 158
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 159
    .local v5, "index":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 160
    .local v6, "y":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 161
    .local v7, "cr":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 162
    .local v8, "cb":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 163
    .local v9, "a":I
    int-to-double v10, v6

    add-int/lit8 v12, v7, -0x80

    int-to-double v12, v12

    const-wide v14, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v10, v10

    .line 164
    .local v10, "r":I
    int-to-double v11, v6

    add-int/lit8 v13, v8, -0x80

    int-to-double v13, v13

    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    add-int/lit8 v13, v7, -0x80

    int-to-double v13, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    double-to-int v11, v11

    .line 165
    .local v11, "g":I
    int-to-double v12, v6

    add-int/lit8 v14, v8, -0x80

    int-to-double v14, v14

    const-wide v16, 0x3ffc5a1cac083127L    # 1.772

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v12, v12

    .line 166
    .local v12, "b":I
    iget-object v13, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    shl-int/lit8 v14, v9, 0x18

    .line 168
    const/16 v15, 0xff

    invoke-static {v10, v3, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v16

    shl-int/lit8 v16, v16, 0x10

    or-int v14, v14, v16

    .line 169
    invoke-static {v11, v3, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v16

    shl-int/lit8 v16, v16, 0x8

    or-int v14, v14, v16

    .line 170
    invoke-static {v12, v3, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v15

    or-int/2addr v14, v15

    aput v14, v13, v5

    .line 157
    .end local v5    # "index":I
    .end local v6    # "y":I
    .end local v7    # "cr":I
    .end local v8    # "cb":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v4    # "i":I
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    .line 173
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/text/Cue;
    .locals 8

    .line 219
    iget v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    .line 223
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    .line 224
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 229
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 230
    iget v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iget v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    .line 231
    .local v0, "argbBitmapData":[I
    const/4 v2, 0x0

    .line 232
    .local v2, "argbBitmapDataIndex":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 233
    iget-object v3, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 234
    .local v3, "colorIndex":I
    if-eqz v3, :cond_1

    .line 235
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argbBitmapDataIndex":I
    .local v4, "argbBitmapDataIndex":I
    iget-object v5, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    aget v5, v5, v3

    aput v5, v0, v2

    move v2, v4

    goto :goto_3

    .line 237
    .end local v4    # "argbBitmapDataIndex":I
    .restart local v2    # "argbBitmapDataIndex":I
    :cond_1
    iget-object v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 238
    .local v4, "switchBits":I
    if-eqz v4, :cond_4

    .line 240
    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_2

    .line 241
    and-int/lit8 v5, v4, 0x3f

    goto :goto_1

    .line 242
    :cond_2
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    :goto_1
    nop

    .line 244
    .local v5, "runLength":I
    and-int/lit16 v6, v4, 0x80

    iget-object v7, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    if-nez v6, :cond_3

    aget v6, v7, v1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    aget v6, v7, v6

    .line 245
    .local v6, "color":I
    :goto_2
    add-int v7, v2, v5

    invoke-static {v0, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 247
    add-int/2addr v2, v5

    .line 250
    .end local v3    # "colorIndex":I
    .end local v4    # "switchBits":I
    .end local v5    # "runLength":I
    .end local v6    # "color":I
    :cond_4
    :goto_3
    goto :goto_0

    .line 251
    :cond_5
    iget v3, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iget v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 252
    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 254
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v4}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 255
    invoke-virtual {v4, v3}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v4

    iget v5, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    int-to-float v5, v5

    iget v6, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 256
    invoke-virtual {v4, v5}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v4

    .line 257
    invoke-virtual {v4, v1}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v4

    iget v5, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    int-to-float v5, v5

    iget v6, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 258
    invoke-virtual {v4, v5, v1}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v4

    .line 259
    invoke-virtual {v4, v1}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 260
    invoke-virtual {v1, v4}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 261
    invoke-virtual {v1, v4}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v1

    .line 254
    return-object v1

    .line 226
    .end local v0    # "argbBitmapData":[I
    .end local v2    # "argbBitmapDataIndex":I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    .line 267
    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    .line 268
    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    .line 269
    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    .line 270
    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    .line 271
    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    .line 272
    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 273
    iput-boolean v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    .line 274
    return-void
.end method
