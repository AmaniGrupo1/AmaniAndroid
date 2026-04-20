.class public Landroidx/media3/exoplayer/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field public static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final METADATA_RENDERER_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private allowedVideoJoiningTimeMs:J

.field private final codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

.field private final context:Landroid/content/Context;

.field private enableAudioOutputPlaybackParameters:Z

.field private enableDecoderFallback:Z

.field private enableFloatOutput:Z

.field private enableMediaCodecBufferDecodeOnlyFlag:Z

.field private enableMediaCodecVideoRendererDurationToProgressUs:Z

.field private enableMediaCodecVideoRendererPrewarming:Z

.field private extensionRendererMode:I

.field private lateThresholdToDropDecoderInputUs:J

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private parseAv1SampleDependencies:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 136
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    .line 138
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 139
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->parseAv1SampleDependencies:Z

    .line 141
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    .line 142
    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p4, "enableDecoderFallback"    # Z
    .param p5, "audioSink"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p6, "eventHandler"    # Landroid/os/Handler;
    .param p7, "eventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Z",
            "Landroidx/media3/exoplayer/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Landroidx/media3/exoplayer/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 632
    .local p8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    move/from16 v1, p2

    move-object/from16 v10, p8

    const-string v11, "DefaultRenderersFactory"

    new-instance v2, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v4

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink;)V

    .line 641
    .local v2, "audioRenderer":Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    if-nez v1, :cond_0

    .line 644
    return-void

    .line 646
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    .local v0, "extensionRendererIndex":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 648
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_0

    .line 647
    :cond_1
    move v4, v0

    .line 653
    .end local v0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v12, 0x1

    :try_start_0
    const-string v0, "androidx.media3.decoder.midi.MidiRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 657
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v6

    const-class v14, Landroid/os/Handler;

    aput-object v14, v13, v12

    const-class v14, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    aput-object v14, v13, v3

    const-class v14, Landroidx/media3/exoplayer/audio/AudioSink;

    aput-object v14, v13, v5

    .line 658
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 664
    .local v13, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v14, p1

    :try_start_1
    filled-new-array {v14, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v15

    .line 665
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/exoplayer/Renderer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 666
    .local v15, "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .local v16, "extensionRendererIndex":I
    :try_start_2
    invoke-virtual {v10, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 667
    const-string v4, "Loaded MidiRenderer."

    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 673
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    move/from16 v4, v16

    goto :goto_3

    .line 670
    :catch_0
    move-exception v0

    move/from16 v4, v16

    goto :goto_1

    .line 668
    :catch_1
    move-exception v0

    move/from16 v4, v16

    goto :goto_2

    .line 670
    .end local v16    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_2
    move-exception v0

    goto :goto_1

    .line 668
    :catch_3
    move-exception v0

    goto :goto_2

    .line 670
    :catch_4
    move-exception v0

    move-object/from16 v14, p1

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Error instantiating MIDI extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    .line 673
    :goto_2
    nop

    .line 677
    :goto_3
    :try_start_3
    const-string v0, "androidx.media3.decoder.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 681
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v13, v5, [Ljava/lang/Class;

    const-class v15, Landroid/os/Handler;

    aput-object v15, v13, v6

    const-class v15, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    aput-object v15, v13, v12

    const-class v15, Landroidx/media3/exoplayer/audio/AudioSink;

    aput-object v15, v13, v3

    .line 682
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 687
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v15

    .line 688
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/exoplayer/Renderer;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 689
    .restart local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .restart local v16    # "extensionRendererIndex":I
    :try_start_4
    invoke-virtual {v10, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 690
    const-string v4, "Loaded LibopusAudioRenderer."

    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 696
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    move/from16 v4, v16

    goto :goto_6

    .line 693
    :catch_6
    move-exception v0

    move/from16 v4, v16

    goto :goto_4

    .line 691
    :catch_7
    move-exception v0

    move/from16 v4, v16

    goto :goto_5

    .line 693
    .end local v16    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_8
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Error instantiating Opus extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 696
    :goto_5
    nop

    .line 700
    :goto_6
    :try_start_5
    const-string v0, "androidx.media3.decoder.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 704
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v13, v5, [Ljava/lang/Class;

    const-class v15, Landroid/os/Handler;

    aput-object v15, v13, v6

    const-class v15, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    aput-object v15, v13, v12

    const-class v15, Landroidx/media3/exoplayer/audio/AudioSink;

    aput-object v15, v13, v3

    .line 705
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 710
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v15

    .line 711
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/exoplayer/Renderer;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    .line 712
    .restart local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .restart local v16    # "extensionRendererIndex":I
    :try_start_6
    invoke-virtual {v10, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 713
    const-string v4, "Loaded LibflacAudioRenderer."

    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 719
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    move/from16 v4, v16

    goto :goto_9

    .line 716
    :catch_a
    move-exception v0

    move/from16 v4, v16

    goto :goto_7

    .line 714
    :catch_b
    move-exception v0

    move/from16 v4, v16

    goto :goto_8

    .line 716
    .end local v16    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_c
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Error instantiating FLAC extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 714
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .line 719
    :goto_8
    nop

    .line 723
    :goto_9
    :try_start_7
    const-string v0, "androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 727
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v13, v5, [Ljava/lang/Class;

    const-class v15, Landroid/os/Handler;

    aput-object v15, v13, v6

    const-class v15, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    aput-object v15, v13, v12

    const-class v15, Landroidx/media3/exoplayer/audio/AudioSink;

    aput-object v15, v13, v3

    .line 728
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 733
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v15

    .line 734
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/exoplayer/Renderer;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    .line 735
    .restart local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .restart local v16    # "extensionRendererIndex":I
    :try_start_8
    invoke-virtual {v10, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 736
    const-string v4, "Loaded FfmpegAudioRenderer."

    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    .line 742
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "renderer":Landroidx/media3/exoplayer/Renderer;
    move/from16 v4, v16

    goto :goto_c

    .line 739
    :catch_e
    move-exception v0

    move/from16 v4, v16

    goto :goto_a

    .line 737
    :catch_f
    move-exception v0

    move/from16 v4, v16

    goto :goto_b

    .line 739
    .end local v16    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_10
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Error instantiating FFmpeg extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 737
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 742
    :goto_b
    nop

    .line 746
    :goto_c
    :try_start_9
    const-string v0, "androidx.media3.decoder.iamf.IamfAudioRenderer$Builder"

    .line 747
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 750
    .local v0, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v13, v12, [Ljava/lang/Class;

    const-class v15, Landroidx/media3/exoplayer/audio/AudioSink;

    aput-object v15, v13, v6

    .line 751
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 752
    .local v13, "builderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 755
    .local v15, "builder":Ljava/lang/Object;
    const-class v16, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    :try_end_9
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_15

    .line 757
    .local v16, "audioRenderEventListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v17, v12

    :try_start_a
    const-string/jumbo v12, "setEventHandlerAndListener"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v18, Landroid/os/Handler;

    aput-object v18, v5, v6

    aput-object v16, v5, v17

    .line 758
    invoke-virtual {v0, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array/range {p6 .. p7}, [Ljava/lang/Object;

    move-result-object v12

    .line 759
    invoke-virtual {v5, v15, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v5, "build"

    new-array v12, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v15, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/Renderer;

    .line 762
    .local v5, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15

    .line 763
    add-int/lit8 v12, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .local v12, "extensionRendererIndex":I
    :try_start_b
    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 764
    const-string v4, "Loaded IamfAudioRenderer."

    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_12

    .line 770
    .end local v0    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v13    # "builderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "builder":Ljava/lang/Object;
    .end local v16    # "audioRenderEventListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_f

    .line 767
    :catch_12
    move-exception v0

    move v4, v12

    goto :goto_d

    .line 765
    :catch_13
    move-exception v0

    move v4, v12

    goto :goto_e

    .end local v12    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_14
    move-exception v0

    goto :goto_e

    .line 767
    :catch_15
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    :goto_d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Error instantiating IAMF extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 765
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v0

    move/from16 v17, v12

    .line 770
    :goto_e
    move v12, v4

    .line 774
    .end local v4    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :goto_f
    :try_start_c
    const-string v0, "androidx.media3.decoder.mpegh.MpeghAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 778
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Handler;

    aput-object v5, v4, v6

    const-class v5, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    aput-object v5, v4, v17

    const-class v5, Landroidx/media3/exoplayer/audio/AudioSink;

    aput-object v5, v4, v3

    .line 779
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 784
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v4

    .line 785
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/Renderer;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_19

    .line 786
    .local v4, "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "extensionRendererIndex":I
    .local v5, "extensionRendererIndex":I
    :try_start_d
    invoke-virtual {v10, v12, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 787
    const-string v6, "Loaded MpeghAudioRenderer."

    invoke-static {v11, v6}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17

    .line 793
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "renderer":Landroidx/media3/exoplayer/Renderer;
    goto :goto_12

    .line 790
    :catch_17
    move-exception v0

    move v12, v5

    goto :goto_10

    .line 788
    :catch_18
    move-exception v0

    move v12, v5

    goto :goto_11

    .line 790
    .end local v5    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :catch_19
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    :goto_10
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error instantiating MPEG-H extension"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 788
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v0

    .line 793
    :goto_11
    move v5, v12

    .line 794
    .end local v12    # "extensionRendererIndex":I
    .restart local v5    # "extensionRendererIndex":I
    :goto_12
    return-void
.end method

.method protected buildAudioSink(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableFloatOutput"    # Z
    .param p3, "enableAudioOutputPlaybackParams"    # Z

    .line 899
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    .line 900
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 901
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableAudioOutputPlaybackParameters(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object v0

    .line 899
    return-object v0
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 843
    .local p3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    return-void
.end method

.method protected buildImageRenderers(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 864
    .local p2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildImageRenderers(Ljava/util/ArrayList;)V

    .line 865
    return-void
.end method

.method protected buildImageRenderers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    .local p1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    new-instance v0, Landroidx/media3/exoplayer/image/ImageRenderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->getImageDecoderFactory(Landroid/content/Context;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/image/ImageRenderer;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/image/ImageOutput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Landroidx/media3/exoplayer/metadata/MetadataOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 829
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 830
    new-instance v1, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    invoke-direct {v1, p2, p3}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 881
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    return-void
.end method

.method protected buildSecondaryVideoRenderer(Landroidx/media3/exoplayer/Renderer;Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;J)Landroidx/media3/exoplayer/Renderer;
    .locals 3
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "extensionRendererMode"    # I
    .param p4, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p5, "enableDecoderFallback"    # Z
    .param p6, "eventHandler"    # Landroid/os/Handler;
    .param p7, "eventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p8, "allowedVideoJoiningTimeMs"    # J

    .line 960
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecVideoRendererPrewarming:Z

    if-eqz v0, :cond_1

    .line 961
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    if-ne v0, v1, :cond_1

    .line 962
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 964
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setCodecAdapterFactory(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 965
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 966
    invoke-virtual {v0, p8, p9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 967
    invoke-virtual {v0, p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 968
    invoke-virtual {v0, p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 969
    invoke-virtual {v0, p7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 970
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->parseAv1SampleDependencies:Z

    .line 971
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetParseAv1SampleDependencies(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    .line 972
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetLateThresholdToDropDecoderInputUs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 973
    .local v0, "builder":Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 974
    iget-boolean v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecBufferDecodeOnlyFlag:Z

    .line 975
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 978
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->build()Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    move-result-object v1

    return-object v1

    .line 980
    .end local v0    # "builder":Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected buildTextRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Landroidx/media3/exoplayer/text/TextOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 811
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    new-instance v0, Landroidx/media3/exoplayer/text/TextRenderer;

    invoke-direct {v0, p2, p3}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p4, "enableDecoderFallback"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p7, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Z",
            "Landroid/os/Handler;",
            "Landroidx/media3/exoplayer/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p9, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    const-string v6, "DefaultRenderersFactory"

    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setCodecAdapterFactory(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 496
    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 497
    move-wide/from16 v9, p7

    invoke-virtual {v0, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 498
    move/from16 v11, p4

    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 500
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 501
    const/16 v12, 0x32

    .line 539
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 501
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    iget-boolean v12, v1, Landroidx/media3/exoplayer/DefaultRenderersFactory;->parseAv1SampleDependencies:Z

    .line 502
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetParseAv1SampleDependencies(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    iget-wide v14, v1, Landroidx/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    .line 503
    invoke-virtual {v0, v14, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetLateThresholdToDropDecoderInputUs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    iget-boolean v12, v1, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecVideoRendererDurationToProgressUs:Z

    .line 504
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDurationToProgressUs(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    .line 505
    .local v0, "videoRendererBuilder":Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x22

    if-lt v12, v14, :cond_0

    .line 506
    iget-boolean v12, v1, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecBufferDecodeOnlyFlag:Z

    .line 507
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 505
    :cond_0
    move-object v12, v0

    .line 510
    .end local v0    # "videoRendererBuilder":Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .local v12, "videoRendererBuilder":Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    :goto_0
    invoke-virtual {v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->build()Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    if-nez v2, :cond_1

    .line 513
    return-void

    .line 515
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 516
    .local v0, "extensionRendererIndex":I
    const/4 v14, 0x2

    if-ne v2, v14, :cond_2

    .line 517
    add-int/lit8 v0, v0, -0x1

    move v15, v0

    goto :goto_1

    .line 516
    :cond_2
    move v15, v0

    .line 522
    .end local v0    # "extensionRendererIndex":I
    .local v15, "extensionRendererIndex":I
    :goto_1
    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v18, v14

    const/4 v14, 0x4

    const/16 v19, 0x1

    :try_start_0
    const-string v0, "androidx.media3.decoder.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 526
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v14, [Ljava/lang/Class;

    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v20, v1, v17

    const-class v20, Landroid/os/Handler;

    aput-object v20, v1, v19

    const-class v20, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    aput-object v20, v1, v18

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v1, v16

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 533
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 536
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 539
    filled-new-array {v14, v3, v4, v13}, [Ljava/lang/Object;

    move-result-object v14

    .line 535
    invoke-virtual {v1, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 540
    .local v14, "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v21, v15, 0x1

    .end local v15    # "extensionRendererIndex":I
    .local v21, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v5, v15, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 541
    const-string v15, "Loaded LibvpxVideoRenderer."

    invoke-static {v6, v15}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v14    # "renderer":Landroidx/media3/exoplayer/Renderer;
    move/from16 v15, v21

    goto :goto_4

    .line 544
    :catch_0
    move-exception v0

    move/from16 v15, v21

    goto :goto_2

    .line 542
    :catch_1
    move-exception v0

    move/from16 v15, v21

    goto :goto_3

    .line 544
    .end local v21    # "extensionRendererIndex":I
    .restart local v15    # "extensionRendererIndex":I
    :catch_2
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "Error instantiating VP9 extension"

    invoke-direct {v1, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 547
    :goto_3
    nop

    .line 551
    :goto_4
    :try_start_2
    const-string v0, "androidx.media3.decoder.av1.Libdav1dVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 555
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    new-array v14, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v14, v17

    const-class v1, Landroid/os/Handler;

    aput-object v1, v14, v19

    const-class v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    aput-object v1, v14, v18

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v14, v16

    .line 556
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 562
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 565
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 568
    filled-new-array {v14, v3, v4, v13}, [Ljava/lang/Object;

    move-result-object v14

    .line 564
    invoke-virtual {v1, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 569
    .restart local v14    # "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v21, v15, 0x1

    .end local v15    # "extensionRendererIndex":I
    .restart local v21    # "extensionRendererIndex":I
    :try_start_3
    invoke-virtual {v5, v15, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 570
    const-string v15, "Loaded Libdav1dVideoRenderer."

    invoke-static {v6, v15}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 576
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v14    # "renderer":Landroidx/media3/exoplayer/Renderer;
    move/from16 v15, v21

    goto :goto_7

    .line 573
    :catch_4
    move-exception v0

    move/from16 v15, v21

    goto :goto_5

    .line 571
    :catch_5
    move-exception v0

    move/from16 v15, v21

    goto :goto_6

    .line 573
    .end local v21    # "extensionRendererIndex":I
    .restart local v15    # "extensionRendererIndex":I
    :catch_6
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "Error instantiating AV1 extension"

    invoke-direct {v1, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 576
    :goto_6
    nop

    .line 580
    :goto_7
    :try_start_4
    const-string v0, "androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer"

    .line 581
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 585
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v1, v17

    const-class v14, Landroid/os/Handler;

    aput-object v14, v1, v19

    const-class v14, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    aput-object v14, v1, v18

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v1, v16

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 592
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 595
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 598
    filled-new-array {v14, v3, v4, v13}, [Ljava/lang/Object;

    move-result-object v13

    .line 594
    invoke-virtual {v1, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 599
    .local v13, "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "extensionRendererIndex":I
    .local v14, "extensionRendererIndex":I
    :try_start_5
    invoke-virtual {v5, v15, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 600
    const-string v15, "Loaded FfmpegVideoRenderer."

    invoke-static {v6, v15}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 606
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "renderer":Landroidx/media3/exoplayer/Renderer;
    goto :goto_a

    .line 603
    :catch_8
    move-exception v0

    move v15, v14

    goto :goto_8

    .line 601
    :catch_9
    move-exception v0

    move v15, v14

    goto :goto_9

    .line 603
    .end local v14    # "extensionRendererIndex":I
    .restart local v15    # "extensionRendererIndex":I
    :catch_a
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 606
    :goto_9
    move v14, v15

    .line 607
    .end local v15    # "extensionRendererIndex":I
    .restart local v14    # "extensionRendererIndex":I
    :goto_a
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 10
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "videoRendererEventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p3, "audioRendererEventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p4, "textRendererOutput"    # Landroidx/media3/exoplayer/text/TextOutput;
    .param p5, "metadataRendererOutput"    # Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 427
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v5, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v7, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v6, p2

    move-object v9, v5

    move-object v5, p1

    .end local v5    # "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    .local v9, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 438
    move-object v5, v9

    .end local v9    # "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    .restart local v5    # "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableFloatOutput:Z

    iget-boolean v3, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableAudioOutputPlaybackParameters:Z

    .line 439
    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildAudioSink(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;

    move-result-object v1

    .line 440
    .local v1, "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    if-eqz v1, :cond_0

    .line 441
    move-object v8, v5

    move-object v5, v1

    .end local v1    # "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    .local v5, "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    .local v8, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    move-object v0, p0

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    move-object v6, v5

    move-object v5, v8

    .end local v8    # "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    .local v5, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/Renderer;>;"
    .local v6, "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    goto :goto_0

    .line 440
    .end local v6    # "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    .restart local v1    # "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    :cond_0
    move-object v6, v1

    .line 451
    .end local v1    # "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    .restart local v6    # "audioSink":Landroidx/media3/exoplayer/audio/AudioSink;
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 454
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    .line 451
    move-object v0, p0

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 457
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 460
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    .line 457
    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 463
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v1, v2, v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 464
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildImageRenderers(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 465
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v1, p1, v2, v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 466
    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/Renderer;

    return-object v1
.end method

.method public createSecondaryRenderer(Landroidx/media3/exoplayer/Renderer;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)Landroidx/media3/exoplayer/Renderer;
    .locals 10
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "videoRendererEventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p4, "audioRendererEventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p5, "textRendererOutput"    # Landroidx/media3/exoplayer/text/TextOutput;
    .param p6, "metadataRendererOutput"    # Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 914
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 915
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v3, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildSecondaryVideoRenderer(Landroidx/media3/exoplayer/Renderer;Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;J)Landroidx/media3/exoplayer/Renderer;

    move-result-object v2

    return-object v2

    .line 925
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "enableMediaCodecBufferDecodeOnlyFlag"    # Z

    .line 348
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecBufferDecodeOnlyFlag:Z

    .line 349
    return-object p0
.end method

.method public final experimentalSetEnableMediaCodecVideoRendererPrewarming(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "enableMediaCodecVideoRendererPrewarming"    # Z

    .line 308
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecVideoRendererPrewarming:Z

    .line 309
    return-object p0
.end method

.method public final experimentalSetLateThresholdToDropDecoderInputUs(J)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "lateThresholdToDropDecoderInputUs"    # J

    .line 416
    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    .line 417
    return-object p0
.end method

.method public final experimentalSetMediaCodecAsyncCryptoFlagEnabled(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 1
    .param p1, "enableAsyncCryptoFlag"    # Z

    .line 200
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->experimentalSetAsyncCryptoFlagEnabled(Z)Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 201
    return-object p0
.end method

.method public final experimentalSetParseAv1SampleDependencies(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "parseAv1SampleDependencies"    # Z

    .line 327
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->parseAv1SampleDependencies:Z

    .line 328
    return-object p0
.end method

.method public final forceDisableMediaCodecAsynchronousQueueing()Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->forceDisableAsynchronous()Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 186
    return-object p0
.end method

.method public final forceEnableMediaCodecAsynchronousQueueing()Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->forceEnableAsynchronous()Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 173
    return-object p0
.end method

.method protected getCodecAdapterFactory()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .locals 1

    .line 988
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    return-object v0
.end method

.method protected getImageDecoderFactory(Landroid/content/Context;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 994
    new-instance v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final setAllowedVideoJoiningTimeMs(J)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "allowedVideoJoiningTimeMs"    # J

    .line 393
    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 394
    return-object p0
.end method

.method public final setEnableAudioFloatOutput(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "enableFloatOutput"    # Z

    .line 246
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableFloatOutput:Z

    .line 247
    return-object p0
.end method

.method public final setEnableAudioOutputPlaybackParameters(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "enableAudioOutputPlaybackParameters"    # Z

    .line 281
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableAudioOutputPlaybackParameters:Z

    .line 282
    return-object p0
.end method

.method public final setEnableAudioTrackPlaybackParams(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 1
    .param p1, "enableAudioTrackPlaybackParams"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableAudioOutputPlaybackParameters(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    return-object v0
.end method

.method public final setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "enableDecoderFallback"    # Z

    .line 214
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    .line 215
    return-object p0
.end method

.method public setEnableMediaCodecVideoRendererDurationToProgressUs(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "enableMediaCodecVideoRendererDurationToProgressUs"    # Z

    .line 375
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecVideoRendererDurationToProgressUs:Z

    .line 377
    return-object p0
.end method

.method public final setExtensionRendererMode(I)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "extensionRendererMode"    # I

    .line 157
    iput p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    .line 158
    return-object p0
.end method

.method public final setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0
    .param p1, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 229
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 230
    return-object p0
.end method
