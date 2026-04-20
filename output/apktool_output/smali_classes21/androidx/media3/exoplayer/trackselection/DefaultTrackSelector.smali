.class public Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroidx/media3/exoplayer/RendererCapabilities$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE:Ljava/lang/String; = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

.field private static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field protected static final SELECTION_ELIGIBILITY_ADAPTIVE:I = 0x2

.field protected static final SELECTION_ELIGIBILITY_FIXED:I = 0x1

.field protected static final SELECTION_ELIGIBILITY_NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultTrackSelector"


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final context:Landroid/content/Context;

.field private deviceIsTV:Ljava/lang/Boolean;

.field private final lock:Ljava/lang/Object;

.field private parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field private playbackThread:Ljava/lang/Thread;

.field private spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

.field private final trackSelectionFactory:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# direct methods
.method public static synthetic $r8$lambda$RZOOWVwY129-edpyYGG6dnUTrn0(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2449
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;-><init>()V

    .line 2450
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 2449
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2475
    new-instance v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    .line 2476
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 2491
    new-instance v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    .line 2492
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p3, "trackSelectionFactory"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    .line 2515
    invoke-direct {p0, p2, p3, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    .line 2516
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackSelectionFactory"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    .line 2483
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    .line 2484
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .locals 1
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "trackSelectionFactory"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2503
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    .line 2504
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V
    .locals 2
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "trackSelectionFactory"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;
    .param p3, "context"    # Landroid/content/Context;

    .line 2531
    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;-><init>()V

    .line 2532
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    .line 2533
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    .line 2534
    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    .line 2535
    instance-of v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_1

    .line 2536
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_1

    .line 2538
    :cond_1
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2540
    :goto_1
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 2541
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 2542
    const-string v0, "DefaultTrackSelector"

    const-string v1, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    :cond_2
    return-void
.end method

.method static synthetic access$4100(Landroidx/media3/common/TrackGroup;IIZ)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/TrackGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 123
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getMaxVideoPixelsToRetainForViewport(Landroidx/media3/common/TrackGroup;IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 123
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getRoleFlagMatchScore(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableList;

    .line 123
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getBestLabelMatchIndex(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getVideoCodecPreferenceScore(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500()Lcom/google/common/collect/Ordering;
    .locals 1

    .line 123
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$4600(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format;

    .line 123
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isObjectBasedAudio(Landroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/media3/common/Format;

    .line 123
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->rendererSupportsOffload(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method private static applyLegacyRendererOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .locals 8
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p2, "outDefinitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 3352
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 3353
    .local v0, "rendererCount":I
    const/4 v1, 0x0

    .local v1, "rendererIndex":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3354
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    .line 3355
    .local v2, "trackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    invoke-virtual {p1, v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3356
    goto :goto_2

    .line 3359
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v3

    .line 3361
    .local v3, "override":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v4

    if-eqz v4, :cond_1

    .line 3362
    new-instance v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget v5, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 3364
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v5

    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v7, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    .local v4, "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    goto :goto_1

    .line 3366
    .end local v4    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :cond_1
    const/4 v4, 0x0

    .line 3368
    .restart local v4    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_1
    aput-object v4, p2, v1

    .line 3353
    .end local v2    # "trackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v3    # "override":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .end local v4    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3370
    .end local v1    # "rendererIndex":I
    :cond_2
    return-void
.end method

.method private static applyRendererDisableOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .locals 4
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p2, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 3376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3377
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    .line 3378
    .local v1, "rendererType":I
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 3379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3380
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p2, v0

    .line 3376
    .end local v1    # "rendererType":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3383
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static applyTrackSelectionOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .locals 8
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "params"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "outDefinitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 3288
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 3291
    .local v0, "rendererCount":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3292
    .local v1, "overridesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroidx/media3/common/TrackSelectionOverride;>;"
    const/4 v2, 0x0

    .local v2, "rendererIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3293
    nop

    .line 3294
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    .line 3293
    invoke-static {v3, p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/TrackSelectionParameters;Ljava/util/Map;)V

    .line 3292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3296
    .end local v2    # "rendererIndex":I
    :cond_0
    nop

    .line 3297
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    .line 3296
    invoke-static {v2, p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/TrackSelectionParameters;Ljava/util/Map;)V

    .line 3300
    const/4 v2, 0x0

    .restart local v2    # "rendererIndex":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3301
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    .line 3302
    .local v3, "trackType":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/TrackSelectionOverride;

    .line 3303
    .local v4, "overrideForType":Landroidx/media3/common/TrackSelectionOverride;
    if-nez v4, :cond_1

    .line 3304
    goto :goto_3

    .line 3309
    :cond_1
    iget-object v5, v4, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3310
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3312
    new-instance v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v6, v4, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v7, v4, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 3314
    invoke-static {v7}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .local v5, "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    goto :goto_2

    .line 3316
    .end local v5    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :cond_2
    const/4 v5, 0x0

    .line 3318
    .restart local v5    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_2
    aput-object v5, p2, v2

    .line 3300
    .end local v3    # "trackType":I
    .end local v4    # "overrideForType":Landroidx/media3/common/TrackSelectionOverride;
    .end local v5    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3320
    .end local v2    # "rendererIndex":I
    :cond_3
    return-void
.end method

.method private static collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/TrackSelectionParameters;Ljava/util/Map;)V
    .locals 5
    .param p0, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p1, "params"    # Landroidx/media3/common/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/common/TrackSelectionParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/common/TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 3332
    .local p2, "overridesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroidx/media3/common/TrackSelectionOverride;>;"
    const/4 v0, 0x0

    .local v0, "trackGroupIndex":I
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_3

    .line 3333
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    .line 3334
    .local v1, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    .line 3335
    .local v2, "override":Landroidx/media3/common/TrackSelectionOverride;
    if-nez v2, :cond_0

    .line 3336
    goto :goto_1

    .line 3338
    :cond_0
    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionOverride;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    .line 3340
    .local v3, "existingOverride":Landroidx/media3/common/TrackSelectionOverride;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 3341
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3342
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionOverride;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    .end local v1    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v2    # "override":Landroidx/media3/common/TrackSelectionOverride;
    .end local v3    # "existingOverride":Landroidx/media3/common/TrackSelectionOverride;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3345
    .end local v0    # "trackGroupIndex":I
    :cond_3
    return-void
.end method

.method private static findDefinitionForType([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;
    .locals 3
    .param p0, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "I)",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3736
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget v1, v1, Landroidx/media3/common/TrackGroup;->type:I

    if-ne v1, p1, :cond_0

    .line 3737
    aget-object v1, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 3735
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3740
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBestLabelMatchIndex(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I
    .locals 4
    .param p0, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3652
    .local p1, "preferredLabels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3653
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3654
    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Label;

    iget-object v2, v2, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3655
    return v0

    .line 3653
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3652
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3659
    .end local v0    # "i":I
    :cond_2
    const v0, 0x7fffffff

    return v0
.end method

.method protected static getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I
    .locals 5
    .param p0, "format"    # Landroidx/media3/common/Format;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "allowUndeterminedFormatLanguage"    # Z

    .line 3595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    const/4 v0, 0x4

    return v0

    .line 3599
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3600
    iget-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3601
    .local v0, "formatLanguage":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 3605
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 3609
    :cond_2
    const-string v2, "-"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 3610
    .local v3, "formatMainLanguage":Ljava/lang/String;
    invoke-static {p1, v2}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 3611
    .local v2, "queryMainLanguage":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3613
    const/4 v1, 0x2

    return v1

    .line 3615
    :cond_3
    return v1

    .line 3607
    .end local v2    # "queryMainLanguage":Ljava/lang/String;
    .end local v3    # "formatMainLanguage":Ljava/lang/String;
    :cond_4
    :goto_0
    const/4 v1, 0x3

    return v1

    .line 3603
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private static getMaxVideoPixelsToRetainForViewport(Landroidx/media3/common/TrackGroup;IIZ)I
    .locals 8
    .param p0, "group"    # Landroidx/media3/common/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z

    .line 3620
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 3623
    :cond_0
    const v0, 0x7fffffff

    .line 3624
    .local v0, "maxVideoPixelsToRetain":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v1, v2, :cond_2

    .line 3625
    invoke-virtual {p0, v1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v2

    .line 3628
    .local v2, "format":Landroidx/media3/common/Format;
    iget v3, v2, Landroidx/media3/common/Format;->width:I

    if-lez v3, :cond_1

    iget v3, v2, Landroidx/media3/common/Format;->height:I

    if-lez v3, :cond_1

    .line 3629
    iget v3, v2, Landroidx/media3/common/Format;->width:I

    iget v4, v2, Landroidx/media3/common/Format;->height:I

    .line 3630
    invoke-static {p3, p1, p2, v3, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 3632
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v4, v2, Landroidx/media3/common/Format;->width:I

    iget v5, v2, Landroidx/media3/common/Format;->height:I

    mul-int/2addr v4, v5

    .line 3633
    .local v4, "videoPixels":I
    iget v5, v2, Landroidx/media3/common/Format;->width:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_1

    iget v5, v2, Landroidx/media3/common/Format;->height:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_1

    if-ge v4, v0, :cond_1

    .line 3636
    move v0, v4

    .line 3624
    .end local v2    # "format":Landroidx/media3/common/Format;
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v4    # "videoPixels":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3640
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 3621
    .end local v0    # "maxVideoPixelsToRetain":I
    :cond_3
    :goto_1
    return v0
.end method

.method private static getPreferredLanguageFromCaptioningManager(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3717
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3718
    return-object v0

    .line 3720
    :cond_0
    nop

    .line 3721
    const-string v1, "captioning"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    .line 3722
    .local v1, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3725
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 3726
    .local v2, "preferredLocale":Ljava/util/Locale;
    if-nez v2, :cond_2

    .line 3727
    return-object v0

    .line 3729
    :cond_2
    invoke-static {v2}, Landroidx/media3/common/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3723
    .end local v2    # "preferredLocale":Ljava/util/Locale;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getRoleFlagMatchScore(II)I
    .locals 1
    .param p0, "trackRoleFlags"    # I
    .param p1, "preferredRoleFlags"    # I

    .line 3644
    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    .line 3646
    const v0, 0x7fffffff

    return v0

    .line 3648
    :cond_0
    and-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method private static getSelectedPrimaryTrackGroupIds([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/common/collect/ImmutableSet;
    .locals 6
    .param p0, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p1, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3182
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 3183
    .local v0, "primaryTrackGroupIds":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3184
    aget-object v2, p0, v1

    .line 3185
    .local v2, "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    if-eqz v2, :cond_1

    .line 3186
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget v4, v4, Landroidx/media3/common/TrackGroup;->type:I

    .line 3187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3188
    iget-object v3, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v3, v3, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 3189
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 3190
    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    .line 3191
    .local v4, "format":Landroidx/media3/common/Format;
    iget-object v5, v4, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 3192
    iget-object v5, v4, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 3189
    .end local v4    # "format":Landroidx/media3/common/Format;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3183
    .end local v2    # "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3197
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method

.method private static getVideoCodecPreferenceScore(Ljava/lang/String;)I
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 3667
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3668
    return v0

    .line 3670
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "video/av01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "video/dolby-vision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3682
    return v0

    .line 3680
    :pswitch_0
    return v2

    .line 3678
    :pswitch_1
    return v3

    .line 3676
    :pswitch_2
    return v4

    .line 3674
    :pswitch_3
    return v5

    .line 3672
    :pswitch_4
    const/4 v0, 0x5

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAudioFormatWithinAudioChannelCountConstraints(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2966
    iget-boolean v0, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->deviceIsTV:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->deviceIsTV:Ljava/lang/Boolean;

    .line 2967
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 2969
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isDolbyAudio(Landroidx/media3/common/Format;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 2970
    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isSpatializationSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 2973
    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isSpatializationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 2974
    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 2975
    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 2976
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->canBeSpatialized(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2966
    :goto_1
    return v0
.end method

.method private static isDolbyAudio(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 3701
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3702
    return v1

    .line 3704
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "audio/eac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "audio/ac4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "audio/ac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3711
    return v1

    .line 3709
    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isObjectBasedAudio(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 3687
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3688
    return v1

    .line 3690
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "audio/iamf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "audio/ac4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3696
    return v1

    .line 3694
    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59afdf4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static isSupported(IZ)Z
    .locals 1
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3565
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectImageTrack$5(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "rendererIndex"    # I
    .param p2, "group"    # Landroidx/media3/common/TrackGroup;
    .param p3, "support"    # [I

    .line 3055
    invoke-static {p1, p2, p0, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$selectTextTrack$4(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 2
    .param p0, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "selectedAudioLanguage"    # Ljava/lang/String;
    .param p2, "preferredCaptioningLanguage"    # Ljava/lang/String;
    .param p3, "rendererIndex"    # I
    .param p4, "group"    # Landroidx/media3/common/TrackGroup;
    .param p5, "support"    # [I

    .line 3016
    move-object v1, p2

    move-object p2, p0

    move p0, p3

    move-object p3, p5

    move-object p5, v1

    move-object v1, p4

    move-object p4, p1

    move-object p1, v1

    .local p0, "rendererIndex":I
    .local p1, "group":Landroidx/media3/common/TrackGroup;
    .local p2, "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .local p3, "support":[I
    .local p4, "selectedAudioLanguage":Ljava/lang/String;
    .local p5, "preferredCaptioningLanguage":Ljava/lang/String;
    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$selectVideoTrack$1(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 7
    .param p0, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "selectedAudioLanguage"    # Ljava/lang/String;
    .param p2, "mixedMimeTypeSupports"    # [I
    .param p3, "viewportSizeFromDisplay"    # Landroid/graphics/Point;
    .param p4, "rendererIndex"    # I
    .param p5, "group"    # Landroidx/media3/common/TrackGroup;
    .param p6, "support"    # [I

    .line 2887
    aget v5, p2, p4

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move v0, p4

    move-object v1, p5

    move-object v3, p6

    .end local p0    # "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .end local p1    # "selectedAudioLanguage":Ljava/lang/String;
    .end local p3    # "viewportSizeFromDisplay":Landroid/graphics/Point;
    .end local p4    # "rendererIndex":I
    .end local p5    # "group":Landroidx/media3/common/TrackGroup;
    .end local p6    # "support":[I
    .local v0, "rendererIndex":I
    .local v1, "group":Landroidx/media3/common/TrackGroup;
    .local v2, "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .local v3, "support":[I
    .local v4, "selectedAudioLanguage":Ljava/lang/String;
    .local v6, "viewportSizeFromDisplay":Landroid/graphics/Point;
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;ILandroid/graphics/Point;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .param p0, "first"    # Ljava/lang/Integer;
    .param p1, "second"    # Ljava/lang/Integer;

    .line 2452
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2453
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 2454
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v0, v1

    .line 2452
    :cond_2
    :goto_0
    return v1
.end method

.method private static maybeConfigureRendererForOffload(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 9
    .param p0, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererConfigurations"    # [Landroidx/media3/exoplayer/RendererConfiguration;
    .param p4, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3491
    const/4 v0, -0x1

    .line 3492
    .local v0, "audioRendererIndex":I
    const/4 v1, 0x0

    .line 3493
    .local v1, "audioRenderersSupportingOffload":I
    const/4 v2, 0x0

    .line 3494
    .local v2, "hasNonAudioRendererWithSelectedTracks":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 3495
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    .line 3496
    .local v4, "rendererType":I
    aget-object v7, p4, v3

    .line 3497
    .local v7, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eq v4, v6, :cond_0

    if-eqz v7, :cond_0

    .line 3498
    const/4 v2, 0x1

    .line 3499
    goto :goto_1

    .line 3501
    :cond_0
    if-ne v4, v6, :cond_1

    if-eqz v7, :cond_1

    .line 3503
    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v8

    if-ne v8, v6, :cond_1

    .line 3504
    nop

    .line 3505
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v6

    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v6

    .line 3507
    .local v6, "trackGroupIndex":I
    aget-object v8, p2, v3

    aget-object v8, v8, v6

    .line 3508
    invoke-interface {v7, v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    aget v5, v8, v5

    .line 3509
    .local v5, "trackFormatSupport":I
    nop

    .line 3510
    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v8

    .line 3509
    invoke-static {p0, v5, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->rendererSupportsOffload(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3511
    move v0, v3

    .line 3512
    add-int/lit8 v1, v1, 0x1

    .line 3494
    .end local v4    # "rendererType":I
    .end local v5    # "trackFormatSupport":I
    .end local v6    # "trackGroupIndex":I
    .end local v7    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3516
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-nez v2, :cond_5

    if-ne v1, v6, :cond_5

    .line 3517
    new-instance v3, Landroidx/media3/exoplayer/RendererConfiguration;

    .line 3519
    iget-object v4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v4, v4, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    if-eqz v4, :cond_3

    .line 3520
    move v4, v6

    goto :goto_2

    .line 3521
    :cond_3
    const/4 v4, 0x2

    :goto_2
    aget-object v7, p3, v0

    if-eqz v7, :cond_4

    aget-object v7, p3, v0

    iget-boolean v7, v7, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-eqz v7, :cond_4

    move v5, v6

    :cond_4
    invoke-direct {v3, v4, v5}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    .line 3524
    .local v3, "offloadRendererConfiguration":Landroidx/media3/exoplayer/RendererConfiguration;
    aput-object v3, p3, v0

    .line 3526
    .end local v3    # "offloadRendererConfiguration":Landroidx/media3/exoplayer/RendererConfiguration;
    :cond_5
    return-void
.end method

.method private static maybeConfigureRenderersForTunneling(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 10
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "rendererFormatSupports"    # [[[I
    .param p2, "rendererConfigurations"    # [Landroidx/media3/exoplayer/RendererConfiguration;
    .param p3, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3404
    const/4 v0, -0x1

    .line 3405
    .local v0, "tunnelingAudioRendererIndex":I
    const/4 v1, -0x1

    .line 3406
    .local v1, "tunnelingVideoRendererIndex":I
    const/4 v2, 0x1

    .line 3407
    .local v2, "enableTunneling":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_5

    .line 3408
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    .line 3409
    .local v4, "rendererType":I
    aget-object v7, p3, v3

    .line 3410
    .local v7, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eq v4, v6, :cond_0

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    :cond_0
    if-eqz v7, :cond_4

    .line 3412
    aget-object v8, p1, v3

    .line 3413
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v9

    .line 3412
    invoke-static {v8, v9, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3414
    if-ne v4, v6, :cond_2

    .line 3415
    if-eq v0, v5, :cond_1

    .line 3416
    const/4 v2, 0x0

    .line 3417
    goto :goto_2

    .line 3419
    :cond_1
    move v0, v3

    goto :goto_1

    .line 3422
    :cond_2
    if-eq v1, v5, :cond_3

    .line 3423
    const/4 v2, 0x0

    .line 3424
    goto :goto_2

    .line 3426
    :cond_3
    move v1, v3

    .line 3407
    .end local v4    # "rendererType":I
    .end local v7    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3432
    .end local v3    # "i":I
    :cond_5
    :goto_2
    const/4 v3, 0x0

    if-eq v0, v5, :cond_6

    if-eq v1, v5, :cond_6

    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    and-int/2addr v2, v4

    .line 3433
    if-eqz v2, :cond_7

    .line 3434
    new-instance v4, Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-direct {v4, v3, v6}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    .line 3436
    .local v4, "tunnelingRendererConfiguration":Landroidx/media3/exoplayer/RendererConfiguration;
    aput-object v4, p2, v0

    .line 3437
    aput-object v4, p2, v1

    .line 3439
    .end local v4    # "tunnelingRendererConfiguration":Landroidx/media3/exoplayer/RendererConfiguration;
    :cond_7
    return-void
.end method

.method private maybeInvalidateForAudioChannelCountConstraints()V
    .locals 3

    .line 3260
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3261
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 3265
    invoke-virtual {v1}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3266
    .local v1, "shouldInvalidate":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3267
    if-eqz v1, :cond_1

    .line 3268
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->invalidate()V

    .line 3270
    :cond_1
    return-void

    .line 3266
    .end local v1    # "shouldInvalidate":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeInvalidateForRendererCapabilitiesChange(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;

    .line 3274
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3275
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 3276
    .local v1, "shouldInvalidate":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3277
    if-eqz v1, :cond_0

    .line 3278
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->invalidateForRendererCapabilitiesChange(Landroidx/media3/exoplayer/Renderer;)V

    .line 3280
    :cond_0
    return-void

    .line 3276
    .end local v1    # "shouldInvalidate":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .line 3576
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3578
    :cond_0
    move-object v0, p0

    goto :goto_1

    .line 3577
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3576
    :goto_1
    return-object v0
.end method

.method private static rendererSupportsOffload(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z
    .locals 4
    .param p0, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "formatSupport"    # I
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 3538
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3539
    return v1

    .line 3541
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    if-eqz v0, :cond_1

    .line 3542
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_1

    .line 3545
    return v1

    .line 3548
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 3549
    iget v0, p2, Landroidx/media3/common/Format;->encoderDelay:I

    if-nez v0, :cond_3

    iget v0, p2, Landroidx/media3/common/Format;->encoderPadding:I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    .line 3550
    .local v0, "isGapless":Z
    :goto_1
    nop

    .line 3551
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    .line 3554
    .local v3, "isGaplessSupported":Z
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    .line 3556
    .end local v0    # "isGapless":Z
    .end local v3    # "isGaplessSupported":Z
    :cond_7
    return v2
.end method

.method private static rendererSupportsTunneling([[ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Z
    .locals 6
    .param p0, "formatSupport"    # [[I
    .param p1, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p2, "selection"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3454
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3455
    return v0

    .line 3457
    :cond_0
    invoke-interface {p2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v1

    .line 3458
    .local v1, "trackGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3460
    aget-object v3, p0, v1

    invoke-interface {p2, v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    aget v3, v3, v4

    .line 3461
    .local v3, "trackFormatSupport":I
    invoke-static {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->getTunnelingSupport(I)I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 3463
    return v0

    .line 3458
    .end local v3    # "trackFormatSupport":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3466
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 20
    .param p1, "trackType"    # I
    .param p2, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p3, "formatSupport"    # [[[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
            "TT;>;>(I",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3207
    .local p4, "trackInfoFactory":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;, "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory<TT;>;"
    .local p5, "selectionComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/List<TT;>;>;"
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3208
    .local v1, "possibleSelections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<TT;>;>;"
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    .line 3209
    .local v2, "rendererCount":I
    const/4 v3, 0x0

    .local v3, "rendererIndex":I
    :goto_0
    if-ge v3, v2, :cond_8

    .line 3210
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    move/from16 v5, p1

    if-ne v5, v4, :cond_7

    .line 3211
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    .line 3212
    .local v4, "groups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v6, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v7, v4, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_6

    .line 3213
    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    .line 3214
    .local v7, "trackGroup":Landroidx/media3/common/TrackGroup;
    aget-object v8, p3, v3

    aget-object v8, v8, v6

    .line 3215
    .local v8, "groupSupport":[I
    move-object/from16 v9, p4

    invoke-interface {v9, v3, v7, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;->create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object v10

    .line 3216
    .local v10, "trackInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v11, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v11, v11, [Z

    .line 3217
    .local v11, "usedTrackInSelection":[Z
    const/4 v12, 0x0

    .local v12, "trackIndex":I
    :goto_2
    iget v13, v7, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v12, v13, :cond_5

    .line 3218
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    .line 3219
    .local v13, "trackInfo":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    invoke-virtual {v13}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v14

    .line 3220
    .local v14, "eligibility":I
    aget-boolean v15, v11, v12

    if-nez v15, :cond_4

    if-nez v14, :cond_0

    .line 3221
    move/from16 v17, v2

    move/from16 v19, v3

    goto :goto_5

    .line 3224
    :cond_0
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 3225
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    move/from16 v17, v2

    move/from16 v19, v3

    .local v15, "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_4

    .line 3227
    .end local v15    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 3228
    .local v17, "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move/from16 v16, v15

    move-object/from16 v15, v17

    .end local v17    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v15    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3229
    add-int/lit8 v17, v12, 0x1

    move/from16 v0, v17

    .local v0, "i":I
    :goto_3
    move/from16 v17, v2

    .end local v2    # "rendererCount":I
    .local v17, "rendererCount":I
    iget v2, v7, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v0, v2, :cond_3

    .line 3230
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    .line 3231
    .local v2, "otherTrackInfo":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v0

    move/from16 v19, v3

    .end local v3    # "rendererIndex":I
    .local v19, "rendererIndex":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 3232
    invoke-virtual {v13, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3233
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3234
    aput-boolean v16, v11, v18

    .line 3229
    .end local v2    # "otherTrackInfo":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    :cond_2
    add-int/lit8 v0, v18, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    .end local v18    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .end local v19    # "rendererIndex":I
    .restart local v3    # "rendererIndex":I
    :cond_3
    move/from16 v18, v0

    move/from16 v19, v3

    .line 3239
    .end local v0    # "i":I
    .end local v3    # "rendererIndex":I
    .restart local v19    # "rendererIndex":I
    :goto_4
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3220
    .end local v15    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v17    # "rendererCount":I
    .end local v19    # "rendererIndex":I
    .local v2, "rendererCount":I
    .restart local v3    # "rendererIndex":I
    :cond_4
    move/from16 v17, v2

    move/from16 v19, v3

    .line 3217
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .end local v13    # "trackInfo":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    .end local v14    # "eligibility":I
    .restart local v17    # "rendererCount":I
    .restart local v19    # "rendererIndex":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    move/from16 v3, v19

    goto :goto_2

    .end local v17    # "rendererCount":I
    .end local v19    # "rendererIndex":I
    .restart local v2    # "rendererCount":I
    .restart local v3    # "rendererIndex":I
    :cond_5
    move/from16 v17, v2

    move/from16 v19, v3

    .line 3212
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .end local v7    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v8    # "groupSupport":[I
    .end local v10    # "trackInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v11    # "usedTrackInSelection":[Z
    .end local v12    # "trackIndex":I
    .restart local v17    # "rendererCount":I
    .restart local v19    # "rendererIndex":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1

    .end local v17    # "rendererCount":I
    .end local v19    # "rendererIndex":I
    .restart local v2    # "rendererCount":I
    .restart local v3    # "rendererIndex":I
    :cond_6
    move-object/from16 v9, p4

    move/from16 v17, v2

    move/from16 v19, v3

    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .restart local v17    # "rendererCount":I
    .restart local v19    # "rendererIndex":I
    goto :goto_6

    .line 3210
    .end local v4    # "groups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v6    # "groupIndex":I
    .end local v17    # "rendererCount":I
    .end local v19    # "rendererIndex":I
    .restart local v2    # "rendererCount":I
    .restart local v3    # "rendererIndex":I
    :cond_7
    move-object/from16 v9, p4

    move/from16 v17, v2

    move/from16 v19, v3

    .line 3209
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .restart local v17    # "rendererCount":I
    .restart local v19    # "rendererIndex":I
    :goto_6
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    .end local v19    # "rendererIndex":I
    .restart local v3    # "rendererIndex":I
    goto/16 :goto_0

    .end local v17    # "rendererCount":I
    .restart local v2    # "rendererCount":I
    :cond_8
    move/from16 v5, p1

    move-object/from16 v9, p4

    move/from16 v17, v2

    move/from16 v19, v3

    .line 3244
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .restart local v17    # "rendererCount":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3245
    const/4 v0, 0x0

    return-object v0

    .line 3247
    :cond_9
    move-object/from16 v0, p5

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3248
    .local v2, "bestSelection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 3249
    .local v3, "trackIndices":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 3250
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    aput v6, v3, v4

    .line 3249
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3252
    .end local v4    # "i":I
    :cond_a
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    .line 3253
    .local v4, "firstTrackInfo":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    new-instance v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Landroidx/media3/common/TrackGroup;

    invoke-direct {v6, v7, v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    iget v7, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 3255
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3253
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2622
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2625
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2626
    .local v1, "parametersChanged":Z
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2627
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    if-eqz v1, :cond_2

    .line 2630
    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2631
    const-string v0, "DefaultTrackSelector"

    const-string v2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->invalidate()V

    .line 2635
    :cond_2
    return-void

    .line 2627
    .end local v1    # "parametersChanged":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 1

    .line 2613
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .line 2564
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2565
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object v1

    .line 2566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRendererCapabilitiesListener()Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    .locals 0

    .line 2640
    return-object p0
.end method

.method public isSetParametersSupported()Z
    .locals 1

    .line 2571
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$selectAudioTrack$2$androidx-media3-exoplayer-trackselection-DefaultTrackSelector(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 2942
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isAudioFormatWithinAudioChannelCountConstraints(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$selectAudioTrack$3$androidx-media3-exoplayer-trackselection-DefaultTrackSelector(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[IILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 7
    .param p1, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p2, "hasVideoRendererWithMappedTracksFinal"    # Z
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p4, "rendererIndex"    # I
    .param p5, "group"    # Landroidx/media3/common/TrackGroup;
    .param p6, "support"    # [I

    .line 2936
    new-instance v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    aget v6, p3, p4

    move-object v2, p1

    move v4, p2

    move v0, p4

    move-object v1, p5

    move-object v3, p6

    .end local p1    # "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .end local p2    # "hasVideoRendererWithMappedTracksFinal":Z
    .end local p4    # "rendererIndex":I
    .end local p5    # "group":Landroidx/media3/common/TrackGroup;
    .end local p6    # "support":[I
    .local v0, "rendererIndex":I
    .local v1, "group":Landroidx/media3/common/TrackGroup;
    .local v2, "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .local v3, "support":[I
    .local v4, "hasVideoRendererWithMappedTracksFinal":Z
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public onRendererCapabilitiesChanged(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;

    .line 2647
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForRendererCapabilitiesChange(Landroidx/media3/exoplayer/Renderer;)V

    .line 2648
    return-void
.end method

.method public release()V
    .locals 3

    .line 2548
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2549
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->playbackThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 2550
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->playbackThread:Ljava/lang/Thread;

    .line 2551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "DefaultTrackSelector is accessed on the wrong thread."

    .line 2550
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2554
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v0, :cond_2

    .line 2556
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->release()V

    .line 2557
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 2559
    :cond_2
    invoke-super {p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->release()V

    .line 2560
    return-void

    .line 2554
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected selectAllTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 17
    .param p1, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p2, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p3, "rendererFormatSupports"    # [[[I
    .param p4, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p5, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2772
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v7

    .line 2775
    .local v7, "rendererCount":I
    nop

    .line 2776
    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->findDefinitionForType([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v3

    .line 2777
    .local v3, "selectedAudio":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    .line 2778
    nop

    .line 2779
    move-object/from16 v5, p4

    invoke-virtual {v0, v1, v2, v5, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectAudioTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v3

    .line 2784
    if-eqz v3, :cond_0

    .line 2785
    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v10, v6, v9

    .line 2790
    :cond_0
    move-object v9, v3

    goto :goto_0

    .line 2777
    :cond_1
    move-object/from16 v5, p4

    move-object v9, v3

    .line 2790
    .end local v3    # "selectedAudio":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    .local v9, "selectedAudio":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    :goto_0
    const/4 v10, 0x0

    if-nez v9, :cond_2

    .line 2791
    move-object v3, v10

    goto :goto_1

    .line 2792
    :cond_2
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v11, v11, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v3, v11}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    :goto_1
    nop

    .line 2795
    .local v3, "selectedAudioLanguage":Ljava/lang/String;
    nop

    .line 2796
    const/4 v11, 0x2

    invoke-static {v6, v11}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->findDefinitionForType([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v12

    .line 2798
    .local v12, "selectedVideo":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    nop

    .line 2799
    const/4 v13, 0x4

    invoke-static {v6, v13}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->findDefinitionForType([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v14

    .line 2800
    .local v14, "selectedImage":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-nez v12, :cond_6

    if-nez v14, :cond_6

    .line 2801
    nop

    .line 2802
    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    .end local v3    # "selectedAudioLanguage":Ljava/lang/String;
    .local v5, "selectedAudioLanguage":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectVideoTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v12

    .line 2809
    iget-boolean v3, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->isPrioritizeImageOverVideoEnabled:Z

    if-nez v3, :cond_4

    if-nez v12, :cond_3

    goto :goto_2

    .line 2811
    :cond_3
    goto :goto_3

    .line 2810
    :cond_4
    :goto_2
    invoke-virtual {v0, v1, v2, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectImageTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v10

    .line 2811
    :goto_3
    move-object v14, v10

    .line 2812
    if-eqz v14, :cond_5

    .line 2813
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v10, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v10, v6, v3

    goto :goto_4

    .line 2814
    :cond_5
    if-eqz v12, :cond_7

    .line 2815
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v10, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v10, v6, v3

    goto :goto_4

    .line 2800
    .end local v5    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v3    # "selectedAudioLanguage":Ljava/lang/String;
    :cond_6
    move-object v5, v3

    .line 2820
    .end local v3    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v5    # "selectedAudioLanguage":Ljava/lang/String;
    :cond_7
    :goto_4
    nop

    .line 2821
    const/4 v3, 0x3

    invoke-static {v6, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->findDefinitionForType([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    move-result-object v10

    .line 2822
    .local v10, "selectedText":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-nez v10, :cond_8

    .line 2823
    nop

    .line 2824
    invoke-virtual {v0, v1, v2, v4, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTextTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    .line 2825
    if-eqz v10, :cond_8

    .line 2826
    iget-object v15, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v13, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v13, v6, v15

    .line 2830
    :cond_8
    invoke-virtual {v0, v6, v1, v2, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectMetadataTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2832
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v7, :cond_a

    .line 2833
    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v15

    .line 2834
    .local v15, "trackType":I
    if-eq v15, v11, :cond_9

    if-eq v15, v8, :cond_9

    if-eq v15, v3, :cond_9

    const/4 v3, 0x4

    if-eq v15, v3, :cond_9

    const/4 v3, 0x5

    if-eq v15, v3, :cond_9

    aget-object v3, v6, v13

    if-nez v3, :cond_9

    .line 2840
    nop

    .line 2842
    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    aget-object v8, v2, v13

    .line 2841
    invoke-virtual {v0, v15, v3, v8, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectOtherTrack(ILandroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move-result-object v3

    aput-object v3, v6, v13

    .line 2832
    .end local v15    # "trackType":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x3

    const/4 v8, 0x1

    goto :goto_5

    .line 2845
    .end local v13    # "i":I
    :cond_a
    return-void
.end method

.method protected selectAudioTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 8
    .param p1, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p4, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2922
    const/4 v0, 0x0

    .line 2923
    .local v0, "hasVideoRendererWithMappedTracks":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2924
    const/4 v2, 0x2

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2925
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    iget v2, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-lez v2, :cond_0

    .line 2926
    const/4 v0, 0x1

    .line 2927
    goto :goto_1

    .line 2923
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2930
    .end local v1    # "i":I
    :cond_1
    :goto_1
    move v1, v0

    .line 2931
    .local v1, "hasVideoRendererWithMappedTracksFinal":Z
    new-instance v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, p4, v1, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V

    new-instance v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;-><init>()V

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local p2    # "rendererFormatSupports":[[[I
    .local v4, "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .local v5, "rendererFormatSupports":[[[I
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectImageTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 7
    .param p1, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3047
    iget-object v0, p3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3048
    const/4 v0, 0x0

    return-object v0

    .line 3050
    :cond_0
    new-instance v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;

    invoke-direct {v5, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local p2    # "rendererFormatSupports":[[[I
    .local v3, "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .local v4, "rendererFormatSupports":[[[I
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectMetadataTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 17
    .param p1, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p2, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p3, "rendererFormatSupports"    # [[[I
    .param p4, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3080
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v3, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3081
    return-void

    .line 3083
    :cond_0
    nop

    .line 3084
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getSelectedPrimaryTrackGroupIds([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 3086
    .local v3, "primaryTrackGroupIds":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3087
    .local v4, "metadataGroupsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/TrackGroup;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3088
    .local v5, "metadataGroupSupportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-ge v6, v7, :cond_5

    .line 3089
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v7

    .line 3090
    .local v7, "trackType":I
    if-eq v7, v9, :cond_1

    .line 3091
    goto :goto_3

    .line 3093
    :cond_1
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v9

    .line 3094
    .local v9, "metadataTracksForRenderer":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    iget v11, v9, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v10, v11, :cond_4

    .line 3095
    invoke-virtual {v9, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v11

    .line 3096
    .local v11, "trackGroup":Landroidx/media3/common/TrackGroup;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3097
    aget-object v12, p3, v6

    aget-object v12, v12, v10

    invoke-virtual {v12}, [I->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 3098
    .local v12, "groupSupport":[I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    array-length v14, v12

    if-ge v13, v14, :cond_3

    .line 3099
    invoke-virtual {v11, v13}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v14

    .line 3100
    .local v14, "format":Landroidx/media3/common/Format;
    iget-object v15, v14, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v14, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    .line 3101
    invoke-virtual {v3, v15}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 3103
    invoke-static {v8}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v15

    aput v15, v12, v13

    .line 3098
    .end local v14    # "format":Landroidx/media3/common/Format;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3106
    .end local v13    # "k":I
    :cond_3
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3094
    .end local v11    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v12    # "groupSupport":[I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3088
    .end local v7    # "trackType":I
    .end local v9    # "metadataTracksForRenderer":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v10    # "j":I
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3109
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/media3/common/TrackGroup;

    .line 3110
    .local v6, "metadataGroupsArray":[Landroidx/media3/common/TrackGroup;
    invoke-static {v4, v6}, Landroidx/media3/common/util/Util;->nullSafeListToArray(Ljava/util/List;[Ljava/lang/Object;)V

    .line 3111
    new-instance v7, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v7, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 3112
    .local v7, "metadataGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [[I

    .line 3113
    .local v10, "metadataGroupSupport":[[I
    invoke-static {v5, v10}, Landroidx/media3/common/util/Util;->nullSafeListToArray(Ljava/util/List;[Ljava/lang/Object;)V

    .line 3116
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 3117
    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v12

    .line 3118
    .local v12, "trackType":I
    if-eq v12, v9, :cond_6

    .line 3119
    move-object/from16 v13, p0

    move/from16 v16, v8

    goto :goto_5

    .line 3121
    :cond_6
    nop

    .line 3122
    move-object/from16 v13, p0

    invoke-virtual {v13, v9, v7, v10, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectOtherTrack(ILandroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move-result-object v14

    aput-object v14, v0, v11

    .line 3123
    aget-object v14, v0, v11

    if-eqz v14, :cond_8

    .line 3124
    aget-object v14, v0, v11

    iget-object v14, v14, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v7, v14}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v14

    .line 3125
    .local v14, "groupIndex":I
    aget-object v15, v10, v14

    .line 3127
    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v8

    .line 3125
    invoke-static {v15, v8}, Ljava/util/Arrays;->fill([II)V

    .line 3116
    .end local v12    # "trackType":I
    .end local v14    # "groupIndex":I
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    goto :goto_4

    :cond_7
    move-object/from16 v13, p0

    .line 3132
    .end local v11    # "i":I
    :cond_8
    return-void
.end method

.method protected selectOtherTrack(ILandroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .locals 11
    .param p1, "trackType"    # I
    .param p2, "groups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3153
    iget-object v0, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3154
    return-object v2

    .line 3156
    :cond_0
    const/4 v0, 0x0

    .line 3157
    .local v0, "selectedGroup":Landroidx/media3/common/TrackGroup;
    const/4 v1, 0x0

    .line 3158
    .local v1, "selectedTrackIndex":I
    const/4 v3, 0x0

    .line 3159
    .local v3, "selectedTrackScore":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;
    const/4 v4, 0x0

    .local v4, "groupIndex":I
    :goto_0
    iget v5, p2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_4

    .line 3160
    invoke-virtual {p2, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v5

    .line 3161
    .local v5, "trackGroup":Landroidx/media3/common/TrackGroup;
    aget-object v6, p3, v4

    .line 3162
    .local v6, "trackFormatSupport":[I
    const/4 v7, 0x0

    .local v7, "trackIndex":I
    :goto_1
    iget v8, v5, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v7, v8, :cond_3

    .line 3163
    aget v8, v6, v7

    iget-boolean v9, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v9}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3165
    invoke-virtual {v5, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v8

    .line 3166
    .local v8, "format":Landroidx/media3/common/Format;
    new-instance v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Landroidx/media3/common/Format;I)V

    .line 3167
    .local v9, "trackScore":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;
    if-eqz v3, :cond_1

    invoke-virtual {v9, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v10

    if-lez v10, :cond_2

    .line 3168
    :cond_1
    move-object v0, v5

    .line 3169
    move v1, v7

    .line 3170
    move-object v3, v9

    .line 3162
    .end local v8    # "format":Landroidx/media3/common/Format;
    .end local v9    # "trackScore":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3159
    .end local v5    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v6    # "trackFormatSupport":[I
    .end local v7    # "trackIndex":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3175
    .end local v4    # "groupIndex":I
    :cond_4
    if-nez v0, :cond_5

    .line 3176
    goto :goto_2

    .line 3177
    :cond_5
    new-instance v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    filled-new-array {v1}, [I

    move-result-object v4

    invoke-direct {v2, v0, v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .line 3175
    :goto_2
    return-object v2
.end method

.method protected selectTextTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p1, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "selectedAudioLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3003
    iget-object v0, p3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3004
    return-object v2

    .line 3008
    :cond_0
    iget-boolean v0, p3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    if-eqz v0, :cond_1

    .line 3009
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getPreferredLanguageFromCaptioningManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3010
    :cond_1
    nop

    :goto_0
    nop

    .line 3011
    .local v2, "preferredCaptioningLanguage":Ljava/lang/String;
    new-instance v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;

    invoke-direct {v7, p3, p4, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda10;

    invoke-direct {v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda10;-><init>()V

    const/4 v4, 0x3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local p2    # "rendererFormatSupports":[[[I
    .local v5, "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .local v6, "rendererFormatSupports":[[[I
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final selectTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 16
    .param p1, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupport"    # [I
    .param p4, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p5, "timeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media3/exoplayer/RendererConfiguration;",
            "[",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2662
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 2663
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->playbackThread:Ljava/lang/Thread;

    .line 2664
    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2665
    .local v6, "parameters":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2666
    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->deviceIsTV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->deviceIsTV:Ljava/lang/Boolean;

    .line 2669
    :cond_0
    iget-boolean v0, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-nez v0, :cond_1

    .line 2672
    new-instance v0, Landroidx/media3/exoplayer/util/SpatializerWrapper;

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    new-instance v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->deviceIsTV:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v4, v5}, Landroidx/media3/exoplayer/util/SpatializerWrapper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 2677
    :cond_1
    invoke-virtual {v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2678
    .local v0, "rendererCount":I
    new-array v2, v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 2682
    .local v2, "definitions":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    invoke-static {v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->applyTrackSelectionOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2683
    invoke-static {v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->applyLegacyRendererOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2684
    invoke-static {v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->applyRendererDisableOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2687
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectAllTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2696
    invoke-static {v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->applyTrackSelectionOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2697
    invoke-static {v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->applyLegacyRendererOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2698
    invoke-static {v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->applyRendererDisableOverrides(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2701
    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    .line 2703
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getBandwidthMeter()Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object v7

    .line 2702
    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface {v5, v2, v7, v8, v9}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;->createTrackSelections([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v5

    .line 2708
    .local v5, "rendererTrackSelections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    new-array v7, v0, [Landroidx/media3/exoplayer/RendererConfiguration;

    .line 2709
    .local v7, "rendererConfigurations":[Landroidx/media3/exoplayer/RendererConfiguration;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_7

    .line 2710
    invoke-virtual {v3, v10}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v11

    .line 2711
    .local v11, "rendererType":I
    nop

    .line 2712
    invoke-virtual {v6, v10}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v12

    const/4 v14, 0x1

    if-nez v12, :cond_3

    iget-object v12, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v12, v14

    .line 2713
    .local v12, "forceRendererDisabled":Z
    :goto_2
    if-nez v12, :cond_5

    .line 2715
    invoke-virtual {v3, v10}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v15

    const/4 v13, -0x2

    if-eq v15, v13, :cond_4

    aget-object v13, v5, v10

    if-eqz v13, :cond_5

    :cond_4
    move v13, v14

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 2717
    .local v13, "rendererEnabled":Z
    :goto_3
    if-eqz v13, :cond_6

    sget-object v14, Landroidx/media3/exoplayer/RendererConfiguration;->DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    aput-object v14, v7, v10

    .line 2709
    .end local v11    # "rendererType":I
    .end local v12    # "forceRendererDisabled":Z
    .end local v13    # "rendererEnabled":Z
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2721
    .end local v10    # "i":I
    :cond_7
    iget-boolean v10, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz v10, :cond_8

    .line 2722
    invoke-static {v3, v4, v7, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 2727
    :cond_8
    iget-object v10, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v10, v10, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-eqz v10, :cond_9

    .line 2728
    invoke-static {v6, v3, v4, v7, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeConfigureRendererForOffload(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 2736
    :cond_9
    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    return-object v10

    .line 2665
    .end local v0    # "rendererCount":I
    .end local v2    # "definitions":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .end local v5    # "rendererTrackSelections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v6    # "parameters":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .end local v7    # "rendererConfigurations":[Landroidx/media3/exoplayer/RendererConfiguration;
    :catchall_0
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method protected selectVideoTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p1, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "mixedMimeTypeSupports"    # [I
    .param p4, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "selectedAudioLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2874
    iget-object v0, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2875
    return-object v2

    .line 2879
    :cond_0
    iget-boolean v0, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2880
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    .line 2881
    :cond_1
    nop

    :goto_0
    nop

    .line 2882
    .local v2, "viewportSizeFromDisplay":Landroid/graphics/Point;
    new-instance v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;

    invoke-direct {v7, p4, p5, p3, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v8, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;-><init>()V

    const/4 v4, 0x2

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local p2    # "rendererFormatSupports":[[[I
    .local v5, "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .local v6, "rendererFormatSupports":[[[I
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 2586
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2587
    return-void

    .line 2589
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 2590
    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    .line 2591
    return-void
.end method

.method public setParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 2576
    instance-of v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_0

    .line 2577
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2580
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 2581
    .local v0, "mergedParameters":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2582
    return-void
.end method

.method public setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .locals 1
    .param p1, "parametersBuilder"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 2608
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2609
    return-void
.end method

.method public setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .locals 1
    .param p1, "parametersBuilder"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2599
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2600
    return-void
.end method
