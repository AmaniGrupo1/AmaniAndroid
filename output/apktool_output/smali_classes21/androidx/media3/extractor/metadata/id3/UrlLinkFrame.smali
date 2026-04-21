.class public final Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "UrlLinkFrame.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    .line 44
    .local v2, "other":Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;
    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    .line 45
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    .line 46
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 44
    :goto_0
    return v0

    .line 41
    .end local v2    # "other":Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 51
    const/16 v0, 0x11

    .line 52
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 54
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v1, v3

    .line 55
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
