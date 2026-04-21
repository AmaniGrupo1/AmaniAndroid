.class public final Landroidx/media3/extractor/MpegAudioUtil;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/MpegAudioUtil$Header;
    }
.end annotation


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x9c40

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLES_PER_FRAME_L1:I = 0x180

.field private static final SAMPLES_PER_FRAME_L2:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V1:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V2:I = 0x240

.field private static final SAMPLING_RATE_V1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 240
    const-string v0, "audio/mpeg-L2"

    const-string v1, "audio/mpeg"

    const-string v2, "audio/mpeg-L1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 242
    const v0, 0xbb80

    const/16 v1, 0x7d00

    const v2, 0xac44

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    .line 243
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L1:[I

    .line 247
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V2_L1:[I

    .line 251
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L2:[I

    .line 255
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L3:[I

    .line 259
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V2:[I

    return-void

    :array_0
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_4
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 25
    invoke-static {p0}, Landroidx/media3/extractor/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    return-object v0
.end method

.method static synthetic access$300(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 25
    invoke-static {p0, p1}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L1:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V2_L1:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L2:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L3:[I

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .line 25
    sget-object v0, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V2:[I

    return-object v0
.end method

.method public static getFrameSize(I)I
    .locals 10
    .param p0, "headerData"    # I

    .line 138
    invoke-static {p0}, Landroidx/media3/extractor/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 142
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    .line 143
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 144
    return v1

    .line 147
    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    .line 148
    .local v4, "layer":I
    if-nez v4, :cond_2

    .line 149
    return v1

    .line 152
    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 153
    .local v5, "bitrateIndex":I
    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_5

    .line 158
    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    .line 159
    .local v6, "samplingRateIndex":I
    if-ne v6, v2, :cond_4

    .line 160
    return v1

    .line 163
    :cond_4
    sget-object v1, Landroidx/media3/extractor/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    .line 164
    .local v1, "samplingRate":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 166
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 167
    :cond_5
    if-nez v0, :cond_6

    .line 169
    div-int/lit8 v1, v1, 0x4

    .line 173
    :cond_6
    :goto_0
    ushr-int/lit8 v8, p0, 0x9

    and-int/2addr v8, v3

    .line 174
    .local v8, "padding":I
    if-ne v4, v2, :cond_8

    .line 176
    if-ne v0, v2, :cond_7

    sget-object v2, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    goto :goto_1

    :cond_7
    sget-object v2, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V2_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    .line 177
    .local v2, "bitrate":I
    :goto_1
    mul-int/lit8 v3, v2, 0xc

    div-int/2addr v3, v1

    add-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x4

    return v3

    .line 180
    .end local v2    # "bitrate":I
    :cond_8
    if-ne v0, v2, :cond_a

    .line 181
    if-ne v4, v7, :cond_9

    sget-object v7, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    goto :goto_2

    :cond_9
    sget-object v7, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V1_L3:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .local v7, "bitrate":I
    :goto_2
    goto :goto_3

    .line 184
    .end local v7    # "bitrate":I
    :cond_a
    sget-object v7, Landroidx/media3/extractor/MpegAudioUtil;->BITRATE_V2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .line 188
    .restart local v7    # "bitrate":I
    :goto_3
    if-ne v0, v2, :cond_b

    .line 190
    mul-int/lit16 v2, v7, 0x90

    div-int/2addr v2, v1

    add-int/2addr v2, v8

    return v2

    .line 193
    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v2, 0x48

    goto :goto_4

    :cond_c
    const/16 v2, 0x90

    :goto_4
    mul-int/2addr v2, v7

    div-int/2addr v2, v1

    add-int/2addr v2, v8

    return v2

    .line 155
    .end local v1    # "samplingRate":I
    .end local v6    # "samplingRateIndex":I
    .end local v7    # "bitrate":I
    .end local v8    # "padding":I
    :cond_d
    :goto_5
    return v1
.end method

.method private static getFrameSizeInSamples(II)I
    .locals 2
    .param p0, "version"    # I
    .param p1, "layer"    # I

    .line 276
    const/16 v0, 0x480

    packed-switch p1, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 282
    :pswitch_0
    const/16 v0, 0x180

    return v0

    .line 280
    :pswitch_1
    return v0

    .line 278
    :pswitch_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x240

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isMagicPresent(I)Z
    .locals 2
    .param p0, "headerData"    # I

    .line 272
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseMpegAudioFrameSampleCount(I)I
    .locals 7
    .param p0, "headerData"    # I

    .line 202
    invoke-static {p0}, Landroidx/media3/extractor/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 206
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    .line 207
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 208
    return v1

    .line 211
    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    .line 212
    .local v3, "layer":I
    if-nez v3, :cond_2

    .line 213
    return v1

    .line 217
    :cond_2
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    .line 218
    .local v4, "bitrateIndex":I
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    .line 219
    .local v6, "samplingRateIndex":I
    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_4

    if-ne v6, v2, :cond_3

    goto :goto_0

    .line 223
    :cond_3
    invoke-static {v0, v3}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result v1

    return v1

    .line 220
    :cond_4
    :goto_0
    return v1
.end method
