.class public Landroidx/media3/decoder/VideoDecoderOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "VideoDecoderOutputBuffer.java"


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:J

.field public format:Landroidx/media3/common/Format;

.field public height:I

.field public mode:I

.field private final owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public uvStride:I

.field public width:I

.field public yStride:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "owner":Landroidx/media3/decoder/DecoderOutputBuffer$Owner;, "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<Landroidx/media3/decoder/VideoDecoderOutputBuffer;>;"
    invoke-direct {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    .line 77
    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 229
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    const v0, 0x7fffffff

    div-int/2addr v0, p1

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "timeUs"    # J
    .param p3, "mode"    # I
    .param p4, "supplementalData"    # Ljava/nio/ByteBuffer;

    .line 95
    iput-wide p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    .line 96
    iput p3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 97
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->addFlag(I)V

    .line 99
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 100
    .local v0, "size":I
    iget-object v1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 105
    :goto_1
    iget-object v1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 106
    iget-object v1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    .end local v0    # "size":I
    goto :goto_2

    .line 109
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 111
    :goto_2
    return-void
.end method

.method public initForOffsetFrames(IIIIIII)Z
    .locals 16
    .param p1, "offset"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "yStride"    # I
    .param p5, "uvStride"    # I
    .param p6, "colorspace"    # I
    .param p7, "alignedHeight"    # I

    .line 177
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x3

    if-nez v3, :cond_0

    .line 178
    new-array v3, v4, [Ljava/nio/ByteBuffer;

    iput-object v3, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 182
    :cond_0
    iget-object v3, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 183
    return v5

    .line 186
    :cond_1
    move/from16 v3, p2

    iput v3, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 187
    iput v2, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 188
    move/from16 v6, p6

    iput v6, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    .line 189
    iget-object v7, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 190
    .local v7, "yuvPlanes":[Ljava/nio/ByteBuffer;
    iget-object v8, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 192
    .local v8, "data":Ljava/nio/ByteBuffer;
    mul-int v9, p4, v2

    .line 193
    .local v9, "yLength":I
    shr-int/lit8 v10, v2, 0x1

    mul-int v10, v10, p5

    .line 194
    .local v10, "uvLength":I
    mul-int v11, p4, p7

    .line 195
    .local v11, "alignedYLength":I
    shr-int/lit8 v12, p7, 0x1

    mul-int v12, v12, p5

    .line 196
    .local v12, "alignedUvLength":I
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v13

    aput-object v13, v7, v5

    .line 198
    aget-object v13, v7, v5

    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 199
    add-int v13, v11, v1

    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v7, v14

    .line 201
    aget-object v13, v7, v14

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    add-int v13, v11, v12

    add-int/2addr v13, v1

    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v7, v15

    .line 204
    aget-object v13, v7, v15

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 206
    iget-object v13, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez v13, :cond_2

    .line 207
    new-array v4, v4, [I

    iput-object v4, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 209
    :cond_2
    iget-object v4, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p4, v4, v5

    .line 210
    iget-object v4, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p5, v4, v14

    .line 211
    iget-object v4, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p5, v4, v15

    .line 212
    return v14
.end method

.method public initForPrivateFrame(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 220
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 221
    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 222
    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "yStride"    # I
    .param p4, "uvStride"    # I
    .param p5, "colorspace"    # I

    .line 119
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p1

    iput v4, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 120
    iput v1, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 121
    move/from16 v5, p5

    iput v5, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    .line 122
    iput v2, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yStride:I

    .line 123
    iput v3, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->uvStride:I

    .line 124
    int-to-long v6, v1

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 125
    .local v6, "uvHeight":I
    invoke-static {v2, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-static {v3, v6}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 128
    :cond_0
    mul-int v7, v2, v1

    .line 129
    .local v7, "yLength":I
    mul-int v9, v3, v6

    .line 130
    .local v9, "uvLength":I
    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v7

    .line 131
    .local v10, "minimumYuvSize":I
    const/4 v11, 0x2

    invoke-static {v9, v11}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v12

    if-eqz v12, :cond_6

    if-ge v10, v7, :cond_1

    goto :goto_2

    .line 136
    :cond_1
    iget-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v12, :cond_3

    iget-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    if-ge v12, v10, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    iget-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 137
    :cond_3
    :goto_0
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 143
    :goto_1
    iget-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v13, 0x3

    if-nez v12, :cond_4

    .line 144
    new-array v12, v13, [Ljava/nio/ByteBuffer;

    iput-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 147
    :cond_4
    iget-object v12, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 148
    .local v12, "data":Ljava/nio/ByteBuffer;
    iget-object v14, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 151
    .local v14, "yuvPlanes":[Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    aput-object v15, v14, v8

    .line 152
    aget-object v15, v14, v8

    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 155
    aget-object v15, v14, v16

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 156
    add-int v15, v7, v9

    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    aput-object v15, v14, v11

    .line 158
    aget-object v15, v14, v11

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    iget-object v15, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez v15, :cond_5

    .line 160
    new-array v13, v13, [I

    iput-object v13, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 162
    :cond_5
    iget-object v13, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput v2, v13, v8

    .line 163
    iget-object v8, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput v3, v8, v16

    .line 164
    iget-object v8, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput v3, v8, v11

    .line 165
    return v16

    .line 132
    .end local v12    # "data":Ljava/nio/ByteBuffer;
    .end local v14    # "yuvPlanes":[Ljava/nio/ByteBuffer;
    :cond_6
    :goto_2
    return v8

    .line 126
    .end local v7    # "yLength":I
    .end local v9    # "uvLength":I
    .end local v10    # "minimumYuvSize":I
    :cond_7
    :goto_3
    return v8
.end method

.method public release()V
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Landroidx/media3/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    .line 82
    return-void
.end method
