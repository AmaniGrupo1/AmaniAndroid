.class public final Landroidx/media3/extractor/metadata/id3/BinaryFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "BinaryFrame.java"


# instance fields
.field public final data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 29
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->data:[B

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 36
    return v0

    .line 38
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    .line 42
    .local v2, "other":Landroidx/media3/extractor/metadata/id3/BinaryFrame;
    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->data:[B

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 39
    .end local v2    # "other":Landroidx/media3/extractor/metadata/id3/BinaryFrame;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 47
    const/16 v0, 0x11

    .line 48
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 49
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
