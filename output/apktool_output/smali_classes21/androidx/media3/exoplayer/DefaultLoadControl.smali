.class public Landroidx/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Landroidx/media3/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;,
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;,
        Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_FOR_LOCAL_PLAYBACK_MS:I = 0x3e8

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x7d0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_FOR_LOCAL_PLAYBACK_MS:I = 0x3e8

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x3e8

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_IMAGE_BUFFER_SIZE:I = 0x1900000

.field public static final DEFAULT_MAX_BUFFER_FOR_LOCAL_PLAYBACK_MS:I = 0xc350

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MAX_BUFFER_SIZE:I = 0xc880000

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_FOR_LOCAL_PLAYBACK_MS:I = 0x3e8

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x89a0000

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = false

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS_FOR_LOCAL_PLAYBACK:Z = true

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD:I = 0x8980000

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x7d00000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK:I = 0x12c0000

.field public static final LOCAL_PLAYBACK_SCHEMES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferForLocalPlaybackUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackForLocalPlaybackUs:J

.field private final bufferForPlaybackUs:J

.field private final loadingStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBufferForLocalPlaybackUs:J

.field private final maxBufferUs:J

.field private final minBufferForLocalPlaybackUs:J

.field private final minBufferUs:J

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final playerTargetBufferBytesOverwrites:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final prioritizeTimeOverSizeThresholdsForLocalPlayback:Z

.field private final retainBackBufferFromKeyframe:Z

.field private final targetBufferBytesOverwrite:I

.field private threadId:J

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 191
    nop

    .line 192
    const-string v0, "file"

    const-string v1, "content"

    const-string v2, "data"

    const-string v3, "android.resource"

    const-string/jumbo v4, "rawresource"

    const-string v5, "asset"

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/DefaultLoadControl;->LOCAL_PLAYBACK_SCHEMES:Lcom/google/common/collect/ImmutableList;

    .line 191
    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 581
    new-instance v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v2, 0xc350

    const/16 v3, 0x3e8

    const v4, 0xc350

    const v5, 0xc350

    const/16 v6, 0x3e8

    const/16 v7, 0x3e8

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZZIZ)V

    .line 596
    return-void
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZZIZ)V
    .locals 16
    .param p1, "allocator"    # Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "minBufferForLocalPlaybackMs"    # I
    .param p4, "maxBufferMs"    # I
    .param p5, "maxBufferForLocalPlaybackMs"    # I
    .param p6, "bufferForPlaybackMs"    # I
    .param p7, "bufferForPlaybackForLocalPlaybackMs"    # I
    .param p8, "bufferForPlaybackAfterRebufferMs"    # I
    .param p9, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"    # I
    .param p10, "targetBufferBytes"    # I
    .param p11, "prioritizeTimeOverSizeThresholds"    # Z
    .param p12, "prioritizeTimeOverSizeThresholdsForLocalPlayback"    # Z
    .param p13, "backBufferDurationMs"    # I
    .param p14, "retainBackBufferFromKeyframe"    # Z

    .line 686
    nop

    .line 701
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v15

    .line 686
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZZIZLjava/util/Map;)V

    .line 702
    return-void
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZZIZLjava/util/Map;)V
    .locals 16
    .param p1, "allocator"    # Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "minBufferForLocalPlaybackMs"    # I
    .param p4, "maxBufferMs"    # I
    .param p5, "maxBufferForLocalPlaybackMs"    # I
    .param p6, "bufferForPlaybackMs"    # I
    .param p7, "bufferForPlaybackForLocalPlaybackMs"    # I
    .param p8, "bufferForPlaybackAfterRebufferMs"    # I
    .param p9, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"    # I
    .param p10, "targetBufferBytes"    # I
    .param p11, "prioritizeTimeOverSizeThresholds"    # Z
    .param p12, "prioritizeTimeOverSizeThresholdsForLocalPlayback"    # Z
    .param p13, "backBufferDurationMs"    # I
    .param p14, "retainBackBufferFromKeyframe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/DefaultAllocator;",
            "IIIIIIIIIZZIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 613
    .local p15, "playerTargetBufferBytes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p13

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v10, 0x0

    const-string v11, "bufferForPlaybackMs"

    const-string v12, "0"

    invoke-static {v5, v10, v11, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v13, "bufferForPlaybackForLocalPlaybackMs"

    invoke-static {v6, v10, v13, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v14, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v7, v10, v14, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v15, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"

    invoke-static {v8, v10, v15, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v10, "minBufferMs"

    invoke-static {v1, v5, v10, v11}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v11, "minBufferForLocalPlaybackMs"

    invoke-static {v2, v6, v11, v13}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v1, v7, v10, v14}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {v2, v8, v11, v15}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v13, "maxBufferMs"

    invoke-static {v3, v1, v13, v10}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v10, "maxBufferForLocalPlaybackMs"

    invoke-static {v4, v2, v10, v11}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v10, "backBufferDurationMs"

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v10, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->window:Landroidx/media3/common/Timeline$Window;

    .line 649
    new-instance v10, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->period:Landroidx/media3/common/Timeline$Period;

    .line 650
    move-object/from16 v10, p1

    iput-object v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 651
    int-to-long v11, v1

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    .line 652
    int-to-long v11, v2

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferForLocalPlaybackUs:J

    .line 653
    int-to-long v11, v3

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    .line 654
    int-to-long v11, v4

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferForLocalPlaybackUs:J

    .line 655
    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 656
    int-to-long v11, v6

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackForLocalPlaybackUs:J

    .line 657
    int-to-long v11, v7

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 658
    int-to-long v11, v8

    .line 659
    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferForLocalPlaybackUs:J

    .line 660
    move/from16 v11, p10

    iput v11, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 661
    move/from16 v12, p11

    iput-boolean v12, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 662
    move/from16 v13, p12

    iput-boolean v13, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholdsForLocalPlayback:Z

    .line 664
    int-to-long v14, v9

    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    iput-wide v14, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    .line 665
    move/from16 v14, p14

    iput-boolean v14, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    .line 666
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v15, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    .line 667
    invoke-static/range {p15 .. p15}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v15

    iput-object v15, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->playerTargetBufferBytesOverwrites:Lcom/google/common/collect/ImmutableMap;

    .line 668
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 669
    return-void
.end method

.method static synthetic access$000(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 57
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/DefaultLoadControl;)Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/DefaultLoadControl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/analytics/PlayerId;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultLoadControl;
    .param p1, "x1"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 57
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTotalBufferBytesAllocated(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v0

    return v0
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "value1"    # I
    .param p1, "value2"    # I
    .param p2, "name1"    # Ljava/lang/String;
    .param p3, "name2"    # Ljava/lang/String;

    .line 974
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "%s cannot be less than %s"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 975
    return-void
.end method

.method private getBufferForPlaybackAfterRebufferUs(Z)J
    .locals 2
    .param p1, "isLocalPlayback"    # Z

    .line 962
    if-eqz p1, :cond_0

    .line 963
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferForLocalPlaybackUs:J

    goto :goto_0

    .line 964
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 962
    :goto_0
    return-wide v0
.end method

.method private getBufferForPlaybackUs(Z)J
    .locals 2
    .param p1, "isLocalPlayback"    # Z

    .line 958
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackForLocalPlaybackUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_0
    return-wide v0
.end method

.method private static getDefaultBufferSize(IZ)I
    .locals 2
    .param p0, "trackType"    # I
    .param p1, "isLocalPlayback"    # Z

    .line 912
    const/high16 v0, 0xc80000

    const/high16 v1, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 926
    :pswitch_0
    return v1

    .line 924
    :pswitch_1
    return v1

    .line 928
    :pswitch_2
    const/high16 v0, 0x1900000

    return v0

    .line 922
    :pswitch_3
    return v1

    .line 918
    :pswitch_4
    if-eqz p1, :cond_0

    .line 919
    const/high16 v0, 0x12c0000

    goto :goto_0

    .line 920
    :cond_0
    const/high16 v0, 0x7d00000

    .line 918
    :goto_0
    return v0

    .line 916
    :pswitch_5
    return v0

    .line 914
    :pswitch_6
    const/high16 v0, 0x89a0000

    return v0

    .line 932
    :pswitch_7
    return v0

    .line 930
    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxBufferUs(Z)J
    .locals 2
    .param p1, "isLocalPlayback"    # Z

    .line 954
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferForLocalPlaybackUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    :goto_0
    return-wide v0
.end method

.method private getMinBufferUs(Z)J
    .locals 2
    .param p1, "isLocalPlayback"    # Z

    .line 950
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferForLocalPlaybackUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    :goto_0
    return-wide v0
.end method

.method private getTargetBufferBytes(Landroidx/media3/exoplayer/analytics/PlayerId;)I
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 983
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    iget v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    return v0
.end method

.method private getTargetBufferBytesOverwrite(Landroidx/media3/exoplayer/analytics/PlayerId;)I
    .locals 3
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 884
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->playerTargetBufferBytesOverwrites:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 885
    .local v0, "playerTargetBufferBytesOverwrite":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 887
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 889
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    return v1
.end method

.method private getTotalBufferBytesAllocated(Landroidx/media3/exoplayer/analytics/PlayerId;)I
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 978
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->getAllocatedCounts()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 979
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->getIndividualAllocationLength()I

    move-result v1

    mul-int/2addr v0, v1

    .line 978
    return v0
.end method

.method private isLocalPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 5
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 939
    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->period:Landroidx/media3/common/Timeline$Period;

    .line 940
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 941
    .local v0, "windowIndex":I
    iget-object v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 942
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 943
    return v3

    .line 945
    :cond_0
    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroidx/media3/exoplayer/DefaultLoadControl;->LOCAL_PLAYBACK_SCHEMES:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private prioritizeTimeOverSizeThresholds(Z)Z
    .locals 1
    .param p1, "isLocalPlayback"    # Z

    .line 968
    if-eqz p1, :cond_0

    .line 969
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholdsForLocalPlayback:Z

    goto :goto_0

    .line 970
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 968
    :goto_0
    return v0
.end method

.method private removePlayer(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 893
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 894
    .local v0, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    if-eqz v0, :cond_0

    .line 895
    iget v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->referenceCount:I

    .line 896
    iget v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->referenceCount:I

    if-nez v1, :cond_0

    .line 897
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    .line 901
    :cond_0
    return-void
.end method

.method private resetPlayerLoadingState(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 874
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 875
    .local v0, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTargetBufferBytesOverwrite(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v1

    .line 876
    .local v1, "targetBufferBytesOverwrite":I
    nop

    .line 877
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 878
    move v2, v1

    goto :goto_0

    .line 879
    :cond_0
    const/high16 v2, 0xc80000

    :goto_0
    iput v2, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    .line 880
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 881
    return-void
.end method

.method private updateAllocator()V
    .locals 2

    .line 904
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    .line 907
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->reset()V

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 909
    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferBytes(Landroidx/media3/exoplayer/LoadControl$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I
    .locals 7
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;
    .param p2, "trackSelectionArray"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 849
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTargetBufferBytes([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I

    move-result v0

    .line 850
    .local v0, "deprecatedResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 851
    return v0

    .line 853
    :cond_0
    const/4 v1, 0x0

    .line 854
    .local v1, "targetBufferSize":I
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->isLocalPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v2

    .line 855
    .local v2, "isLocalPlayback":Z
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 856
    .local v5, "exoTrackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v5, :cond_1

    .line 857
    nop

    .line 858
    invoke-interface {v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/TrackGroup;->type:I

    invoke-static {v6, v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->getDefaultBufferSize(IZ)I

    move-result v6

    add-int/2addr v1, v6

    .line 855
    .end local v5    # "exoTrackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 861
    :cond_2
    const/high16 v3, 0xc80000

    const/high16 v4, 0xc880000

    invoke-static {v1, v3, v4}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v3

    return v3
.end method

.method protected calculateTargetBufferBytes([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I
    .locals 1
    .param p1, "trackSelectionArray"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 834
    const/4 v0, -0x1

    return v0
.end method

.method calculateTotalTargetBufferBytes()I
    .locals 4

    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "totalTargetBufferBytes":I
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 868
    .local v2, "state":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    iget v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    add-int/2addr v0, v3

    .line 869
    .end local v2    # "state":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    goto :goto_0

    .line 870
    :cond_0
    return v0
.end method

.method public getAllocator(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 749
    new-instance v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;-><init>(Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-object v0
.end method

.method public getBackBufferDurationUs(Landroidx/media3/exoplayer/analytics/PlayerId;)J
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 754
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 6
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 706
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 707
    .local v0, "currentThreadId":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    const-string v4, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 711
    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 712
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 713
    .local v2, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    if-nez v2, :cond_2

    .line 714
    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-direct {v4}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;-><init>()V

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 716
    :cond_2
    iget v4, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->referenceCount:I

    add-int/2addr v4, v3

    iput v4, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->referenceCount:I

    .line 718
    :goto_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->resetPlayerLoadingState(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 719
    return-void
.end method

.method public onReleased(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 741
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->removePlayer(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 742
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 745
    :cond_0
    return-void
.end method

.method public onStopped(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 736
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->removePlayer(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 737
    return-void
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/LoadControl$Parameters;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 726
    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTargetBufferBytesOverwrite(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v0

    .line 727
    .local v0, "targetBufferBytesOverwrite":I
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 728
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 729
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTargetBufferBytes(Landroidx/media3/exoplayer/LoadControl$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I

    move-result v2

    goto :goto_0

    .line 730
    :cond_0
    move v2, v0

    :goto_0
    iput v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    .line 731
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    .line 732
    return-void
.end method

.method public retainBackBufferFromKeyframe(Landroidx/media3/exoplayer/analytics/PlayerId;)Z
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 759
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 14
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 764
    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 765
    .local v0, "playerId":Landroidx/media3/exoplayer/analytics/PlayerId;
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 766
    .local v1, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    nop

    .line 767
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTotalBufferBytesAllocated(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTargetBufferBytes(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 768
    .local v2, "targetBufferSizeReached":Z
    :goto_0
    sget-object v3, Landroidx/media3/exoplayer/analytics/PlayerId;->PRELOAD:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 769
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    return v4

    .line 771
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->isLocalPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v3

    .line 772
    .local v3, "isLocalPlayback":Z
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/DefaultLoadControl;->getMinBufferUs(Z)J

    move-result-wide v6

    .line 773
    .local v6, "minBufferUs":J
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/DefaultLoadControl;->getMaxBufferUs(Z)J

    move-result-wide v8

    .line 774
    .local v8, "maxBufferUs":J
    iget v10, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 777
    iget v10, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 778
    invoke-static {v6, v7, v10}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v10

    .line 779
    .local v10, "mediaDurationMinBufferUs":J
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 782
    .end local v10    # "mediaDurationMinBufferUs":J
    :cond_3
    const-wide/32 v10, 0x7a120

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 783
    iget-wide v12, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long v12, v12, v6

    if-gez v12, :cond_6

    .line 784
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds(Z)Z

    move-result v12

    .line 785
    .local v12, "prioritizeTimeOverSizeThresholds":Z
    if-nez v12, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    iput-boolean v4, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 786
    iget-boolean v4, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-nez v4, :cond_7

    iget-wide v4, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_7

    .line 787
    const-string v4, "DefaultLoadControl"

    const-string v5, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 791
    .end local v12    # "prioritizeTimeOverSizeThresholds":Z
    :cond_6
    iget-wide v10, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long v4, v10, v8

    if-gez v4, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    goto :goto_5

    .line 792
    :cond_8
    :goto_4
    iput-boolean v5, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 794
    :goto_5
    iget-boolean v4, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    return v4
.end method

.method public shouldContinuePreloading(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z
    .locals 3
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p4, "bufferedDurationUs"    # J

    .line 820
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 821
    .local v1, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    iget-boolean v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-eqz v2, :cond_0

    .line 822
    const/4 v0, 0x0

    return v0

    .line 824
    .end local v1    # "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    :cond_0
    goto :goto_0

    .line 825
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public shouldStartPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 9
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 799
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->isLocalPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v0

    .line 800
    .local v0, "isLocalPlayback":Z
    iget-wide v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v3, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 801
    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v1

    .line 804
    .local v1, "bufferedDurationUs":J
    iget-boolean v3, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    if-eqz v3, :cond_0

    .line 805
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->getBufferForPlaybackAfterRebufferUs(Z)J

    move-result-wide v3

    goto :goto_0

    .line 806
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->getBufferForPlaybackUs(Z)J

    move-result-wide v3

    :goto_0
    nop

    .line 807
    .local v3, "minBufferDurationUs":J
    iget-wide v5, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 808
    iget-wide v5, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 810
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 812
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds(Z)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 813
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTotalBufferBytesAllocated(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v5

    iget-object v6, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 814
    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/DefaultLoadControl;->getTargetBufferBytes(Landroidx/media3/exoplayer/analytics/PlayerId;)I

    move-result v6

    if-lt v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 810
    :goto_2
    return v5
.end method
