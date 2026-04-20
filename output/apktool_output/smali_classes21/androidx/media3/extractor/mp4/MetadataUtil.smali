.class final Landroidx/media3/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final SHORT_TYPE_ALBUM:I = 0x616c62

.field private static final SHORT_TYPE_ARTIST:I = 0x415254

.field private static final SHORT_TYPE_COMMENT:I = 0x636d74

.field private static final SHORT_TYPE_COMPOSER_1:I = 0x636f6d

.field private static final SHORT_TYPE_COMPOSER_2:I = 0x777274

.field private static final SHORT_TYPE_ENCODER:I = 0x746f6f

.field private static final SHORT_TYPE_GENRE:I = 0x67656e

.field private static final SHORT_TYPE_LYRICS:I = 0x6c7972

.field private static final SHORT_TYPE_MOVEMENT_INDEX:I = 0x6d7669

.field private static final SHORT_TYPE_MOVEMENT_NAME:I = 0x6d766e

.field private static final SHORT_TYPE_NAME_1:I = 0x6e616d

.field private static final SHORT_TYPE_NAME_2:I = 0x74726b

.field private static final SHORT_TYPE_YEAR:I = 0x646179

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I = 0x61415254

.field private static final TYPE_COMPILATION:I = 0x6370696c

.field private static final TYPE_COVER_ART:I = 0x636f7672

.field private static final TYPE_DISK_NUMBER:I = 0x6469736b

.field private static final TYPE_GAPLESS_ALBUM:I = 0x70676170

.field private static final TYPE_GENRE:I = 0x676e7265

.field private static final TYPE_GROUPING:I = 0x677270

.field private static final TYPE_INTERNAL:I = 0x2d2d2d2d

.field private static final TYPE_RATING:I = 0x72746e67

.field private static final TYPE_SORT_ALBUM:I = 0x736f616c

.field private static final TYPE_SORT_ALBUM_ARTIST:I = 0x736f6161

.field private static final TYPE_SORT_ARTIST:I = 0x736f6172

.field private static final TYPE_SORT_COMPOSER:I = 0x736f636f

.field private static final TYPE_SORT_TRACK_NAME:I = 0x736f6e6d

.field private static final TYPE_TEMPO:I = 0x746d706f

.field private static final TYPE_TOP_BYTE_COPYRIGHT:I = 0xa9

.field private static final TYPE_TOP_BYTE_REPLACEMENT:I = 0xfd

.field private static final TYPE_TRACK_NUMBER:I = 0x74726b6e

.field private static final TYPE_TV_SHOW:I = 0x74767368

.field private static final TYPE_TV_SORT_SHOW:I = 0x736f736e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 4
    .param p0, "metadata"    # Landroidx/media3/common/Metadata;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    invoke-virtual {p0, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    .line 265
    .local v1, "entry":Landroidx/media3/common/Metadata$Entry;
    instance-of v2, v1, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v1

    check-cast v2, Landroidx/media3/container/MdtaMetadataEntry;

    .line 267
    .local v2, "mdtaMetadataEntry":Landroidx/media3/container/MdtaMetadataEntry;
    iget-object v3, v2, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    return-object v2

    .line 263
    .end local v1    # "entry":Landroidx/media3/common/Metadata$Entry;
    .end local v2    # "mdtaMetadataEntry":Landroidx/media3/container/MdtaMetadataEntry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseCommentAttribute(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;
    .locals 5
    .param p0, "type"    # I
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 291
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 292
    .local v0, "atomSize":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 293
    .local v1, "atomType":I
    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    .line 294
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 295
    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string/jumbo v4, "und"

    invoke-direct {v3, v4, v2, v2}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 298
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse comment attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MetadataUtil"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    return-object v2
.end method

.method private static parseCoverArt(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;
    .locals 9
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 383
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 384
    .local v0, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 385
    .local v1, "atomType":I
    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    .line 386
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 387
    .local v2, "fullVersionInt":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v5

    .line 388
    .local v5, "flags":I
    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    const-string v6, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v6, 0xe

    if-ne v5, v6, :cond_1

    const-string v6, "image/png"

    goto :goto_0

    :cond_1
    move-object v6, v4

    .line 389
    .local v6, "mimeType":Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_2

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized cover art flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-object v4

    .line 393
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 394
    add-int/lit8 v3, v0, -0x10

    new-array v3, v3, [B

    .line 395
    .local v3, "pictureData":[B
    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {p0, v3, v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 396
    new-instance v7, Landroidx/media3/extractor/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v4, v8, v3}, Landroidx/media3/extractor/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v7

    .line 402
    .end local v2    # "fullVersionInt":I
    .end local v3    # "pictureData":[B
    .end local v5    # "flags":I
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string v2, "Failed to parse cover art attribute"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v4
.end method

.method public static parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;
    .locals 8
    .param p0, "ilst"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 150
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 151
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v1, v0

    .line 152
    .local v1, "endPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 153
    .local v2, "type":I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 155
    .local v3, "typeTopByte":I
    const/16 v4, 0xa9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_11

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    .line 182
    :cond_0
    const v4, 0x676e7265

    if-ne v2, v4, :cond_1

    .line 183
    :try_start_0
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 183
    return-object v4

    .line 184
    :cond_1
    const v4, 0x6469736b

    if-ne v2, v4, :cond_2

    .line 185
    :try_start_1
    const-string v4, "TPOS"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 185
    return-object v4

    .line 186
    :cond_2
    const v4, 0x74726b6e

    if-ne v2, v4, :cond_3

    .line 187
    :try_start_2
    const-string v4, "TRCK"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 187
    return-object v4

    .line 188
    :cond_3
    const v4, 0x746d706f

    if-ne v2, v4, :cond_4

    .line 189
    :try_start_3
    const-string v4, "TBPM"

    invoke-static {v2, v4, p0, v6, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 189
    return-object v4

    .line 190
    :cond_4
    const v4, 0x6370696c

    if-ne v2, v4, :cond_5

    .line 191
    :try_start_4
    const-string v4, "TCMP"

    invoke-static {v2, v4, p0, v6, v6}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 191
    return-object v4

    .line 192
    :cond_5
    const v4, 0x636f7672

    if-ne v2, v4, :cond_6

    .line 193
    :try_start_5
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseCoverArt(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 193
    return-object v4

    .line 194
    :cond_6
    const v4, 0x61415254

    if-ne v2, v4, :cond_7

    .line 195
    :try_start_6
    const-string v4, "TPE2"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 195
    return-object v4

    .line 196
    :cond_7
    const v4, 0x736f6e6d

    if-ne v2, v4, :cond_8

    .line 197
    :try_start_7
    const-string v4, "TSOT"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 197
    return-object v4

    .line 198
    :cond_8
    const v4, 0x736f616c

    if-ne v2, v4, :cond_9

    .line 199
    :try_start_8
    const-string v4, "TSOA"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 199
    return-object v4

    .line 200
    :cond_9
    const v4, 0x736f6172

    if-ne v2, v4, :cond_a

    .line 201
    :try_start_9
    const-string v4, "TSOP"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 201
    return-object v4

    .line 202
    :cond_a
    const v4, 0x736f6161

    if-ne v2, v4, :cond_b

    .line 203
    :try_start_a
    const-string v4, "TSO2"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 203
    return-object v4

    .line 204
    :cond_b
    const v4, 0x736f636f

    if-ne v2, v4, :cond_c

    .line 205
    :try_start_b
    const-string v4, "TSOC"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 205
    return-object v4

    .line 206
    :cond_c
    const v4, 0x72746e67

    if-ne v2, v4, :cond_d

    .line 207
    :try_start_c
    const-string v4, "ITUNESADVISORY"

    invoke-static {v2, v4, p0, v5, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 207
    return-object v4

    .line 208
    :cond_d
    const v4, 0x70676170

    if-ne v2, v4, :cond_e

    .line 209
    :try_start_d
    const-string v4, "ITUNESGAPLESS"

    invoke-static {v2, v4, p0, v5, v6}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 209
    return-object v4

    .line 210
    :cond_e
    const v4, 0x736f736e

    if-ne v2, v4, :cond_f

    .line 211
    :try_start_e
    const-string v4, "TVSHOWSORT"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 211
    return-object v4

    .line 212
    :cond_f
    const v4, 0x74767368

    if-ne v2, v4, :cond_10

    .line 213
    :try_start_f
    const-string v4, "TVSHOW"

    invoke-static {v2, v4, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 213
    return-object v4

    .line 214
    :cond_10
    const v4, 0x2d2d2d2d

    if-ne v2, v4, :cond_1e

    .line 215
    :try_start_10
    invoke-static {p0, v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseInternalAttribute(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 215
    return-object v4

    .line 156
    :cond_11
    :goto_0
    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 157
    .local v4, "shortType":I
    const v7, 0x636d74

    if-ne v4, v7, :cond_12

    .line 158
    :try_start_11
    invoke-static {v2, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 158
    return-object v5

    .line 220
    .end local v4    # "shortType":I
    :catchall_0
    move-exception v4

    goto/16 :goto_3

    .line 159
    .restart local v4    # "shortType":I
    :cond_12
    const v7, 0x6e616d

    if-eq v4, v7, :cond_20

    const v7, 0x74726b

    if-ne v4, v7, :cond_13

    goto/16 :goto_2

    .line 161
    :cond_13
    const v7, 0x636f6d

    if-eq v4, v7, :cond_1f

    const v7, 0x777274

    if-ne v4, v7, :cond_14

    goto/16 :goto_1

    .line 163
    :cond_14
    const v7, 0x646179

    if-ne v4, v7, :cond_15

    .line 164
    :try_start_12
    const-string v5, "TDRC"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 164
    return-object v5

    .line 165
    :cond_15
    const v7, 0x415254

    if-ne v4, v7, :cond_16

    .line 166
    :try_start_13
    const-string v5, "TPE1"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 166
    return-object v5

    .line 167
    :cond_16
    const v7, 0x746f6f

    if-ne v4, v7, :cond_17

    .line 168
    :try_start_14
    const-string v5, "TSSE"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 168
    return-object v5

    .line 169
    :cond_17
    const v7, 0x616c62

    if-ne v4, v7, :cond_18

    .line 170
    :try_start_15
    const-string v5, "TALB"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 170
    return-object v5

    .line 171
    :cond_18
    const v7, 0x6c7972

    if-ne v4, v7, :cond_19

    .line 172
    :try_start_16
    const-string v5, "USLT"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 172
    return-object v5

    .line 173
    :cond_19
    const v7, 0x67656e

    if-ne v4, v7, :cond_1a

    .line 174
    :try_start_17
    const-string v5, "TCON"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 174
    return-object v5

    .line 175
    :cond_1a
    const v7, 0x677270

    if-ne v4, v7, :cond_1b

    .line 176
    :try_start_18
    const-string v5, "TIT1"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 176
    return-object v5

    .line 177
    :cond_1b
    const v7, 0x6d766e

    if-ne v4, v7, :cond_1c

    .line 178
    :try_start_19
    const-string v5, "MVNM"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 178
    return-object v5

    .line 179
    :cond_1c
    const v7, 0x6d7669

    if-ne v4, v7, :cond_1d

    .line 180
    :try_start_1a
    const-string v7, "MVIN"

    invoke-static {v2, v7, p0, v6, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 180
    return-object v5

    .line 182
    .end local v4    # "shortType":I
    :cond_1d
    nop

    .line 217
    :cond_1e
    :try_start_1b
    const-string v4, "MetadataUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped unknown metadata entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 218
    nop

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 218
    const/4 v4, 0x0

    return-object v4

    .line 162
    .restart local v4    # "shortType":I
    :cond_1f
    :goto_1
    :try_start_1c
    const-string v5, "TCOM"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 162
    return-object v5

    .line 160
    :cond_20
    :goto_2
    :try_start_1d
    const-string v5, "TIT2"

    invoke-static {v2, v5, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 160
    return-object v5

    .line 220
    .end local v4    # "shortType":I
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 221
    throw v4
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 8
    .param p0, "type"    # I
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 348
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 349
    .local v0, "atomSize":I
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 350
    .local v1, "atomType":I
    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v2, 0x16

    if-lt v0, v2, :cond_1

    .line 351
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 352
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 353
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 356
    .local v5, "count":I
    if-lez v5, :cond_0

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    :cond_0
    new-instance v6, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 360
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-direct {v6, p1, v3, v7}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 359
    return-object v6

    .line 363
    .end local v2    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "count":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse index/count attribute: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MetadataUtil"

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-object v3
.end method

.method private static parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 324
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 325
    .local v0, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 326
    .local v1, "atomType":I
    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    .line 327
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 328
    add-int/lit8 v2, v0, -0x10

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    return v2

    .line 334
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    return v2

    .line 332
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    return v2

    .line 330
    :pswitch_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    return v2

    .line 341
    :cond_0
    :goto_0
    const-string v2, "MetadataUtil"

    const-string v3, "Failed to parse data atom to int"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v2, -0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 4
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p3, "isTextInformationFrame"    # Z
    .param p4, "isBoolean"    # Z

    .line 309
    invoke-static {p2}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v0

    .line 310
    .local v0, "value":I
    if-eqz p4, :cond_0

    .line 311
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 314
    if-eqz p3, :cond_1

    .line 315
    new-instance v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 317
    :cond_1
    new-instance v2, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string/jumbo v1, "und"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, v3}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-object v2

    .line 319
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uint8 attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MetadataUtil"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-object v1
.end method

.method private static parseInternalAttribute(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 8
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "endPosition"    # I

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "domain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 410
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 411
    .local v2, "dataAtomPosition":I
    const/4 v3, -0x1

    .line 412
    .local v3, "dataAtomSize":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 413
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 414
    .local v4, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 415
    .local v5, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 416
    .local v6, "atomType":I
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 417
    const v7, 0x6d65616e

    if-ne v6, v7, :cond_0

    .line 418
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 419
    :cond_0
    const v7, 0x6e616d65

    if-ne v6, v7, :cond_1

    .line 420
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 422
    :cond_1
    const v7, 0x64617461

    if-ne v6, v7, :cond_2

    .line 423
    move v2, v4

    .line 424
    move v3, v5

    .line 426
    :cond_2
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 428
    .end local v4    # "atomPosition":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    :goto_1
    goto :goto_0

    .line 429
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    goto :goto_2

    .line 432
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 433
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 434
    add-int/lit8 v4, v3, -0x10

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {v5, v0, v1, v4}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 430
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public static parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 10
    .param p0, "ilst"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "endPosition"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 236
    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    .local v1, "atomPosition":I
    if-ge v0, p1, :cond_1

    .line 237
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 238
    .local v0, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 239
    .local v2, "atomType":I
    const v3, 0x64617461

    if-ne v2, v3, :cond_0

    .line 240
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 241
    .local v3, "typeIndicator":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 242
    .local v4, "localeIndicator":I
    add-int/lit8 v5, v0, -0x10

    .line 243
    .local v5, "dataSize":I
    new-array v6, v5, [B

    .line 244
    .local v6, "value":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 246
    :try_start_0
    new-instance v7, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-direct {v7, p2, v6, v4, v3}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 247
    :catch_0
    move-exception v7

    .line 248
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse metadata entry with key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MetadataUtil"

    invoke-static {v9, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    goto :goto_1

    .line 252
    .end local v3    # "typeIndicator":I
    .end local v4    # "localeIndicator":I
    .end local v5    # "dataSize":I
    .end local v6    # "value":[B
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    add-int v3, v1, v0

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 253
    .end local v0    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 254
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseStandardGenreAttribute(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 6
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 369
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v0

    .line 372
    .local v0, "genreCode":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Util;->resolveV1Genre(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "genreString":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 374
    new-instance v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 375
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-string v5, "TCON"

    invoke-direct {v3, v5, v2, v4}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 374
    return-object v3

    .line 377
    :cond_0
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse standard genre code"

    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-object v2
.end method

.method private static parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 6
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 278
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 279
    .local v0, "atomSize":I
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 280
    .local v1, "atomType":I
    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 281
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 282
    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "value":Ljava/lang/String;
    new-instance v4, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, p1, v3, v5}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 285
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse text attribute: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MetadataUtil"

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-object v3
.end method

.method public static setFormatGaplessInfo(ILandroidx/media3/extractor/GaplessInfoHolder;Landroidx/media3/common/Format$Builder;)V
    .locals 2
    .param p0, "trackType"    # I
    .param p1, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .param p2, "formatBuilder"    # Landroidx/media3/common/Format$Builder;

    .line 132
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v0, p1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 134
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 135
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    .line 137
    :cond_0
    return-void
.end method

.method public static varargs setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V
    .locals 6
    .param p0, "trackType"    # I
    .param p1, "mdtaMetadata"    # Landroidx/media3/common/Metadata;
    .param p2, "formatBuilder"    # Landroidx/media3/common/Format$Builder;
    .param p3, "existingMetadata"    # Landroidx/media3/common/Metadata;
    .param p4, "additionalMetadata"    # [Landroidx/media3/common/Metadata;

    .line 105
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/Metadata;

    new-array v2, v0, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 106
    .local v1, "formatMetadata":Landroidx/media3/common/Metadata;
    :goto_0
    if-eqz p1, :cond_3

    .line 108
    const-class v2, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-virtual {p1, v2}, Landroidx/media3/common/Metadata;->getEntriesOfType(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/MdtaMetadataEntry;

    .line 111
    .local v3, "mdtaMetadataEntry":Landroidx/media3/container/MdtaMetadataEntry;
    iget-object v4, v3, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v5, "com.android.capture.fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-ne p0, v4, :cond_2

    .line 113
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Landroidx/media3/common/Metadata$Entry;

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 115
    .end local v3    # "mdtaMetadataEntry":Landroidx/media3/container/MdtaMetadataEntry;
    :cond_2
    goto :goto_1

    .line 118
    :cond_3
    array-length v2, p4

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, p4, v0

    .line 119
    .local v3, "metadata":Landroidx/media3/common/Metadata;
    invoke-virtual {v1, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 118
    .end local v3    # "metadata":Landroidx/media3/common/Metadata;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {v1}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 123
    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 125
    :cond_5
    return-void
.end method
