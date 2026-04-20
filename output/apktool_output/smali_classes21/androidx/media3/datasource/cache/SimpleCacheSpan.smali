.class final Landroidx/media3/datasource/cache/SimpleCacheSpan;
.super Landroidx/media3/datasource/cache/CacheSpan;
.source "SimpleCacheSpan.java"


# static fields
.field private static final CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

.field private static final CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

.field private static final CACHE_FILE_PATTERN_V3:Ljava/util/regex/Pattern;

.field static final COMMON_SUFFIX:Ljava/lang/String; = ".exo"

.field private static final SUFFIX:Ljava/lang/String; = ".v3.exo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    nop

    .line 35
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

    .line 36
    nop

    .line 37
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

    .line 38
    nop

    .line 39
    const-string v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V3:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .param p6, "lastTouchTimestamp"    # J
    .param p8, "file"    # Ljava/io/File;

    .line 193
    invoke-direct/range {p0 .. p8}, Landroidx/media3/datasource/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 194
    return-void
.end method

.method public static createCacheEntry(Ljava/io/File;JJLandroidx/media3/datasource/cache/CachedContentIndex;)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "length"    # J
    .param p3, "lastTouchTimestamp"    # J
    .param p5, "index"    # Landroidx/media3/datasource/cache/CachedContentIndex;

    .line 110
    move-object/from16 v0, p5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "name":Ljava/lang/String;
    const-string v2, ".v3.exo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 112
    invoke-static {p0, v0}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->upgradeFile(Ljava/io/File;Landroidx/media3/datasource/cache/CachedContentIndex;)Ljava/io/File;

    move-result-object v2

    .line 113
    .local v2, "upgradedFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 114
    return-object v3

    .line 116
    :cond_0
    move-object p0, v2

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v12, p0

    goto :goto_0

    .line 111
    .end local v2    # "upgradedFile":Ljava/io/File;
    :cond_1
    move-object v12, p0

    .line 120
    .end local p0    # "file":Ljava/io/File;
    .local v12, "file":Ljava/io/File;
    :goto_0
    sget-object p0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V3:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 121
    .local p0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    return-object v3

    .line 125
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "id":I
    invoke-virtual {v0, v2}, Landroidx/media3/datasource/cache/CachedContentIndex;->getKeyForId(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "key":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 128
    return-object v3

    .line 131
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-nez v4, :cond_4

    .line 132
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    move-wide v8, v6

    .end local p1    # "length":J
    .local v6, "length":J
    goto :goto_1

    .line 131
    .end local v6    # "length":J
    .restart local p1    # "length":J
    :cond_4
    move-wide v8, p1

    .line 134
    .end local p1    # "length":J
    .local v8, "length":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-nez v4, :cond_5

    .line 135
    return-object v3

    .line 138
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 139
    .local v6, "position":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v3

    if-nez v3, :cond_6

    .line 140
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v10, v3

    .end local p3    # "lastTouchTimestamp":J
    .local v3, "lastTouchTimestamp":J
    goto :goto_2

    .line 139
    .end local v3    # "lastTouchTimestamp":J
    .restart local p3    # "lastTouchTimestamp":J
    :cond_6
    move-wide/from16 v10, p3

    .line 142
    .end local p3    # "lastTouchTimestamp":J
    .local v10, "lastTouchTimestamp":J
    :goto_2
    new-instance v4, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    invoke-direct/range {v4 .. v12}, Landroidx/media3/datasource/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v4
.end method

.method public static createCacheEntry(Ljava/io/File;JLandroidx/media3/datasource/cache/CachedContentIndex;)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "length"    # J
    .param p3, "index"    # Landroidx/media3/datasource/cache/CachedContentIndex;

    .line 91
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "length":J
    .end local p3    # "index":Landroidx/media3/datasource/cache/CachedContentIndex;
    .local v0, "file":Ljava/io/File;
    .local v1, "length":J
    .local v5, "index":Landroidx/media3/datasource/cache/CachedContentIndex;
    invoke-static/range {v0 .. v5}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;JJLandroidx/media3/datasource/cache/CachedContentIndex;)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object p0

    return-object p0
.end method

.method public static createHole(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 75
    new-instance v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p0    # "key":Ljava/lang/String;
    .end local p1    # "position":J
    .end local p3    # "length":J
    .local v1, "key":Ljava/lang/String;
    .local v2, "position":J
    .local v4, "length":J
    invoke-direct/range {v0 .. v8}, Landroidx/media3/datasource/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static createLookup(Ljava/lang/String;J)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J

    .line 63
    new-instance v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    .end local p0    # "key":Ljava/lang/String;
    .end local p1    # "position":J
    .local v1, "key":Ljava/lang/String;
    .local v2, "position":J
    invoke-direct/range {v0 .. v8}, Landroidx/media3/datasource/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "id"    # I
    .param p2, "position"    # J
    .param p4, "timestamp"    # J

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".v3.exo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static upgradeFile(Ljava/io/File;Landroidx/media3/datasource/cache/CachedContentIndex;)Ljava/io/File;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "index"    # Landroidx/media3/datasource/cache/CachedContentIndex;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "filename":Ljava/lang/String;
    sget-object v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 158
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->unescapeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    sget-object v3, Landroidx/media3/datasource/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 167
    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 168
    return-object v3

    .line 171
    :cond_2
    nop

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/io/File;

    .line 174
    invoke-virtual {p1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex;->assignIdForKey(Ljava/lang/String;)I

    move-result v6

    .line 175
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 176
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 172
    invoke-static/range {v5 .. v10}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v4

    .line 177
    .local v4, "newCacheFile":Ljava/io/File;
    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 178
    return-object v3

    .line 180
    :cond_3
    return-object v4
.end method


# virtual methods
.method public copyWithFileAndLastTouchTimestamp(Ljava/io/File;J)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "lastTouchTimestamp"    # J

    .line 205
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->isCached:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 206
    new-instance v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v5, p0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    move-object v9, p1

    move-wide v7, p2

    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "lastTouchTimestamp":J
    .local v7, "lastTouchTimestamp":J
    .local v9, "file":Ljava/io/File;
    invoke-direct/range {v1 .. v9}, Landroidx/media3/datasource/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v1
.end method
