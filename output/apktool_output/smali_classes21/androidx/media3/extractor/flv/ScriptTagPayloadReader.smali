.class final Landroidx/media3/extractor/flv/ScriptTagPayloadReader;
.super Landroidx/media3/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_FILE_POSITIONS:Ljava/lang/String; = "filepositions"

.field private static final KEY_KEY_FRAMES:Ljava/lang/String; = "keyframes"

.field private static final KEY_TIMES:Ljava/lang/String; = "times"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# instance fields
.field private durationUs:J

.field private keyFrameTagPositions:[J

.field private keyFrameTimesUs:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 53
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 55
    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 56
    return-void
.end method

.method private static readAmfBoolean(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 150
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfData(Landroidx/media3/common/util/ParsableByteArray;I)Ljava/lang/Object;
    .locals 1
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "type"    # I

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 268
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 265
    :pswitch_1
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_2
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_3
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_4
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_5
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_6
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_7
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static readAmfDate(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/Date;
    .locals 3
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 245
    .local v0, "date":Ljava/util/Date;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 246
    return-object v0
.end method

.method private static readAmfDouble(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/Double;
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 160
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 6
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 225
    .local v0, "count":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 226
    .local v1, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 227
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    .line 229
    .local v4, "type":I
    invoke-static {p0, v4}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroidx/media3/common/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 230
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static readAmfObject(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    .line 206
    .local v2, "type":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 207
    nop

    .line 214
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    return-object v0

    .line 209
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_0
    invoke-static {p0, v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroidx/media3/common/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0
.end method

.method private static readAmfStrictArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 184
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 186
    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v3

    .line 187
    .local v3, "type":I
    invoke-static {p0, v3}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroidx/media3/common/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v3    # "type":I
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 170
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 171
    .local v0, "size":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 172
    .local v1, "position":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 173
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 1
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 140
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 59
    iget-wide v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method public getKeyFrameTagPositions()[J
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-object v0
.end method

.method public getKeyFrameTimesUs()[J
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    return-object v0
.end method

.method protected parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 24
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "timeUs"    # J

    .line 82
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v1

    .line 83
    .local v1, "nameType":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 85
    return v3

    .line 87
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "onMetaData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    return v3

    .line 92
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-nez v4, :cond_2

    .line 94
    return v3

    .line 96
    :cond_2
    invoke-static/range {p1 .. p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    .line 97
    .local v4, "type":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 99
    return v3

    .line 101
    :cond_3
    invoke-static/range {p1 .. p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v5

    .line 103
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "duration"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 104
    .local v6, "durationSecondsObj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Double;

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v7, :cond_4

    .line 105
    move-object v7, v6

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 106
    .local v10, "durationSeconds":D
    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_4

    .line 107
    mul-double v12, v10, v8

    double-to-long v12, v12

    iput-wide v12, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    .line 111
    .end local v10    # "durationSeconds":D
    :cond_4
    const-string v7, "keyframes"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 112
    .local v7, "keyFramesObj":Ljava/lang/Object;
    instance-of v10, v7, Ljava/util/Map;

    if-eqz v10, :cond_8

    .line 113
    move-object v10, v7

    check-cast v10, Ljava/util/Map;

    .line 114
    .local v10, "keyFrames":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v11, "filepositions"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 115
    .local v11, "positionsObj":Ljava/lang/Object;
    const-string/jumbo v12, "times"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 116
    .local v12, "timesSecondsObj":Ljava/lang/Object;
    instance-of v13, v11, Ljava/util/List;

    if-eqz v13, :cond_7

    instance-of v13, v12, Ljava/util/List;

    if-eqz v13, :cond_7

    .line 117
    move-object v13, v11

    check-cast v13, Ljava/util/List;

    .line 118
    .local v13, "positions":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v14, v12

    check-cast v14, Ljava/util/List;

    .line 119
    .local v14, "timesSeconds":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 120
    .local v15, "keyFrameCount":I
    move-wide/from16 v16, v8

    new-array v8, v15, [J

    iput-object v8, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 121
    new-array v8, v15, [J

    iput-object v8, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 122
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_6

    .line 123
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 124
    .local v9, "positionObj":Ljava/lang/Object;
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "timeSecondsObj":Ljava/lang/Object;
    move/from16 v19, v1

    .end local v1    # "nameType":I
    .local v19, "nameType":I
    instance-of v1, v3, Ljava/lang/Double;

    if-eqz v1, :cond_5

    instance-of v1, v9, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    mul-double v1, v20, v16

    double-to-long v1, v1

    aput-wide v1, v23, v8

    .line 127
    iget-object v1, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    move-object v2, v9

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v20

    aput-wide v20, v1, v8

    .line 122
    .end local v3    # "timeSecondsObj":Ljava/lang/Object;
    .end local v9    # "positionObj":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v19

    move-object/from16 v2, v22

    const/4 v3, 0x0

    goto :goto_0

    .line 125
    .end local v22    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "timeSecondsObj":Ljava/lang/Object;
    .restart local v9    # "positionObj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v22, v2

    .line 129
    .end local v2    # "name":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [J

    iput-object v2, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 130
    new-array v2, v1, [J

    iput-object v2, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 131
    goto :goto_1

    .line 122
    .end local v3    # "timeSecondsObj":Ljava/lang/Object;
    .end local v9    # "positionObj":Ljava/lang/Object;
    .end local v19    # "nameType":I
    .end local v22    # "name":Ljava/lang/String;
    .restart local v1    # "nameType":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_6
    move/from16 v19, v1

    move-object/from16 v22, v2

    .end local v1    # "nameType":I
    .end local v2    # "name":Ljava/lang/String;
    .restart local v19    # "nameType":I
    .restart local v22    # "name":Ljava/lang/String;
    goto :goto_1

    .line 116
    .end local v8    # "i":I
    .end local v13    # "positions":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v14    # "timesSeconds":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v15    # "keyFrameCount":I
    .end local v19    # "nameType":I
    .end local v22    # "name":Ljava/lang/String;
    .restart local v1    # "nameType":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_7
    move/from16 v19, v1

    move-object/from16 v22, v2

    .end local v1    # "nameType":I
    .end local v2    # "name":Ljava/lang/String;
    .restart local v19    # "nameType":I
    .restart local v22    # "name":Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v10    # "keyFrames":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v11    # "positionsObj":Ljava/lang/Object;
    .end local v12    # "timesSecondsObj":Ljava/lang/Object;
    .end local v19    # "nameType":I
    .end local v22    # "name":Ljava/lang/String;
    .restart local v1    # "nameType":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_8
    move/from16 v19, v1

    move-object/from16 v22, v2

    .line 136
    .end local v1    # "nameType":I
    .end local v2    # "name":Ljava/lang/String;
    .restart local v19    # "nameType":I
    .restart local v22    # "name":Ljava/lang/String;
    :goto_1
    const/16 v18, 0x0

    return v18
.end method

.method public seek()V
    .locals 0

    .line 73
    return-void
.end method
