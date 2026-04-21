.class public Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 48
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "randomSeed"    # J

    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 59
    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "random"    # Ljava/util/Random;

    .line 73
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    .line 74
    return-void
.end method

.method public constructor <init>([IJ)V
    .locals 2
    .param p1, "shuffledIndices"    # [I
    .param p2, "randomSeed"    # J

    .line 69
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    .line 70
    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .locals 3
    .param p1, "shuffled"    # [I
    .param p2, "random"    # Ljava/util/Random;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 78
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 79
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v2, p1, v0

    aput v0, v1, v2

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .locals 4
    .param p0, "length"    # I
    .param p1, "random"    # Ljava/util/Random;

    .line 162
    new-array v0, p0, [I

    .line 163
    .local v0, "shuffled":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 164
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 165
    .local v2, "swapIndex":I
    aget v3, v0, v2

    aput v3, v0, v1

    .line 166
    aput v1, v0, v2

    .line 163
    .end local v2    # "swapIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 4

    .line 158
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 9
    .param p1, "insertionIndex"    # I
    .param p2, "insertionCount"    # I

    .line 114
    new-array v0, p2, [I

    .line 115
    .local v0, "insertionPoints":[I
    new-array v1, p2, [I

    .line 116
    .local v1, "insertionValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 117
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 118
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 119
    .local v3, "swapIndex":I
    aget v4, v1, v3

    aput v4, v1, v2

    .line 120
    add-int v4, v2, p1

    aput v4, v1, v3

    .line 116
    .end local v3    # "swapIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 123
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v2, v2

    add-int/2addr v2, p2

    new-array v2, v2, [I

    .line 124
    .local v2, "newShuffled":[I
    const/4 v3, 0x0

    .line 125
    .local v3, "indexInOldShuffled":I
    const/4 v4, 0x0

    .line 126
    .local v4, "indexInInsertionList":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v6, v6

    add-int/2addr v6, p2

    if-ge v5, v6, :cond_3

    .line 127
    if-ge v4, p2, :cond_1

    aget v6, v0, v4

    if-ne v3, v6, :cond_1

    .line 129
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "indexInInsertionList":I
    .local v6, "indexInInsertionList":I
    aget v4, v1, v4

    aput v4, v2, v5

    move v4, v6

    goto :goto_2

    .line 131
    .end local v6    # "indexInInsertionList":I
    .restart local v4    # "indexInInsertionList":I
    :cond_1
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "indexInOldShuffled":I
    .local v7, "indexInOldShuffled":I
    aget v3, v6, v3

    aput v3, v2, v5

    .line 132
    aget v3, v2, v5

    if-lt v3, p1, :cond_2

    .line 133
    aget v3, v2, v5

    add-int/2addr v3, p2

    aput v3, v2, v5

    .line 126
    :cond_2
    move v3, v7

    .end local v7    # "indexInOldShuffled":I
    .restart local v3    # "indexInOldShuffled":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v6, Ljava/util/Random;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v5, v2, v6}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object v5
.end method

.method public cloneAndRemove(II)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 7
    .param p1, "indexFrom"    # I
    .param p2, "indexToExclusive"    # I

    .line 142
    sub-int v0, p2, p1

    .line 143
    .local v0, "numberOfElementsToRemove":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    .line 144
    .local v1, "newShuffled":[I
    const/4 v2, 0x0

    .line 145
    .local v2, "foundElementsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 146
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v4, v4, v3

    if-lt v4, p1, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v4, v4, v3

    if-ge v4, p2, :cond_0

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    :cond_0
    sub-int v4, v3, v2

    .line 150
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    if-lt v5, p1, :cond_1

    aget v5, v6, v3

    sub-int/2addr v5, v0

    goto :goto_1

    :cond_1
    aget v5, v6, v3

    :goto_1
    aput v5, v1, v4

    .line 145
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v4, Ljava/util/Random;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v3, v1, v4}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object v3
.end method

.method public getFirstIndex()I
    .locals 2

    .line 109
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLastIndex()I
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    return v0
.end method

.method public getNextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v0, v0, p1

    .line 93
    .local v0, "shuffledIndex":I
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getPreviousIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 98
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v0, v0, p1

    .line 99
    .local v0, "shuffledIndex":I
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v1, v1, v0

    :cond_0
    return v1
.end method
