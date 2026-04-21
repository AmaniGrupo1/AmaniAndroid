.class public final Landroidx/media3/common/util/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private capacityBitmask:I

.field private elements:[I

.field private head:I

.field private tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x7

    iput v0, p0, Landroidx/media3/common/util/CircularIntArray;->capacityBitmask:I

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    .line 41
    return-void
.end method

.method private doubleCapacity()V
    .locals 7

    .line 77
    iget-object v0, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    array-length v0, v0

    .line 78
    .local v0, "n":I
    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    sub-int v1, v0, v1

    .line 79
    .local v1, "r":I
    shl-int/lit8 v2, v0, 0x1

    .line 80
    .local v2, "newCapacity":I
    new-array v3, v2, [I

    .line 81
    .local v3, "a":[I
    iget-object v4, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    iget v5, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v4, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    iget v5, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v3, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    .line 84
    iput v6, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    .line 85
    iput v0, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    .line 86
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroidx/media3/common/util/CircularIntArray;->capacityBitmask:I

    .line 87
    return-void
.end method


# virtual methods
.method public addLast(I)V
    .locals 2
    .param p1, "e"    # I

    .line 49
    iget-object v0, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    aput p1, v0, v1

    .line 50
    iget v0, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->capacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    .line 51
    iget v0, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    if-ne v0, v1, :cond_0

    .line 52
    invoke-direct {p0}, Landroidx/media3/common/util/CircularIntArray;->doubleCapacity()V

    .line 54
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 68
    iget v0, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    iput v0, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    .line 69
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 73
    iget v0, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popFirst()I
    .locals 3

    .line 58
    iget v0, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->tail:I

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Landroidx/media3/common/util/CircularIntArray;->elements:[I

    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    aget v0, v0, v1

    .line 62
    .local v0, "result":I
    iget v1, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/media3/common/util/CircularIntArray;->capacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/util/CircularIntArray;->head:I

    .line 63
    return v0

    .line 59
    .end local v0    # "result":I
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
