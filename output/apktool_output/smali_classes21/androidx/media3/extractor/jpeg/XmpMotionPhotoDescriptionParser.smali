.class final Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;
.super Ljava/lang/Object;
.source "XmpMotionPhotoDescriptionParser.java"


# static fields
.field private static final DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MotionPhotoXmpParser"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 78
    const-string v0, "Camera:MicroVideo"

    const-string v1, "GCamera:MicroVideo"

    const-string v2, "Camera:MotionPhoto"

    const-string v3, "GCamera:MotionPhoto"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 85
    const-string v0, "Camera:MicroVideoPresentationTimestampUs"

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    const-string v2, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v3, "GCamera:MotionPhotoPresentationTimestampUs"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 92
    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMotionPhotoXmp(Ljava/lang/String;)Z
    .locals 7
    .param p0, "xmpString"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 66
    return v0

    .line 68
    :cond_0
    sget-object v1, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 69
    .local v4, "attributeName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\"1\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const/4 v0, 0x1

    return v0

    .line 68
    .end local v4    # "attributeName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    return v0
.end method

.method public static parse(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
    .locals 3
    .param p0, "xmpString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseInternal(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseInternal(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
    .locals 9
    .param p0, "xmpString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 102
    .local v0, "xmlPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 103
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 104
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 105
    const-string/jumbo v2, "x:xmpmeta"

    invoke-static {v1, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 109
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    .local v5, "motionPhotoPresentationTimestampUs":J
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 112
    .local v3, "containerItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 113
    const-string/jumbo v7, "rdf:Description"

    invoke-static {v1, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    invoke-static {v1}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    return-object v4

    .line 118
    :cond_1
    nop

    .line 119
    invoke-static {v1}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v5

    .line 120
    invoke-static {v1}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_0

    .line 121
    :cond_2
    const-string v7, "Container:Directory"

    invoke-static {v1, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 122
    const-string v7, "Container"

    const-string v8, "Item"

    invoke-static {v1, v7, v8}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_0

    .line 123
    :cond_3
    const-string v7, "GContainer:Directory"

    invoke-static {v1, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 124
    const-string v7, "GContainer"

    const-string v8, "GContainerItem"

    invoke-static {v1, v7, v8}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 126
    :cond_4
    :goto_0
    invoke-static {v1, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    return-object v4

    .line 131
    :cond_5
    new-instance v2, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    invoke-direct {v2, v5, v6, v3}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;-><init>(JLjava/util/List;)V

    return-object v2

    .line 106
    .end local v3    # "containerItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    .end local v5    # "motionPhotoPresentationTimestampUs":J
    :cond_6
    const-string v2, "Couldn\'t find xmp metadata"

    invoke-static {v2, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method

.method private static parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;
    .locals 18
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 161
    .local v3, "attributeName":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-static {v4, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "attributeValue":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 163
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 164
    .local v9, "microVideoOffset":J
    new-instance v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-string v12, "image/jpeg"

    const-string v13, "Primary"

    invoke-direct/range {v11 .. v17}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v0, v11

    new-instance v6, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v8, "MotionPhoto"

    const-wide/16 v11, 0x0

    const-string/jumbo v7, "video/mp4"

    invoke-direct/range {v6 .. v12}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v0, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 160
    .end local v3    # "attributeName":Ljava/lang/String;
    .end local v5    # "attributeValue":Ljava/lang/String;
    .end local v9    # "microVideoOffset":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    move-object/from16 v4, p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 135
    sget-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 136
    .local v4, "attributeName":Ljava/lang/String;
    invoke-static {p0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "attributeValue":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "motionPhotoFlag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2

    .line 135
    .end local v0    # "motionPhotoFlag":I
    .end local v4    # "attributeName":Ljava/lang/String;
    .end local v5    # "attributeValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_2
    return v2
.end method

.method private static parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 9
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 146
    sget-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 147
    .local v5, "attributeName":Ljava/lang/String;
    invoke-static {p0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "attributeValue":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 149
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 150
    .local v0, "presentationTimestampUs":J
    const-wide/16 v7, -0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-wide v3, v0

    :goto_1
    return-wide v3

    .line 146
    .end local v0    # "presentationTimestampUs":J
    .end local v5    # "attributeName":Ljava/lang/String;
    .end local v6    # "attributeValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_2
    return-wide v3
.end method

.method private static parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 21
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "containerNamespacePrefix"    # Ljava/lang/String;
    .param p2, "itemNamespacePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 182
    .local v3, "containerItems":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "itemTagName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":Directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "directoryTagName":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 186
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":Mime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "mimeAttributeName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":Semantic"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "semanticAttributeName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, "lengthAttributeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":Padding"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "paddinghAttributeName":Ljava/lang/String;
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "mime":Ljava/lang/String;
    invoke-static {v0, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, "semantic":Ljava/lang/String;
    invoke-static {v0, v8}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 194
    .local v17, "length":Ljava/lang/String;
    invoke-static {v0, v9}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 195
    .local v18, "padding":Ljava/lang/String;
    if-eqz v11, :cond_4

    if-nez v12, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    new-instance v10, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 203
    const-wide/16 v13, 0x0

    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_0

    :cond_2
    move-wide v15, v13

    .line 204
    :goto_0
    if-eqz v18, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    :cond_3
    move-wide/from16 v19, v15

    move-wide v15, v13

    move-wide/from16 v13, v19

    invoke-direct/range {v10 .. v16}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 199
    invoke-virtual {v3, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 197
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    return-object v10

    .line 206
    .end local v6    # "mimeAttributeName":Ljava/lang/String;
    .end local v7    # "semanticAttributeName":Ljava/lang/String;
    .end local v8    # "lengthAttributeName":Ljava/lang/String;
    .end local v9    # "paddinghAttributeName":Ljava/lang/String;
    .end local v11    # "mime":Ljava/lang/String;
    .end local v12    # "semantic":Ljava/lang/String;
    .end local v17    # "length":Ljava/lang/String;
    .end local v18    # "padding":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {v0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    return-object v6
.end method
