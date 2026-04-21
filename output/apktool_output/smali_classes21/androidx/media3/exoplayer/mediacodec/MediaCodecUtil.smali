.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    .line 77
    const/4 v0, -0x1

    sput v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 618
    const-string v3, "R9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 620
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v3, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    nop

    .line 624
    const-string v3, "OMX.google.raw.decoder"

    const-string v4, "audio/raw"

    const-string v5, "audio/raw"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 623
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 653
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 654
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 657
    .local v0, "firstCodecName":Ljava/lang/String;
    const-string v1, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 1
    .param p0, "avcLevel"    # I

    .line 749
    sparse-switch p0, :sswitch_data_0

    .line 781
    const/4 v0, -0x1

    return v0

    .line 779
    :sswitch_0
    const/high16 v0, 0x2200000

    return v0

    .line 775
    :sswitch_1
    const/high16 v0, 0x900000

    return v0

    .line 772
    :sswitch_2
    const v0, 0x564000

    return v0

    .line 770
    :sswitch_3
    const/high16 v0, 0x220000

    return v0

    .line 768
    :sswitch_4
    const/high16 v0, 0x200000

    return v0

    .line 765
    :sswitch_5
    const/high16 v0, 0x140000

    return v0

    .line 763
    :sswitch_6
    const v0, 0xe1000

    return v0

    .line 761
    :sswitch_7
    const v0, 0x65400

    return v0

    .line 758
    :sswitch_8
    const v0, 0x31800

    return v0

    .line 756
    :sswitch_9
    const v0, 0x18c00

    return v0

    .line 752
    :sswitch_a
    const/16 v0, 0x6300

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized clearDecoderInfoCache()V
    .locals 2

    const-class v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    .line 104
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static createCodecProfileLevel(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1
    .param p0, "profile"    # I
    .param p1, "level"    # I

    .line 331
    new-instance v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 332
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iput p0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 333
    iput p1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 334
    return-object v0
.end method

.method public static getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 378
    const-string v0, "audio/eac3-joc"

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "audio/eac3"

    return-object v0

    .line 382
    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "video/hevc"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 388
    nop

    .line 389
    invoke-static {p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    .line 390
    .local v0, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5

    .line 391
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 392
    .local v3, "profile":I
    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    const/16 v4, 0x200

    if-ne v3, v4, :cond_2

    .line 396
    const-string/jumbo v1, "video/avc"

    return-object v1

    .line 397
    :cond_2
    const/16 v4, 0x400

    if-ne v3, v4, :cond_5

    .line 398
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorRange:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 401
    return-object v2

    .line 403
    :cond_3
    const-string/jumbo v1, "video/av01"

    return-object v1

    .line 394
    :cond_4
    :goto_0
    return-object v1

    .line 407
    .end local v0    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "profile":I
    :cond_5
    const-string/jumbo v0, "video/mv-hevc"

    iget-object v3, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 409
    return-object v1

    .line 411
    :cond_6
    return-object v2
.end method

.method public static getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 247
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "alternativeMimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 251
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 535
    .local v3, "supportedType":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 536
    return-object v3

    .line 534
    .end local v3    # "supportedType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_1
    const-string/jumbo v1, "video/dolby-vision"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 543
    const-string v1, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    const-string/jumbo v1, "video/hevcdv"

    return-object v1

    .line 545
    :cond_2
    const-string v1, "OMX.RTK.video.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 546
    const-string v1, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 547
    :cond_3
    const-string/jumbo v1, "video/dv_hevc"

    return-object v1

    .line 549
    :cond_4
    const-string/jumbo v1, "video/mv-hevc"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 551
    const-string v1, "c2.qti.mvhevc.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "c2.qti.mvhevc.decoder.secure"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 552
    :cond_5
    const-string/jumbo v1, "video/x-mvhevc"

    return-object v1

    .line 554
    :cond_6
    const-string v1, "audio/alac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.lge.alac.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 555
    const-string v1, "audio/x-lg-alac"

    return-object v1

    .line 556
    :cond_7
    const-string v1, "audio/flac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "OMX.lge.flac.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 557
    const-string v1, "audio/x-lg-flac"

    return-object v1

    .line 558
    :cond_8
    const-string v1, "audio/ac3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "OMX.lge.ac3.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 559
    const-string v1, "audio/lg-ac3"

    return-object v1

    .line 562
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 1
    .param p0, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    invoke-static {p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 133
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 152
    :try_start_0
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 153
    .local v1, "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v2, "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    if-eqz v2, :cond_0

    .line 155
    monitor-exit v0

    return-object v2

    .line 160
    :cond_0
    :try_start_1
    const-string/jumbo v3, "video/mv-hevc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 161
    .local v3, "specialCodec":Z
    new-instance v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v4, p1, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZZ)V

    .line 163
    .local v4, "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v1, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object v5

    .line 164
    .local v5, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 178
    :cond_1
    invoke-static {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 180
    .local v6, "immutableDecoderInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    sget-object v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit v0

    return-object v6

    .line 151
    .end local v1    # "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .end local v2    # "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "specialCodec":Z
    .end local v4    # "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .end local v5    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v6    # "immutableDecoderInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local p0    # "mimeType":Ljava/lang/String;
    .end local p1    # "secure":Z
    .end local p2    # "tunneling":Z
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "key"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 428
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "secure-playback"

    const-string/jumbo v3, "tunneled-playback"

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v4, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    move-object v7, v5

    .line 430
    .local v7, "mimeType":Ljava/lang/String;
    invoke-interface {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v5

    .line 431
    .local v5, "numberOfCodecs":I
    invoke-interface {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v6

    move v15, v6

    .line 433
    .local v15, "secureDecodersExplicit":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_d

    .line 434
    invoke-interface {v2, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 435
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isAlias(Landroid/media/MediaCodecInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 438
    move-object/from16 v20, v0

    move/from16 v22, v6

    goto/16 :goto_3

    .line 440
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "name":Ljava/lang/String;
    invoke-static {v8, v9, v15, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 442
    move-object/from16 v20, v0

    move/from16 v22, v6

    goto/16 :goto_3

    .line 444
    :cond_1
    invoke-static {v8, v9, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 445
    .local v10, "codecMimeType":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 446
    move-object/from16 v20, v0

    move/from16 v22, v6

    goto/16 :goto_3

    .line 449
    :cond_2
    :try_start_1
    invoke-virtual {v8, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v11

    .line 450
    .local v11, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    nop

    .line 451
    invoke-interface {v2, v3, v10, v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    move/from16 v16, v12

    .line 453
    .local v16, "tunnelingSupported":Z
    nop

    .line 454
    invoke-interface {v2, v3, v10, v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    move/from16 v17, v12

    .line 456
    .local v17, "tunnelingRequired":Z
    iget-boolean v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v12, :cond_3

    if-nez v17, :cond_4

    :cond_3
    iget-boolean v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v12, :cond_5

    if-nez v16, :cond_5

    .line 457
    :cond_4
    move-object/from16 v20, v0

    move/from16 v22, v6

    goto/16 :goto_3

    .line 459
    :cond_5
    nop

    .line 460
    invoke-interface {v2, v0, v10, v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 462
    .local v12, "secureSupported":Z
    nop

    .line 463
    invoke-interface {v2, v0, v10, v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    move/from16 v18, v13

    .line 465
    .local v18, "secureRequired":Z
    iget-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v13, :cond_6

    if-nez v18, :cond_7

    :cond_6
    iget-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v13, :cond_8

    if-nez v12, :cond_8

    .line 466
    :cond_7
    move-object/from16 v20, v0

    move/from16 v22, v6

    goto/16 :goto_3

    .line 468
    :cond_8
    invoke-static {v8, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v13

    .line 469
    .local v13, "hardwareAccelerated":Z
    invoke-static {v8, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v14

    .line 470
    .local v14, "softwareOnly":Z
    invoke-static {v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 471
    .local v19, "vendor":Z
    if-eqz v15, :cond_9

    move-object/from16 v20, v0

    :try_start_2
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v0, v12, :cond_a

    goto :goto_1

    .line 499
    .end local v11    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v12    # "secureSupported":Z
    .end local v13    # "hardwareAccelerated":Z
    .end local v14    # "softwareOnly":Z
    .end local v16    # "tunnelingSupported":Z
    .end local v17    # "tunnelingRequired":Z
    .end local v18    # "secureRequired":Z
    .end local v19    # "vendor":Z
    :catch_0
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v21, v8

    move-object v6, v9

    move-object v8, v10

    goto/16 :goto_4

    .line 471
    .restart local v11    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v12    # "secureSupported":Z
    .restart local v13    # "hardwareAccelerated":Z
    .restart local v14    # "softwareOnly":Z
    .restart local v16    # "tunnelingSupported":Z
    .restart local v17    # "tunnelingRequired":Z
    .restart local v18    # "secureRequired":Z
    .restart local v19    # "vendor":Z
    :cond_9
    move-object/from16 v20, v0

    :goto_1
    if-nez v15, :cond_b

    :try_start_3
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v0, :cond_b

    .line 473
    :cond_a
    nop

    .line 474
    move-object/from16 v21, v8

    move-object v8, v10

    move v10, v13

    .end local v13    # "hardwareAccelerated":Z
    .local v8, "codecMimeType":Ljava/lang/String;
    .local v10, "hardwareAccelerated":Z
    .local v21, "codecInfo":Landroid/media/MediaCodecInfo;
    const/4 v13, 0x0

    move/from16 v22, v6

    move-object v6, v9

    move-object v9, v11

    move v11, v14

    .end local v14    # "softwareOnly":Z
    .local v6, "name":Ljava/lang/String;
    .local v9, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .local v11, "softwareOnly":Z
    .local v22, "i":I
    const/4 v14, 0x0

    move v0, v12

    move/from16 v12, v19

    .end local v19    # "vendor":Z
    .local v0, "secureSupported":Z
    .local v12, "vendor":Z
    :try_start_4
    invoke-static/range {v6 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v13

    .line 473
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 499
    .end local v0    # "secureSupported":Z
    .end local v9    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v16    # "tunnelingSupported":Z
    .end local v17    # "tunnelingRequired":Z
    .end local v18    # "secureRequired":Z
    :catch_1
    move-exception v0

    goto :goto_4

    .line 471
    .end local v21    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v22    # "i":I
    .local v6, "i":I
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    .local v9, "name":Ljava/lang/String;
    .local v10, "codecMimeType":Ljava/lang/String;
    .local v11, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .local v12, "secureSupported":Z
    .restart local v13    # "hardwareAccelerated":Z
    .restart local v14    # "softwareOnly":Z
    .restart local v16    # "tunnelingSupported":Z
    .restart local v17    # "tunnelingRequired":Z
    .restart local v18    # "secureRequired":Z
    .restart local v19    # "vendor":Z
    :cond_b
    move/from16 v22, v6

    move-object/from16 v21, v8

    move-object v6, v9

    move-object v8, v10

    move-object v9, v11

    move v0, v12

    move v10, v13

    move v11, v14

    move/from16 v12, v19

    .line 484
    .end local v13    # "hardwareAccelerated":Z
    .end local v14    # "softwareOnly":Z
    .end local v19    # "vendor":Z
    .restart local v0    # "secureSupported":Z
    .local v6, "name":Ljava/lang/String;
    .local v8, "codecMimeType":Ljava/lang/String;
    .local v9, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .local v10, "hardwareAccelerated":Z
    .local v11, "softwareOnly":Z
    .local v12, "vendor":Z
    .restart local v21    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v22    # "i":I
    if-nez v15, :cond_c

    if-eqz v0, :cond_c

    .line 485
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ".secure"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 486
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v23, v6

    move-object v6, v3

    move-object/from16 v3, v23

    .end local v6    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_6
    invoke-static/range {v6 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v6

    .line 485
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 497
    return-object v4

    .line 499
    .end local v0    # "secureSupported":Z
    .end local v9    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v16    # "tunnelingSupported":Z
    .end local v17    # "tunnelingRequired":Z
    .end local v18    # "secureRequired":Z
    :catch_2
    move-exception v0

    move-object v6, v3

    goto :goto_4

    .end local v3    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v3, v6

    .end local v6    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_4

    .line 509
    .end local v3    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_c
    :goto_2
    nop

    .line 433
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "codecMimeType":Ljava/lang/String;
    .end local v21    # "codecInfo":Landroid/media/MediaCodecInfo;
    :goto_3
    add-int/lit8 v6, v22, 0x1

    move-object/from16 v0, v20

    .end local v22    # "i":I
    .local v6, "i":I
    goto/16 :goto_0

    .line 499
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    .local v9, "name":Ljava/lang/String;
    .local v10, "codecMimeType":Ljava/lang/String;
    :catch_4
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v21, v8

    move-object v6, v9

    move-object v8, v10

    .line 500
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "codecMimeType":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .local v6, "name":Ljava/lang/String;
    .local v8, "codecMimeType":Ljava/lang/String;
    .restart local v21    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v22    # "i":I
    :goto_4
    nop

    .line 506
    :try_start_7
    const-string v3, "MediaCodecUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to query codec "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    nop

    .end local p0    # "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .end local p1    # "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "codecMimeType":Ljava/lang/String;
    .end local v21    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v22    # "i":I
    .restart local p0    # "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .restart local p1    # "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    :cond_d
    return-object v4

    .line 512
    .end local v4    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v5    # "numberOfCodecs":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v15    # "secureDecodersExplicit":Z
    :catch_5
    move-exception v0

    .line 515
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    throw v3
.end method

.method public static getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 3
    .param p0, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.sampleMimeType"
        }
    .end annotation

    .line 211
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 212
    invoke-interface {p0, v0, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    nop

    .line 215
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 219
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 217
    return-object v2
.end method

.method public static getDecoderInfosSortedByFormatSupport(Landroid/content/Context;Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 262
    .local p1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 263
    .end local p1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 266
    return-object v0
.end method

.method public static getDecoderInfosSortedByFullFormatSupport(Landroid/content/Context;Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 276
    .local p1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    .end local p1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 282
    return-object v0
.end method

.method public static getDecoderInfosSortedBySoftwareOnly(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 295
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .end local p0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 299
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getDecryptOnlyDecoderInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 116
    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getHevcBaseLayerCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 3
    .param p0, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "codecs":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 361
    const/4 v1, 0x0

    return-object v1

    .line 363
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "parts":[Ljava/lang/String;
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static isAlias(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 664
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isAliasV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAliasV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 669
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v0

    return v0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string v0, ".secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    nop

    .line 599
    nop

    .line 605
    const/4 v0, 0x1

    return v0

    .line 580
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 679
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 683
    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 688
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 4
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 697
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 699
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 701
    return v1

    .line 703
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "codecName":Ljava/lang/String;
    const-string v2, "arc."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 706
    return v3

    .line 708
    :cond_2
    const-string/jumbo v2, "omx.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 709
    const-string/jumbo v2, "omx.ffmpeg."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 710
    const-string/jumbo v2, "omx.sec."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ".sw."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 711
    :cond_3
    const-string/jumbo v2, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 712
    const-string v2, "c2.android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 713
    const-string v2, "c2.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 714
    const-string/jumbo v2, "omx."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "c2."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    :goto_0
    nop

    .line 708
    :goto_1
    return v1
.end method

.method private static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 719
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v0

    return v0
.end method

.method private static isVendor(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 727
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 728
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "codecName":Ljava/lang/String;
    const-string/jumbo v1, "omx.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    const-string v1, "c2.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 733
    const-string v1, "c2.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 731
    :goto_0
    return v1
.end method

.method private static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 738
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$applyWorkarounds$3(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 3
    .param p0, "decoderInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 639
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 640
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    const/4 v1, -0x1

    return v1

    .line 649
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 642
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$getDecoderInfosSortedByFormatSupport$0(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 265
    invoke-virtual {p2, p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatFunctionallySupported(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getDecoderInfosSortedByFullFormatSupport$1(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 280
    invoke-virtual {p2, p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getDecoderInfosSortedBySoftwareOnly$2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 2
    .param p0, "decoderInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 298
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->softwareOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->vendor:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$sortByScore$4(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "scoreProvider"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 787
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 308
    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "result":I
    nop

    .line 312
    const-string/jumbo v1, "video/avc"

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 313
    .local v1, "decoderInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 315
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 314
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const v2, 0x54600

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 320
    :cond_1
    sput v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 322
    .end local v0    # "result":I
    .end local v1    # "decoderInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    :cond_2
    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 787
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "scoreProvider":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;, "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<TT;>;"
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 788
    return-void
.end method

.method public static warmDecoderInfoCache(Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z

    .line 95
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    const-string v1, "MediaCodecUtil"

    const-string v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    :goto_0
    return-void
.end method
