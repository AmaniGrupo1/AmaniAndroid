.class final Landroidx/media3/datasource/cache/CachedContent$Range;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cache/CachedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Range"
.end annotation


# instance fields
.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-wide p1, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    .line 292
    iput-wide p3, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->length:J

    .line 293
    return-void
.end method


# virtual methods
.method public contains(JJ)Z
    .locals 9
    .param p1, "otherPosition"    # J
    .param p3, "otherLength"    # J

    .line 304
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 305
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    .line 306
    :cond_1
    cmp-long v0, p3, v2

    if-nez v0, :cond_2

    .line 307
    return v4

    .line 309
    :cond_2
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    cmp-long v0, v2, p1

    if-gtz v0, :cond_3

    add-long v2, p1, p3

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    iget-wide v7, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->length:J

    add-long/2addr v5, v7

    cmp-long v0, v2, v5

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    return v1
.end method

.method public intersects(JJ)Z
    .locals 7
    .param p1, "otherPosition"    # J
    .param p3, "otherLength"    # J

    .line 322
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    if-gtz v0, :cond_2

    .line 323
    iget-wide v5, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->length:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v3, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->length:J

    add-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-lez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 325
    :cond_2
    cmp-long v0, p3, v3

    if-eqz v0, :cond_3

    add-long v3, p1, p3

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method
