.class public final Landroidx/media3/extractor/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source "PictureFrame.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# instance fields
.field public final colors:I

.field public final depth:I

.field public final description:Ljava/lang/String;

.field public final height:I

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I

.field public final width:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0
    .param p1, "pictureType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "colors"    # I
    .param p8, "pictureData"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 65
    iput-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 67
    iput p4, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 68
    iput p5, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 69
    iput p6, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 70
    iput p7, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 71
    iput-object p8, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 72
    return-void
.end method

.method public static fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;
    .locals 12
    .param p0, "pictureBlock"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 130
    .local v1, "pictureType":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 131
    .local v9, "mimeTypeLength":I
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 133
    invoke-virtual {p0, v9, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 135
    .local v10, "descriptionLength":I
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "description":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 137
    .local v4, "width":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 138
    .local v5, "height":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 139
    .local v6, "depth":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 140
    .local v7, "colors":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 141
    .local v11, "pictureDataLength":I
    new-array v8, v11, [B

    .line 142
    .local v8, "pictureData":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 144
    new-instance v0, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 93
    .local v2, "other":Landroidx/media3/extractor/metadata/flac/PictureFrame;
    iget v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    iget v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    iget v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    iget v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    iget v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    iget v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    iget-object v4, v2, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 100
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 90
    .end local v2    # "other":Landroidx/media3/extractor/metadata/flac/PictureFrame;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 105
    const/16 v0, 0x11

    .line 106
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 108
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 109
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    add-int/2addr v0, v2

    .line 110
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    add-int/2addr v1, v2

    .line 111
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    add-int/2addr v0, v2

    .line 112
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/media3/common/MediaMetadata$Builder;

    .line 76
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->maybeSetArtworkData([BI)Landroidx/media3/common/MediaMetadata$Builder;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Picture: mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
