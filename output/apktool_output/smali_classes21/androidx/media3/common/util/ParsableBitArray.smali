.class public final Landroidx/media3/common/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 49
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    .line 50
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 60
    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    .line 61
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 345
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 347
    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .line 98
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .locals 1

    .line 244
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 248
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 249
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 250
    return-void
.end method

.method public getBytePosition()I
    .locals 1

    .line 112
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 113
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 2

    .line 103
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public putInt(II)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 316
    move v0, p2

    .line 317
    .local v0, "remainingBitsToRead":I
    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge p2, v1, :cond_0

    .line 318
    shl-int v1, v2, p2

    sub-int/2addr v1, v2

    and-int/2addr p1, v1

    .line 320
    :cond_0
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 321
    .local v1, "firstByteReadSize":I
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v1

    .line 322
    .local v4, "firstByteRightPaddingSize":I
    const v5, 0xff00

    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    shr-int/2addr v5, v6

    shl-int v6, v2, v4

    sub-int/2addr v6, v2

    or-int/2addr v5, v6

    .line 323
    .local v5, "firstByteBitmask":I
    iget-object v6, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v7, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    iget-object v8, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v9, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 324
    sub-int v6, p2, v1

    ushr-int v6, p1, v6

    .line 325
    .local v6, "firstByteInputBits":I
    iget-object v7, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v8, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    iget-object v9, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v10, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v9, v9, v10

    shl-int v10, v6, v4

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 327
    sub-int/2addr v0, v1

    .line 328
    iget v7, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v7, v2

    .line 329
    .local v7, "currentByteIndex":I
    :goto_0
    nop

    .line 334
    iget-object v8, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 329
    if-le v0, v3, :cond_1

    .line 330
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "currentByteIndex":I
    .local v9, "currentByteIndex":I
    add-int/lit8 v10, v0, -0x8

    ushr-int v10, p1, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    .line 331
    add-int/lit8 v0, v0, -0x8

    move v7, v9

    goto :goto_0

    .line 333
    .end local v9    # "currentByteIndex":I
    .restart local v7    # "currentByteIndex":I
    :cond_1
    rsub-int/lit8 v3, v0, 0x8

    .line 334
    .local v3, "lastByteRightPaddingSize":I
    iget-object v9, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    aget-byte v9, v9, v7

    shl-int v10, v2, v3

    sub-int/2addr v10, v2

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    .line 336
    shl-int v8, v2, v0

    sub-int/2addr v8, v2

    and-int v2, p1, v8

    .line 337
    .local v2, "lastByteInput":I
    iget-object v8, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget-object v9, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    aget-byte v9, v9, v7

    shl-int v10, v2, v3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    .line 339
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 340
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 341
    return-void
.end method

.method public readBit()Z
    .locals 3

    .line 158
    iget-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 160
    return v0
.end method

.method public readBits(I)I
    .locals 5
    .param p1, "numBits"    # I

    .line 170
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 171
    return v0

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, "returnValue":I
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 175
    :goto_0
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 176
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 177
    iget-object v2, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v3, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v4, 0x8

    shr-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 180
    rsub-int/lit8 v2, p1, 0x20

    const/4 v4, -0x1

    ushr-int v2, v4, v2

    and-int/2addr v1, v2

    .line 181
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-ne v2, v3, :cond_2

    .line 182
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 183
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 185
    :cond_2
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 186
    return v1
.end method

.method public readBits([BII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBits"    # I

    .line 213
    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    .line 214
    .local v0, "to":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    const/16 v3, 0x8

    if-ge v1, v0, :cond_0

    .line 215
    iget-object v4, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 216
    aget-byte v4, p1, v1

    iget-object v5, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v2, v5

    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v3, v5

    shr-int/2addr v2, v3

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_0
    and-int/lit8 v1, p3, 0x7

    .line 220
    .local v1, "bitsLeft":I
    if-nez v1, :cond_1

    .line 221
    return-void

    .line 224
    :cond_1
    aget-byte v4, p1, v0

    shr-int v5, v2, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 225
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v4, v1

    if-le v4, v3, :cond_2

    .line 227
    aget-byte v4, p1, v0

    iget-object v5, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v2

    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 228
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 230
    :cond_2
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 231
    iget-object v4, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v2, v4

    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v4, 0x8

    shr-int/2addr v2, v4

    .line 232
    .local v2, "lastDataByteTrailingBits":I
    aget-byte v4, p1, v0

    rsub-int/lit8 v5, v1, 0x8

    shl-int v5, v2, v5

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 233
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-ne v4, v3, :cond_3

    .line 234
    const/4 v3, 0x0

    iput v3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 235
    iget v3, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 237
    :cond_3
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 238
    return-void
.end method

.method public readBitsToLong(I)J
    .locals 2
    .param p1, "numBits"    # I

    .line 196
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0

    .line 199
    :cond_0
    add-int/lit8 v1, p1, -0x20

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->toLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 263
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 264
    iget-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 266
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 267
    return-void
.end method

.method public readBytesAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "length"    # I

    .line 289
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 301
    new-array v0, p1, [B

    .line 302
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    .line 303
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public reset(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2
    .param p1, "parsableByteArray"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 79
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 80
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 81
    return-void
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 69
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 70
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 90
    iput-object p1, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 92
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 93
    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    .line 94
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 122
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 123
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 124
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 125
    return-void
.end method

.method public skipBit()V
    .locals 2

    .line 129
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 131
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 133
    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 134
    return-void
.end method

.method public skipBits(I)V
    .locals 3
    .param p1, "numBits"    # I

    .line 142
    div-int/lit8 v0, p1, 0x8

    .line 143
    .local v0, "numBytes":I
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 144
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v2, v0, 0x8

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 145
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 146
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 147
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 149
    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 150
    return-void
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "length"    # I

    .line 276
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 277
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 278
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->assertValidOffset()V

    .line 279
    return-void
.end method
