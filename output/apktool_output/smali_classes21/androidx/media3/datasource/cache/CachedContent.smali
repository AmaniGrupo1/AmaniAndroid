.class final Landroidx/media3/datasource/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CachedContent$Range;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedContent"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/datasource/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private final lockedRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/datasource/cache/CachedContent$Range;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 58
    sget-object v0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->EMPTY:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/cache/CachedContent;-><init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "metadata"    # Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    .line 63
    iput-object p2, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 65
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 67
    return-void
.end method


# virtual methods
.method public addSpan(Landroidx/media3/datasource/cache/SimpleCacheSpan;)V
    .locals 1
    .param p1, "span"    # Landroidx/media3/datasource/cache/SimpleCacheSpan;

    .line 141
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public applyMetadataMutations(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Z
    .locals 2
    .param p1, "mutations"    # Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 80
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 81
    .local v0, "oldMetadata":Landroidx/media3/datasource/cache/DefaultContentMetadata;
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {v1, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->copyWithMutationsApplied(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 82
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 269
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 270
    return v0

    .line 272
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 275
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/datasource/cache/CachedContent;

    .line 276
    .local v2, "that":Landroidx/media3/datasource/cache/CachedContent;
    iget v3, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    iget v4, v2, Landroidx/media3/datasource/cache/CachedContent;->id:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    iget-object v4, v2, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 278
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    iget-object v4, v2, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 279
    invoke-virtual {v3, v4}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 276
    :goto_0
    return v0

    .line 273
    .end local v2    # "that":Landroidx/media3/datasource/cache/CachedContent;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCachedBytesLength(JJ)J
    .locals 11
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 184
    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 185
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent;->getSpan(JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v2

    .line 186
    .local v2, "span":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    invoke-virtual {v2}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->isHoleSpan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    invoke-virtual {v2}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->isOpenEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_2

    :cond_2
    iget-wide v0, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    :goto_2
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0

    .line 190
    :cond_3
    add-long v5, p1, p3

    .line 191
    .local v5, "queryEndPosition":J
    cmp-long v0, v5, v0

    if-gez v0, :cond_4

    .line 193
    const-wide v5, 0x7fffffffffffffffL

    .line 195
    :cond_4
    iget-wide v0, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v7, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v7

    .line 196
    .local v0, "currentEndPosition":J
    cmp-long v3, v0, v5

    if-gez v3, :cond_7

    .line 197
    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    .line 198
    .local v4, "next":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    iget-wide v7, v4, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    cmp-long v7, v7, v0

    if-lez v7, :cond_5

    .line 200
    goto :goto_4

    .line 204
    :cond_5
    iget-wide v7, v4, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v9, v4, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    add-long/2addr v7, v9

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 205
    cmp-long v7, v0, v5

    if-ltz v7, :cond_6

    .line 207
    goto :goto_4

    .line 209
    .end local v4    # "next":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    :cond_6
    goto :goto_3

    .line 211
    :cond_7
    :goto_4
    sub-long v3, v0, p1

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    return-wide v3
.end method

.method public getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    return-object v0
.end method

.method public getSpan(JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 7
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 158
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v0

    .line 159
    .local v0, "lookupSpan":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    .line 160
    .local v1, "floorSpan":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v4, v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 161
    return-object v1

    .line 163
    :cond_0
    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    .line 164
    .local v2, "ceilSpan":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    if-eqz v2, :cond_2

    .line 165
    iget-wide v3, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v3, p1

    .line 166
    .local v3, "holeLength":J
    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_0
    move-wide p3, v5

    .line 168
    .end local v3    # "holeLength":J
    :cond_2
    iget-object v3, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v3, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->createHole(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v3

    return-object v3
.end method

.method public getSpans()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Landroidx/media3/datasource/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 261
    iget v0, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    .line 262
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 263
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {v2}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 264
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFullyLocked(JJ)Z
    .locals 2
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent$Range;->contains(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyUnlocked()Z
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lockRange(JJ)Z
    .locals 3
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 119
    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 114
    if-ge v0, v1, :cond_1

    .line 115
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent$Range;->intersects(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x0

    return v1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent$Range;-><init>(JJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public removeSpan(Landroidx/media3/datasource/cache/CacheSpan;)Z
    .locals 1
    .param p1, "span"    # Landroidx/media3/datasource/cache/CacheSpan;

    .line 250
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p1, Landroidx/media3/datasource/cache/CacheSpan;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p1, Landroidx/media3/datasource/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 254
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setLastTouchTimestamp(Landroidx/media3/datasource/cache/SimpleCacheSpan;JZ)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 8
    .param p1, "cacheSpan"    # Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .param p2, "lastTouchTimestamp"    # J
    .param p4, "updateFile"    # Z

    .line 225
    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 226
    iget-object v0, p1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 227
    .local v0, "file":Ljava/io/File;
    if-eqz p4, :cond_1

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    .line 229
    .local v2, "directory":Ljava/io/File;
    iget-wide v4, p1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    .line 230
    .local v4, "position":J
    iget v3, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    move-wide v6, p2

    .end local p2    # "lastTouchTimestamp":J
    .local v6, "lastTouchTimestamp":J
    invoke-static/range {v2 .. v7}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p2

    .line 231
    .local p2, "newFile":Ljava/io/File;
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 232
    move-object v0, p2

    goto :goto_0

    .line 234
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to rename "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " to "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "CachedContent"

    invoke-static {v1, p3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v2    # "directory":Ljava/io/File;
    .end local v4    # "position":J
    .end local v6    # "lastTouchTimestamp":J
    .local p2, "lastTouchTimestamp":J
    :cond_1
    move-wide v6, p2

    .line 237
    .end local p2    # "lastTouchTimestamp":J
    .restart local v6    # "lastTouchTimestamp":J
    :goto_0
    nop

    .line 238
    invoke-virtual {p1, v0, v6, v7}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->copyWithFileAndLastTouchTimestamp(Ljava/io/File;J)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object p2

    .line 239
    .local p2, "newCacheSpan":Landroidx/media3/datasource/cache/SimpleCacheSpan;
    iget-object p3, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {p3, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 240
    return-object p2
.end method

.method public unlockRange(J)V
    .locals 3
    .param p1, "position"    # J

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent$Range;

    iget-wide v1, v1, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    return-void

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
