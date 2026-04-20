.class public final Landroidx/compose/animation/BoundsTransformDeferredAnimation;
.super Ljava/lang/Object;
.source "AnimateBoundsModifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimateBoundsModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateBoundsModifier.kt\nandroidx/compose/animation/BoundsTransformDeferredAnimation\n+ 2 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/Offset\n*L\n1#1,452:1\n136#2:453\n141#2:454\n136#2:458\n136#2:464\n273#3:455\n278#3:456\n273#3:457\n273#3:463\n85#4:459\n117#4,2:460\n150#5:462\n*S KotlinDebug\n*F\n+ 1 AnimateBoundsModifier.kt\nandroidx/compose/animation/BoundsTransformDeferredAnimation\n*L\n304#1:453\n310#1:454\n338#1:458\n420#1:464\n320#1:455\n325#1:456\n338#1:457\n420#1:463\n353#1:459\n353#1:460,2\n414#1:462\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u001e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\u001d\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008!\u0010\"J6\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020<J\u0018\u0010=\u001a\u00020\u00062\u0006\u00107\u001a\u0002082\u0006\u0010;\u001a\u00020<H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u001c\u0010\u0018\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u0013R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010#\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R/\u0010&\u001a\u0004\u0018\u00010\u00062\u0008\u0010%\u001a\u0004\u0018\u00010\u00068B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008\'\u0010\u001e\"\u0004\u0008(\u0010)R\u0013\u0010,\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u001eR\u0016\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/compose/animation/BoundsTransformDeferredAnimation;",
        "",
        "<init>",
        "()V",
        "animatable",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        "targetSize",
        "Landroidx/compose/ui/geometry/Size;",
        "J",
        "targetOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "isPending",
        "",
        "updateTargetSize",
        "",
        "size",
        "updateTargetSize-uvyYCjk",
        "(J)V",
        "updateTargetOffset",
        "offset",
        "updateTargetOffset-k-4lQ0M",
        "currentPosition",
        "currentSize",
        "getCurrentSize-NH-jbRc",
        "()J",
        "setCurrentSize-uvyYCjk",
        "currentBounds",
        "getCurrentBounds",
        "()Landroidx/compose/ui/geometry/Rect;",
        "updateCurrentBounds",
        "position",
        "updateCurrentBounds-tz77jQw",
        "(JJ)V",
        "isIdle",
        "()Z",
        "<set-?>",
        "animatedValue",
        "getAnimatedValue",
        "setAnimatedValue",
        "(Landroidx/compose/ui/geometry/Rect;)V",
        "animatedValue$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "value",
        "getValue",
        "directManipulationParents",
        "",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "additionalOffset",
        "updateTargetOffsetAndAnimate",
        "lookaheadScope",
        "Landroidx/compose/ui/layout/LookaheadScope;",
        "placementScope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "directManipulationParentsDirty",
        "includeMotionFrameOfReference",
        "boundsTransform",
        "Landroidx/compose/animation/BoundsTransform;",
        "animate",
        "animation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private additionalOffset:J

.field private animatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation
.end field

.field private final animatedValue$delegate:Landroidx/compose/runtime/MutableState;

.field private currentPosition:J

.field private currentSize:J

.field private directManipulationParents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private isPending:Z

.field private targetOffset:J

.field private targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    .line 295
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    .line 331
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    .line 332
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    .line 353
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatedValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 359
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    .line 291
    return-void
.end method

.method private final animate(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/BoundsTransform;)Landroidx/compose/ui/geometry/Rect;
    .locals 14
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;

    .line 420
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 463
    .local v2, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v0

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v5, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    .line 420
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    .end local v2    # "$i$f$isSpecified-k-4lQ0M":I
    :goto_0
    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 464
    .local v2, "$i$f$isSpecified-uvyYCjk":I
    cmp-long v3, v0, v7

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 420
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-$this$isSpecified$0$iv":J
    .end local v2    # "$i$f$isSpecified-uvyYCjk":I
    :goto_1
    if-eqz v5, :cond_3

    .line 424
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    iget-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 425
    .local v2, "target":Landroidx/compose/ui/geometry/Rect;
    iget-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_2

    new-instance v7, Landroidx/compose/animation/core/Animatable;

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v9

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    .end local v2    # "target":Landroidx/compose/ui/geometry/Rect;
    .local v8, "target":Landroidx/compose/ui/geometry/Rect;
    invoke-direct/range {v7 .. v13}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v7

    .end local v8    # "target":Landroidx/compose/ui/geometry/Rect;
    .restart local v2    # "target":Landroidx/compose/ui/geometry/Rect;
    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 426
    .local v1, "anim":Landroidx/compose/animation/core/Animatable;
    :goto_2
    iput-object v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    .line 430
    iget-boolean v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    if-eqz v0, :cond_3

    .line 431
    iput-boolean v6, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    .line 432
    sget-object v9, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;

    const/4 v5, 0x0

    move-object v4, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/BoundsTransformDeferredAnimation;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 441
    .end local v1    # "anim":Landroidx/compose/animation/core/Animatable;
    .end local v2    # "target":Landroidx/compose/ui/geometry/Rect;
    :cond_3
    iget-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private final getAnimatedValue()Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 353
    iget-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatedValue$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 459
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 353
    return-object v0
.end method

.method private final setAnimatedValue(Landroidx/compose/ui/geometry/Rect;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Rect;

    .line 353
    iget-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatedValue$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 460
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 461
    nop

    .line 353
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final updateTargetOffset-k-4lQ0M(J)V
    .locals 12
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 320
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 455
    .local v2, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v3, 0x7fffffff7fffffffL

    and-long v5, v0, v3

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v6

    .line 320
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    .end local v2    # "$i$f$isSpecified-k-4lQ0M":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    iget-wide v10, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iput-boolean v9, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    .line 323
    :cond_1
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    .line 325
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 456
    .local v2, "$i$f$isUnspecified-k-4lQ0M":I
    and-long/2addr v3, v0

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    move v6, v9

    .line 325
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    .end local v2    # "$i$f$isUnspecified-k-4lQ0M":I
    :cond_2
    if-eqz v6, :cond_3

    .line 326
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    .line 328
    :cond_3
    return-void
.end method


# virtual methods
.method public final getCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 12

    .line 336
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    .line 337
    .local v0, "size":J
    iget-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    .line 338
    .local v2, "position":J
    move-wide v4, v2

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v6, 0x0

    .line 457
    .local v6, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v7, 0x7fffffff7fffffffL

    and-long/2addr v7, v4

    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v7, v9

    const/4 v8, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v11

    .line 338
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    .end local v6    # "$i$f$isSpecified-k-4lQ0M":I
    :goto_0
    if-eqz v4, :cond_2

    move-wide v4, v0

    .local v4, "$v$c$androidx-compose-ui-geometry-Size$-$this$isSpecified$0$iv":J
    const/4 v6, 0x0

    .line 458
    .local v6, "$i$f$isSpecified-uvyYCjk":I
    cmp-long v7, v4, v9

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v8, v11

    .line 338
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Size$-$this$isSpecified$0$iv":J
    .end local v6    # "$i$f$isSpecified-uvyYCjk":I
    :goto_1
    if-eqz v8, :cond_2

    .line 339
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    goto :goto_2

    .line 341
    :cond_2
    const/4 v4, 0x0

    .line 338
    :goto_2
    return-object v4
.end method

.method public final getCurrentSize-NH-jbRc()J
    .locals 2

    .line 332
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    return-wide v0
.end method

.method public final getValue()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 356
    invoke-virtual {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getAnimatedValue()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isIdle()Z
    .locals 3

    .line 351
    iget-boolean v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final setCurrentSize-uvyYCjk(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-<set-?>$0"    # J

    .line 332
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    return-void
.end method

.method public final updateCurrentBounds-tz77jQw(JJ)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Size$-size$0"    # J

    .line 346
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    .line 347
    iput-wide p3, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    .line 348
    return-void
.end method

.method public final updateTargetOffsetAndAnimate(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;Lkotlinx/coroutines/CoroutineScope;ZZLandroidx/compose/animation/BoundsTransform;)V
    .locals 19
    .param p1, "lookaheadScope"    # Landroidx/compose/ui/layout/LookaheadScope;
    .param p2, "placementScope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p3, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p4, "directManipulationParentsDirty"    # Z
    .param p5, "includeMotionFrameOfReference"    # Z
    .param p6, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;

    .line 369
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v4, v1

    .local v4, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v1, 0x0

    .line 370
    .local v1, "$i$a$-let-BoundsTransformDeferredAnimation$updateTargetOffsetAndAnimate$1":I
    move-object/from16 v2, p1

    .local v2, "$this$updateTargetOffsetAndAnimate_u24lambda_u240_u240":Landroidx/compose/ui/layout/LookaheadScope;
    const/4 v10, 0x0

    .line 371
    .local v10, "$i$a$-with-BoundsTransformDeferredAnimation$updateTargetOffsetAndAnimate$1$1":I
    move-object/from16 v11, p2

    invoke-interface {v2, v11}, Landroidx/compose/ui/layout/LookaheadScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    .line 373
    .local v3, "lookaheadScopeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    .line 374
    .local v5, "delta":J
    if-nez p5, :cond_7

    if-eqz p4, :cond_7

    .line 377
    iget-object v7, v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->directManipulationParents:Ljava/util/List;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 378
    .local v7, "parents":Ljava/util/List;
    :cond_0
    move-object v8, v4

    .line 379
    .local v8, "currentCoords":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v9, 0x0

    .line 382
    .local v9, "index":I
    :goto_0
    invoke-interface {v2, v8}, Landroidx/compose/ui/layout/LookaheadScope;->toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 383
    invoke-interface {v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->getIntroducesMotionFrameOfReference()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 384
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_1

    .line 385
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 387
    :cond_1
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 388
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    .line 389
    invoke-interface {v7, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v5

    .line 392
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 394
    :cond_3
    invoke-interface {v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v12

    goto :goto_0

    .line 397
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "i":I
    if-gt v9, v12, :cond_6

    .line 398
    :goto_3
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v13

    invoke-static {v5, v6, v13, v14}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    .line 399
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 397
    if-eq v12, v9, :cond_6

    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 401
    .end local v12    # "i":I
    :cond_6
    iput-object v7, v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->directManipulationParents:Ljava/util/List;

    move-wide v12, v5

    goto :goto_4

    .line 403
    .end local v7    # "parents":Ljava/util/List;
    .end local v8    # "currentCoords":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v9    # "index":I
    :cond_7
    move-wide v12, v5

    .end local v5    # "delta":J
    .local v12, "delta":J
    :goto_4
    iget-wide v5, v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    invoke-static {v5, v6, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    .line 406
    nop

    .line 407
    nop

    .line 406
    nop

    .line 408
    nop

    .line 406
    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/layout/LookaheadScope;->localLookaheadPositionOf-au-aQtc$default(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide v5

    .line 405
    nop

    .line 410
    .local v5, "targetOffset":J
    iget-wide v7, v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->updateTargetOffset-k-4lQ0M(J)V

    .line 412
    nop

    .line 413
    move-object/from16 v7, p3

    move-object/from16 v8, p6

    invoke-direct {v0, v7, v8}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animate(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/BoundsTransform;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 414
    iget-wide v14, v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    .local v14, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v16, 0x0

    .line 462
    .local v16, "$i$f$unaryMinus-F1C5BW0":I
    const-wide v17, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long v17, v14, v17

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v14

    .line 414
    .end local v14    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v16    # "$i$f$unaryMinus-F1C5BW0":I
    invoke-virtual {v9, v14, v15}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 412
    invoke-direct {v0, v9}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->setAnimatedValue(Landroidx/compose/ui/geometry/Rect;)V

    .line 415
    nop

    .line 370
    .end local v2    # "$this$updateTargetOffsetAndAnimate_u24lambda_u240_u240":Landroidx/compose/ui/layout/LookaheadScope;
    .end local v3    # "lookaheadScopeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v5    # "targetOffset":J
    .end local v10    # "$i$a$-with-BoundsTransformDeferredAnimation$updateTargetOffsetAndAnimate$1$1":I
    .end local v12    # "delta":J
    nop

    .line 416
    nop

    .end local v1    # "$i$a$-let-BoundsTransformDeferredAnimation$updateTargetOffsetAndAnimate$1":I
    .end local v4    # "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    goto :goto_5

    .line 369
    :cond_8
    move-object/from16 v11, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    :goto_5
    nop

    .line 417
    return-void
.end method

.method public final updateTargetSize-uvyYCjk(J)V
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-size$0"    # J

    .line 304
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 453
    .local v2, "$i$f$isSpecified-uvyYCjk":I
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    .line 304
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-$this$isSpecified$0$iv":J
    .end local v2    # "$i$f$isSpecified-uvyYCjk":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->roundToIntSize-uvyYCjk(J)J

    move-result-wide v0

    iget-wide v8, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSizeKt;->roundToIntSize-uvyYCjk(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iput-boolean v7, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    .line 308
    :cond_1
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    .line 310
    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$f$isUnspecified-uvyYCjk":I
    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    move v6, v7

    .line 310
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-$this$isUnspecified$0$iv":J
    .end local v2    # "$i$f$isUnspecified-uvyYCjk":I
    :cond_2
    if-eqz v6, :cond_3

    .line 311
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    .line 313
    :cond_3
    return-void
.end method
