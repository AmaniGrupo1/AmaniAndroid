.class final Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;
.super Ljava/lang/Object;
.source "BundleableByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/BundleableByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitArrayRetriever"
.end annotation


# static fields
.field private static final BUNDLE_KEY:Ljava/lang/String; = "bytes"

.field private static final CHUNK_SIZE:I


# instance fields
.field private final bundleListRetriever:Landroidx/media3/common/BundleListRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    sget v0, Landroidx/media3/common/C;->SUGGESTED_MAX_IPC_SIZE:I

    sput v0, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    return-void
.end method

.method private constructor <init>([B)V
    .locals 8
    .param p1, "byteArray"    # [B

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 180
    .local v0, "splitListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    array-length v1, p1

    sget v2, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    .line 181
    .local v1, "chunkCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 182
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v3, "bundle":Landroid/os/Bundle;
    sget v4, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    mul-int/2addr v4, v2

    .line 184
    .local v4, "from":I
    sget v5, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    add-int/2addr v5, v4

    array-length v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 185
    .local v5, "to":I
    const-string v6, "bytes"

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 186
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 181
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "from":I
    .end local v5    # "to":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroidx/media3/common/BundleListRetriever;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->bundleListRetriever:Landroidx/media3/common/BundleListRetriever;

    .line 189
    return-void
.end method

.method synthetic constructor <init>([BLandroidx/media3/common/BundleableByteArray$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Landroidx/media3/common/BundleableByteArray$1;

    .line 171
    invoke-direct {p0, p1}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;-><init>([B)V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 171
    invoke-direct {p0, p1}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->writeToBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Landroid/os/Bundle;)[B
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 171
    invoke-static {p0}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->readFromBundle(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0
.end method

.method private static readFromBundle(Landroid/os/Bundle;)[B
    .locals 12
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 197
    invoke-static {}, Landroidx/media3/common/BundleableByteArray;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 198
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    return-object v1

    .line 203
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v2, "list":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/os/Bundle;>;"
    nop

    .line 208
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 211
    :cond_1
    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "bytes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 212
    .local v3, "lastByteArray":[B
    if-nez v3, :cond_2

    .line 213
    return-object v1

    .line 215
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 216
    .local v5, "fullChunkCount":I
    sget v6, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    mul-int/2addr v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 217
    .local v6, "outArray":[B
    sget v7, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    mul-int/2addr v7, v5

    array-length v8, v3

    const/4 v9, 0x0

    invoke-static {v3, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 220
    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 221
    .local v8, "chunk":[B
    if-eqz v8, :cond_4

    array-length v10, v8

    sget v11, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    if-eq v10, v11, :cond_3

    goto :goto_1

    .line 224
    :cond_3
    sget v10, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    mul-int/2addr v10, v7

    sget v11, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->CHUNK_SIZE:I

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    .end local v8    # "chunk":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 222
    .restart local v8    # "chunk":[B
    :cond_4
    :goto_1
    return-object v1

    .line 226
    .end local v7    # "i":I
    .end local v8    # "chunk":[B
    :cond_5
    return-object v6

    .line 204
    .end local v2    # "list":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/os/Bundle;>;"
    .end local v3    # "lastByteArray":[B
    .end local v5    # "fullChunkCount":I
    .end local v6    # "outArray":[B
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "BundleableByteArray"

    const-string v4, "Failed to read byte array from bundle list retriever"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-object v1
.end method

.method private writeToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 192
    invoke-static {}, Landroidx/media3/common/BundleableByteArray;->access$900()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->bundleListRetriever:Landroidx/media3/common/BundleListRetriever;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    return-void
.end method
