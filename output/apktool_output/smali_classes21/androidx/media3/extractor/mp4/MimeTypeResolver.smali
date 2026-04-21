.class final Landroidx/media3/extractor/mp4/MimeTypeResolver;
.super Ljava/lang/Object;
.source "MimeTypeResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContainerMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 46
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 48
    .local v0, "sampleMimeType":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string/jumbo v1, "video/mp4"

    return-object v1

    .line 52
    :cond_0
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "audio/mp4"

    return-object v1

    .line 56
    :cond_1
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    const-string v1, "image/heic"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "image/heif"

    return-object v1

    .line 59
    :cond_2
    const-string v1, "image/avif"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    return-object v1

    .line 64
    :cond_3
    const-string v1, "application/mp4"

    return-object v1
.end method

.method public static getContainerMimeType(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/TrackSampleTable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 83
    .local p0, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "hasAudio":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "imageMimeType":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 87
    .local v3, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 89
    .local v4, "sampleMimeType":Ljava/lang/String;
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    const-string/jumbo v2, "video/mp4"

    return-object v2

    .line 93
    :cond_0
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const/4 v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    const-string v5, "image/heic"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    const-string v1, "image/heif"

    goto :goto_1

    .line 98
    :cond_2
    const-string v5, "image/avif"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    const-string v1, "image/avif"

    .line 102
    .end local v3    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v4    # "sampleMimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 104
    :cond_4
    if-eqz v0, :cond_5

    .line 105
    const-string v2, "audio/mp4"

    return-object v2

    .line 106
    :cond_5
    if-eqz v1, :cond_6

    .line 107
    return-object v1

    .line 110
    :cond_6
    const-string v2, "application/mp4"

    return-object v2
.end method
