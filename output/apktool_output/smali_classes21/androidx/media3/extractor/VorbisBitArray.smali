.class public final Landroidx/media3/extractor/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private final byteLimit:I

.field private byteOffset:I

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    .line 45
    array-length v0, p1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    .line 46
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 123
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 125
    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .line 118
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .line 102
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .line 60
    iget-object v0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 62
    return v0
.end method

.method public readBits(I)I
    .locals 6
    .param p1, "numBits"    # I

    .line 72
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 73
    .local v0, "tempByteOffset":I
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 74
    .local v1, "bitsRead":I
    iget-object v2, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempByteOffset":I
    .local v3, "tempByteOffset":I
    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    .line 75
    .local v0, "returnValue":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 76
    iget-object v4, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "tempByteOffset":I
    .local v5, "tempByteOffset":I
    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 77
    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_0

    .line 79
    .end local v5    # "tempByteOffset":I
    .restart local v3    # "tempByteOffset":I
    :cond_0
    rsub-int/lit8 v2, p1, 0x20

    const/4 v4, -0x1

    ushr-int v2, v4, v2

    and-int/2addr v0, v2

    .line 80
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 81
    return v0
.end method

.method public reset()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 51
    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    .line 52
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 111
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 112
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    .line 113
    invoke-direct {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    .line 114
    return-void
.end method

.method public skipBits(I)V
    .locals 3
    .param p1, "numBits"    # I

    .line 90
    div-int/lit8 v0, p1, 0x8

    .line 91
    .local v0, "numBytes":I
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 92
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v2, v0, 0x8

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    .line 93
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 94
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 95
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    .line 97
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    .line 98
    return-void
.end method
