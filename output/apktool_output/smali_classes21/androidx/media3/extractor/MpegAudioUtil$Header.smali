.class public final Landroidx/media3/extractor/MpegAudioUtil$Header;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/MpegAudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;)V
    .locals 1
    .param p1, "header"    # Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    .line 57
    iget-object v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 58
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 59
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 60
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 61
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 62
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 63
    return-void
.end method


# virtual methods
.method public setForHeaderData(I)Z
    .locals 11
    .param p1, "headerData"    # I

    .line 75
    invoke-static {p1}, Landroidx/media3/extractor/MpegAudioUtil;->access$000(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    .line 80
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 81
    return v1

    .line 84
    :cond_1
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    .line 85
    .local v4, "layer":I
    if-nez v4, :cond_2

    .line 86
    return v1

    .line 89
    :cond_2
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 90
    .local v5, "bitrateIndex":I
    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto/16 :goto_4

    .line 95
    :cond_3
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    .line 96
    .local v6, "samplingRateIndex":I
    if-ne v6, v2, :cond_4

    .line 97
    return v1

    .line 100
    :cond_4
    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    .line 101
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$100()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 102
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 103
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 105
    iget v7, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v7, v1

    iput v7, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    goto :goto_0

    .line 106
    :cond_5
    if-nez v0, :cond_6

    .line 108
    iget v7, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/lit8 v7, v7, 0x4

    iput v7, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 110
    :cond_6
    :goto_0
    ushr-int/lit8 v7, p1, 0x9

    and-int/2addr v7, v3

    .line 111
    .local v7, "padding":I
    invoke-static {v0, v4}, Landroidx/media3/extractor/MpegAudioUtil;->access$300(II)I

    move-result v8

    iput v8, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 112
    if-ne v4, v2, :cond_8

    .line 114
    if-ne v0, v2, :cond_7

    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$400()[I

    move-result-object v8

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    goto :goto_1

    :cond_7
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$500()[I

    move-result-object v8

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    :goto_1
    iput v8, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 115
    iget v8, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/lit8 v8, v8, 0xc

    iget v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v8, v9

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x4

    iput v8, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    goto :goto_3

    .line 118
    :cond_8
    const/16 v8, 0x90

    if-ne v0, v2, :cond_a

    .line 120
    if-ne v4, v1, :cond_9

    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$600()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    goto :goto_2

    :cond_9
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$700()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    :goto_2
    iput v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 121
    iget v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v9, v8

    iget v8, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v9, v8

    add-int/2addr v9, v7

    iput v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    goto :goto_3

    .line 124
    :cond_a
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$800()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    iput v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 125
    if-ne v4, v3, :cond_b

    const/16 v8, 0x48

    :cond_b
    iget v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v8, v9

    iget v9, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v8, v9

    add-int/2addr v8, v7

    iput v8, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 128
    :goto_3
    shr-int/lit8 v8, p1, 0x6

    and-int/2addr v8, v2

    if-ne v8, v2, :cond_c

    move v1, v3

    :cond_c
    iput v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 129
    return v3

    .line 92
    .end local v6    # "samplingRateIndex":I
    .end local v7    # "padding":I
    :cond_d
    :goto_4
    return v1
.end method
