.class final Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# static fields
.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I = 0x64666c38

.field private static final TYPE_MESH:I = 0x6d657368

.field private static final TYPE_MSHP:I = 0x6d736870

.field private static final TYPE_PROJ:I = 0x70726f6a

.field private static final TYPE_RAW:I = 0x72617720

.field private static final TYPE_YTMP:I = 0x79746d70


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 5
    .param p0, "projectionData"    # [B
    .param p1, "stereoMode"    # I

    .line 63
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 66
    .local v0, "input":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v1, 0x0

    .line 68
    .local v1, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;>;"
    :try_start_0
    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->isProj(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->parseProj(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->parseMshp(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v2

    .line 71
    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 72
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 73
    return-object v2

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 82
    return-object v2

    .line 79
    :pswitch_0
    new-instance v2, Landroidx/media3/exoplayer/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, v4, p1}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v2

    .line 77
    :pswitch_1
    new-instance v2, Landroidx/media3/exoplayer/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, p1}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeZigZag(I)I
    .locals 2
    .param p0, "n"    # I

    .line 241
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static isProj(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 3
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 89
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 91
    .local v0, "type":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 92
    const v2, 0x70726f6a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static parseMesh(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    .locals 29
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 171
    .local v0, "coordinateCount":I
    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 172
    return-object v2

    .line 174
    :cond_0
    new-array v1, v0, [F

    .line 175
    .local v1, "coordinates":[F
    const/4 v3, 0x0

    .local v3, "coordinate":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readFloat()F

    move-result v4

    aput v4, v1, v3

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "coordinate":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 180
    .local v3, "vertexCount":I
    const/16 v4, 0x7d00

    if-le v3, v4, :cond_2

    .line 181
    return-object v2

    .line 184
    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 185
    .local v6, "log2":D
    int-to-double v8, v0

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 187
    .local v8, "coordinateCountSizeBits":I
    new-instance v9, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 188
    .local v9, "bitInput":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v10

    const/16 v11, 0x8

    mul-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 189
    mul-int/lit8 v10, v3, 0x5

    new-array v10, v10, [F

    .line 190
    .local v10, "vertices":[F
    const/4 v12, 0x5

    new-array v13, v12, [I

    .line 191
    .local v13, "coordinateIndices":[I
    const/4 v14, 0x0

    .line 192
    .local v14, "vertexIndex":I
    const/4 v15, 0x0

    .local v15, "vertex":I
    :goto_1
    if-ge v15, v3, :cond_6

    .line 193
    const/16 v16, 0x0

    move/from16 v27, v16

    move-object/from16 v16, v2

    move/from16 v2, v27

    .local v2, "i":I
    :goto_2
    if-ge v2, v12, :cond_5

    .line 194
    aget v17, v13, v2

    .line 195
    invoke-virtual {v9, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v18

    move-wide/from16 v19, v4

    add-int v4, v17, v18

    .line 196
    .local v4, "coordinateIndex":I
    if-ge v4, v0, :cond_4

    if-gez v4, :cond_3

    goto :goto_3

    .line 199
    :cond_3
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "vertexIndex":I
    .local v5, "vertexIndex":I
    aget v17, v1, v4

    aput v17, v10, v14

    .line 200
    aput v4, v13, v2

    .line 193
    .end local v4    # "coordinateIndex":I
    add-int/lit8 v2, v2, 0x1

    move v14, v5

    move-wide/from16 v4, v19

    goto :goto_2

    .line 197
    .end local v5    # "vertexIndex":I
    .restart local v4    # "coordinateIndex":I
    .restart local v14    # "vertexIndex":I
    :cond_4
    :goto_3
    return-object v16

    .line 193
    .end local v4    # "coordinateIndex":I
    :cond_5
    move-wide/from16 v19, v4

    .line 192
    .end local v2    # "i":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    move-wide/from16 v19, v4

    .line 205
    .end local v15    # "vertex":I
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    and-int/lit8 v2, v2, -0x8

    invoke-virtual {v9, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 207
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 208
    .local v4, "subMeshCount":I
    new-array v5, v4, [Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    .line 209
    .local v5, "subMeshes":[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v4, :cond_b

    .line 210
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 211
    .local v15, "textureId":I
    move/from16 v17, v0

    .end local v0    # "coordinateCount":I
    .local v17, "coordinateCount":I
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 212
    .local v0, "drawMode":I
    invoke-virtual {v9, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 213
    .local v11, "triangleIndexCount":I
    const v2, 0x1f400

    if-le v11, v2, :cond_7

    .line 214
    return-object v16

    .line 216
    :cond_7
    move-object/from16 v21, v1

    .end local v1    # "coordinates":[F
    .local v21, "coordinates":[F
    int-to-double v1, v3

    mul-double v1, v1, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 217
    .local v1, "vertexCountSizeBits":I
    const/4 v2, 0x0

    .line 218
    .local v2, "index":I
    move/from16 v22, v2

    .end local v2    # "index":I
    .local v22, "index":I
    mul-int/lit8 v2, v11, 0x3

    new-array v2, v2, [F

    .line 219
    .local v2, "triangleVertices":[F
    move/from16 v23, v4

    .end local v4    # "subMeshCount":I
    .local v23, "subMeshCount":I
    mul-int/lit8 v4, v11, 0x2

    new-array v4, v4, [F

    .line 220
    .local v4, "textureCoords":[F
    const/16 v24, 0x0

    move-wide/from16 v27, v6

    move/from16 v6, v24

    move-wide/from16 v24, v27

    .local v6, "counter":I
    .local v24, "log2":D
    :goto_5
    if-ge v6, v11, :cond_a

    .line 221
    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    invoke-static {v7}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v7

    add-int v7, v22, v7

    .line 222
    .end local v22    # "index":I
    .local v7, "index":I
    if-ltz v7, :cond_9

    if-lt v7, v3, :cond_8

    goto :goto_6

    .line 225
    :cond_8
    mul-int/lit8 v22, v6, 0x3

    mul-int/lit8 v26, v7, 0x5

    aget v26, v10, v26

    aput v26, v2, v22

    .line 226
    mul-int/lit8 v22, v6, 0x3

    add-int/lit8 v22, v22, 0x1

    mul-int/lit8 v26, v7, 0x5

    add-int/lit8 v26, v26, 0x1

    aget v26, v10, v26

    aput v26, v2, v22

    .line 227
    mul-int/lit8 v22, v6, 0x3

    add-int/lit8 v22, v22, 0x2

    mul-int/lit8 v26, v7, 0x5

    add-int/lit8 v26, v26, 0x2

    aget v26, v10, v26

    aput v26, v2, v22

    .line 228
    mul-int/lit8 v22, v6, 0x2

    mul-int/lit8 v26, v7, 0x5

    add-int/lit8 v26, v26, 0x3

    aget v26, v10, v26

    aput v26, v4, v22

    .line 229
    mul-int/lit8 v22, v6, 0x2

    add-int/lit8 v22, v22, 0x1

    mul-int/lit8 v26, v7, 0x5

    add-int/lit8 v26, v26, 0x4

    aget v26, v10, v26

    aput v26, v4, v22

    .line 220
    add-int/lit8 v6, v6, 0x1

    move/from16 v22, v7

    goto :goto_5

    .line 223
    :cond_9
    :goto_6
    return-object v16

    .line 231
    .end local v6    # "counter":I
    .end local v7    # "index":I
    .restart local v22    # "index":I
    :cond_a
    new-instance v6, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    invoke-direct {v6, v15, v2, v4, v0}, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v6, v5, v12

    .line 209
    .end local v0    # "drawMode":I
    .end local v1    # "vertexCountSizeBits":I
    .end local v2    # "triangleVertices":[F
    .end local v4    # "textureCoords":[F
    .end local v11    # "triangleIndexCount":I
    .end local v15    # "textureId":I
    .end local v22    # "index":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v4, v23

    move-wide/from16 v6, v24

    const/16 v2, 0x20

    const/16 v11, 0x8

    goto/16 :goto_4

    .end local v17    # "coordinateCount":I
    .end local v21    # "coordinates":[F
    .end local v23    # "subMeshCount":I
    .end local v24    # "log2":D
    .local v0, "coordinateCount":I
    .local v1, "coordinates":[F
    .local v4, "subMeshCount":I
    .local v6, "log2":D
    :cond_b
    move/from16 v17, v0

    .line 233
    .end local v0    # "coordinateCount":I
    .end local v12    # "i":I
    .restart local v17    # "coordinateCount":I
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {v0, v5}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method private static parseMshp(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 120
    .local v0, "version":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    return-object v1

    .line 123
    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 124
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 125
    .local v2, "encoding":I
    const v3, 0x64666c38

    if-ne v2, v3, :cond_2

    .line 126
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 127
    .local v3, "output":Landroidx/media3/common/util/ParsableByteArray;
    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 129
    .local v4, "inflater":Ljava/util/zip/Inflater;
    :try_start_0
    invoke-static {p0, v3, v4}, Landroidx/media3/common/util/Util;->inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 130
    nop

    .line 133
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 130
    return-object v1

    .line 133
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 134
    nop

    .line 135
    move-object p0, v3

    .end local v3    # "output":Landroidx/media3/common/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    goto :goto_0

    .line 133
    .restart local v3    # "output":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v4    # "inflater":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 134
    throw v1

    .line 136
    .end local v3    # "output":Landroidx/media3/common/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    :cond_2
    const v3, 0x72617720

    if-eq v2, v3, :cond_3

    .line 137
    return-object v1

    .line 136
    :cond_3
    :goto_0
    nop

    .line 139
    invoke-static {p0}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->parseRawMshpData(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static parseProj(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 97
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 99
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 100
    .local v1, "limit":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 101
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    .line 102
    .local v3, "childEnd":I
    if-le v3, v0, :cond_3

    if-le v3, v1, :cond_0

    goto :goto_2

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 107
    .local v2, "childAtomType":I
    const v4, 0x79746d70

    if-eq v2, v4, :cond_2

    const v4, 0x6d736870

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    move v0, v3

    .line 112
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 113
    .end local v2    # "childAtomType":I
    .end local v3    # "childEnd":I
    goto :goto_0

    .line 108
    .restart local v2    # "childAtomType":I
    .restart local v3    # "childEnd":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 109
    invoke-static {p0}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->parseMshp(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 103
    .end local v2    # "childAtomType":I
    :cond_3
    :goto_2
    return-object v2

    .line 114
    .end local v3    # "childEnd":I
    :cond_4
    return-object v2
.end method

.method private static parseRawMshpData(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;>;"
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 147
    .local v1, "position":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 148
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 149
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    .line 150
    .local v3, "childEnd":I
    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    if-le v3, v2, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 154
    .local v5, "childAtomType":I
    const v6, 0x6d657368

    if-ne v5, v6, :cond_2

    .line 155
    invoke-static {p0}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->parseMesh(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    move-result-object v6

    .line 156
    .local v6, "mesh":Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    if-nez v6, :cond_1

    .line 157
    return-object v4

    .line 159
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v6    # "mesh":Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    :cond_2
    move v1, v3

    .line 162
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 163
    .end local v3    # "childEnd":I
    .end local v5    # "childAtomType":I
    goto :goto_0

    .line 151
    .restart local v3    # "childEnd":I
    :cond_3
    :goto_1
    return-object v4

    .line 164
    .end local v3    # "childEnd":I
    :cond_4
    return-object v0
.end method
