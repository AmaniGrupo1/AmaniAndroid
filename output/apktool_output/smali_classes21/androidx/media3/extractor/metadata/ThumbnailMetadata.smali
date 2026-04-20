.class public final Landroidx/media3/extractor/metadata/ThumbnailMetadata;
.super Ljava/lang/Object;
.source "ThumbnailMetadata.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# instance fields
.field public final presentationTimeUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "presentationTimeUs"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    .line 48
    .local v2, "that":Landroidx/media3/extractor/metadata/ThumbnailMetadata;
    iget-wide v3, p0, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    iget-wide v5, v2, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 45
    .end local v2    # "that":Landroidx/media3/extractor/metadata/ThumbnailMetadata;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 53
    const/16 v0, 0x11

    .line 54
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 55
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailMetadata: presentationTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
