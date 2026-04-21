.class public Landroidx/compose/material/SwipeableState;
.super Ljava/lang/Object;
.source "Swipeable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/SwipeableState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,909:1\n21#2:910\n23#2:914\n50#3:911\n55#3:913\n107#4:912\n81#5:915\n107#5,2:916\n81#5:918\n107#5,2:919\n81#5:921\n107#5,2:922\n81#5:952\n107#5,2:953\n81#5:958\n107#5,2:959\n2333#6,14:924\n2333#6,14:938\n76#7:955\n109#7,2:956\n1#8:961\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState\n*L\n134#1:910\n134#1:914\n134#1:911\n134#1:913\n134#1:912\n97#1:915\n97#1:916,2\n103#1:918\n103#1:919,2\n130#1:921\n130#1:922,2\n201#1:952\n201#1:953,2\n205#1:958\n205#1:959,2\n180#1:924,14\n186#1:938,14\n203#1:955\n203#1:956,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Material\'s Swipeable has been replaced by Foundation\'s AnchoredDraggable APIs. Please see developer.android.com for an overview of the changes and a migration guide."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0017\u0008\u0017\u0018\u0000 v*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001vBB\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012#\u0008\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0002\u0010\rJ$\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020\u00062\u000c\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@\u00a2\u0006\u0002\u0010cJ&\u0010d\u001a\u00020`2\u0006\u0010P\u001a\u00028\u00002\u000e\u0008\u0002\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0087@\u00a2\u0006\u0002\u0010fJ!\u0010g\u001a\u00020`2\u0012\u0010h\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0011H\u0000\u00a2\u0006\u0002\u0008iJ\u000e\u0010j\u001a\u00020\u00062\u0006\u0010k\u001a\u00020\u0006J\u0016\u0010l\u001a\u00020`2\u0006\u0010m\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010nJ8\u0010o\u001a\u00020`2\u0012\u0010p\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010h\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0011H\u0080@\u00a2\u0006\u0004\u0008q\u0010rJ\u0016\u0010s\u001a\u00020`2\u0006\u0010a\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010nJ\u0016\u0010t\u001a\u00020`2\u0006\u0010P\u001a\u00028\u0000H\u0087@\u00a2\u0006\u0002\u0010uR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000RC\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00118@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR+\u0010\u001f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00008F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0018\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010%\u001a\u00020\u00068FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0014\u0010*\u001a\u00020+X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R+\u0010.\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00082\u0010\u0018\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R \u00103\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u001104X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00105\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010)\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010)\"\u0004\u0008;\u00108R\u0017\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060=8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u000e\u0010@\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00060=8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010?R\u000e\u0010C\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00000E8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008F\u0010\'\u001a\u0004\u0008G\u0010HR/\u0010J\u001a\u0004\u0018\u00010I2\u0008\u0010\u0010\u001a\u0004\u0018\u00010I8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008O\u0010\u0018\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001a\u0010P\u001a\u00028\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008Q\u0010\'\u001a\u0004\u0008R\u0010!RO\u0010T\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060S2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060S8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008Y\u0010\u0018\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR+\u0010Z\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008[\u0010)\"\u0004\u0008\\\u00108\u00a8\u0006w"
    }
    d2 = {
        "Landroidx/compose/material/SwipeableState;",
        "T",
        "",
        "initialValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "confirmStateChange",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "newValue",
        "",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V",
        "absoluteOffset",
        "Landroidx/compose/runtime/MutableFloatState;",
        "<set-?>",
        "",
        "anchors",
        "getAnchors$material_release",
        "()Ljava/util/Map;",
        "setAnchors$material_release",
        "(Ljava/util/Map;)V",
        "anchors$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getAnimationSpec$material_release",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "animationTarget",
        "Landroidx/compose/runtime/MutableState;",
        "getConfirmStateChange$material_release",
        "()Lkotlin/jvm/functions/Function1;",
        "currentValue",
        "getCurrentValue",
        "()Ljava/lang/Object;",
        "setCurrentValue",
        "(Ljava/lang/Object;)V",
        "currentValue$delegate",
        "direction",
        "getDirection$annotations",
        "()V",
        "getDirection",
        "()F",
        "draggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "getDraggableState$material_release",
        "()Landroidx/compose/foundation/gestures/DraggableState;",
        "isAnimationRunning",
        "()Z",
        "setAnimationRunning",
        "(Z)V",
        "isAnimationRunning$delegate",
        "latestNonEmptyAnchorsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "maxBound",
        "getMaxBound$material_release",
        "setMaxBound$material_release",
        "(F)V",
        "minBound",
        "getMinBound$material_release",
        "setMinBound$material_release",
        "offset",
        "Landroidx/compose/runtime/State;",
        "getOffset",
        "()Landroidx/compose/runtime/State;",
        "offsetState",
        "overflow",
        "getOverflow",
        "overflowState",
        "progress",
        "Landroidx/compose/material/SwipeProgress;",
        "getProgress$annotations",
        "getProgress",
        "()Landroidx/compose/material/SwipeProgress;",
        "Landroidx/compose/material/ResistanceConfig;",
        "resistance",
        "getResistance$material_release",
        "()Landroidx/compose/material/ResistanceConfig;",
        "setResistance$material_release",
        "(Landroidx/compose/material/ResistanceConfig;)V",
        "resistance$delegate",
        "targetValue",
        "getTargetValue$annotations",
        "getTargetValue",
        "Lkotlin/Function2;",
        "thresholds",
        "getThresholds$material_release",
        "()Lkotlin/jvm/functions/Function2;",
        "setThresholds$material_release",
        "(Lkotlin/jvm/functions/Function2;)V",
        "thresholds$delegate",
        "velocityThreshold",
        "getVelocityThreshold$material_release",
        "setVelocityThreshold$material_release",
        "velocityThreshold$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "animateInternalToOffset",
        "",
        "target",
        "spec",
        "(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateTo",
        "anim",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureInit",
        "newAnchors",
        "ensureInit$material_release",
        "performDrag",
        "delta",
        "performFling",
        "velocity",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processNewAnchors",
        "oldAnchors",
        "processNewAnchors$material_release",
        "(Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "snapInternalToOffset",
        "snapTo",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material/SwipeableState$Companion;


# instance fields
.field private final absoluteOffset:Landroidx/compose/runtime/MutableFloatState;

.field private final anchors$delegate:Landroidx/compose/runtime/MutableState;

.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final animationTarget:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final confirmStateChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final currentValue$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggableState:Landroidx/compose/foundation/gestures/DraggableState;

.field private final isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

.field private final latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private maxBound:F

.field private minBound:F

.field private final offsetState:Landroidx/compose/runtime/MutableFloatState;

.field private final overflowState:Landroidx/compose/runtime/MutableFloatState;

.field private final resistance$delegate:Landroidx/compose/runtime/MutableState;

.field private final thresholds$delegate:Landroidx/compose/runtime/MutableState;

.field private final velocityThreshold$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/SwipeableState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/SwipeableState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/SwipeableState;->Companion:Landroidx/compose/material/SwipeableState$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 88
    iput-object p3, p0, Landroidx/compose/material/SwipeableState;->confirmStateChange:Lkotlin/jvm/functions/Function1;

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 103
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 120
    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableFloatState;

    .line 121
    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableFloatState;

    .line 125
    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableFloatState;

    .line 128
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 130
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 135
    nop

    .line 133
    new-instance v3, Landroidx/compose/material/SwipeableState$latestNonEmptyAnchorsFlow$1;

    invoke-direct {v3, p0}, Landroidx/compose/material/SwipeableState$latestNonEmptyAnchorsFlow$1;-><init>(Landroidx/compose/material/SwipeableState;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    .line 134
    nop

    .local v3, "$this$filter$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 910
    .local v4, "$i$f$filter":I
    move-object v5, v3

    .local v5, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 911
    .local v6, "$i$f$unsafeTransform":I
    const/4 v7, 0x0

    .line 912
    .local v7, "$i$f$unsafeFlow":I
    new-instance v8, Landroidx/compose/material/SwipeableState$special$$inlined$filter$1;

    invoke-direct {v8, v5}, Landroidx/compose/material/SwipeableState$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    .line 913
    .end local v7    # "$i$f$unsafeFlow":I
    nop

    .line 914
    .end local v5    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$unsafeTransform":I
    nop

    .line 135
    .end local v3    # "$this$filter$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$filter":I
    const/4 v3, 0x1

    invoke-static {v8, v3}, Lkotlinx/coroutines/flow/FlowKt;->take(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    .line 137
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 138
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v3, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 201
    sget-object v3, Landroidx/compose/material/SwipeableState$thresholds$2;->INSTANCE:Landroidx/compose/material/SwipeableState$thresholds$2;

    invoke-static {v3, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 203
    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 205
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 207
    new-instance v0, Landroidx/compose/material/SwipeableState$draggableState$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/SwipeableState$draggableState$1;-><init>(Landroidx/compose/material/SwipeableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 85
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 85
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 87
    sget-object p2, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {p2}, Landroidx/compose/material/SwipeableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    .line 85
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 88
    sget-object p3, Landroidx/compose/material/SwipeableState$1;->INSTANCE:Landroidx/compose/material/SwipeableState$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 85
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    .line 422
    return-void
.end method

.method public static final synthetic access$animateInternalToOffset(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;
    .param p1, "target"    # F
    .param p2, "spec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableState;->animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAbsoluteOffset$p(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableFloatState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;

    .line 82
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableFloatState;

    return-object v0
.end method

.method public static final synthetic access$getAnimationTarget$p(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;

    .line 82
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public static final synthetic access$getOffsetState$p(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableFloatState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;

    .line 82
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableFloatState;

    return-object v0
.end method

.method public static final synthetic access$getOverflowState$p(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableFloatState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;

    .line 82
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableFloatState;

    return-object v0
.end method

.method public static final synthetic access$setAnimationRunning(Landroidx/compose/material/SwipeableState;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;
    .param p1, "<set-?>"    # Z

    .line 82
    invoke-direct {p0, p1}, Landroidx/compose/material/SwipeableState;->setAnimationRunning(Z)V

    return-void
.end method

.method public static final synthetic access$setCurrentValue(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 82
    invoke-direct {p0, p1}, Landroidx/compose/material/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$snapInternalToOffset(Landroidx/compose/material/SwipeableState;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/SwipeableState;
    .param p1, "target"    # F
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/compose/material/SwipeableState;->snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "target"    # F
    .param p2, "spec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    new-instance v1, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;-><init>(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v3, p3

    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DraggableState;->drag$default(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_0

    return-object p3

    :cond_0
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 238
    return-object p3
.end method

.method public static synthetic animateTo$default(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 334
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    iget-object p2, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableState;->animateTo(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: animateTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getDirection$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProgress$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTargetValue$annotations()V
    .locals 0

    return-void
.end method

.method private final setAnimationRunning(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 103
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 919
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 920
    nop

    .line 103
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setCurrentValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 916
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 917
    nop

    .line 97
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "target"    # F
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    new-instance v1, Landroidx/compose/material/SwipeableState$snapInternalToOffset$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroidx/compose/material/SwipeableState$snapInternalToOffset$2;-><init>(FLandroidx/compose/material/SwipeableState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v3, p2

    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DraggableState;->drag$default(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p2

    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 221
    return-object p2
.end method


# virtual methods
.method public final animateTo(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/Object;
    .param p2, "anim"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/material/SwipeableState$animateTo$2;

    invoke-direct {v1, p1, p0, p2}, Landroidx/compose/material/SwipeableState$animateTo$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Landroidx/compose/animation/core/AnimationSpec;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 351
    return-object v0
.end method

.method public final ensureInit$material_release(Ljava/util/Map;)V
    .locals 3
    .param p1, "newAnchors"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 144
    .local v0, "initialOffset":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 148
    iget-object v1, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    goto :goto_0

    .line 144
    :cond_0
    const/4 v1, 0x0

    .line 145
    .local v1, "$i$a$-requireNotNull-SwipeableState$ensureInit$1":I
    nop

    .line 144
    .end local v1    # "$i$a$-requireNotNull-SwipeableState$ensureInit$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The initial value must have an associated anchor."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "initialOffset":Ljava/lang/Float;
    :cond_1
    :goto_0
    return-void
.end method

.method public final getAnchors$material_release()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 921
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/util/Map;

    .line 130
    return-object v0
.end method

.method public final getAnimationSpec$material_release()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final getConfirmStateChange$material_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->confirmStateChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCurrentValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 915
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return-object v0
.end method

.method public final getDirection()F
    .locals 3

    .line 308
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 961
    .local v0, "it":F
    const/4 v1, 0x0

    .line 308
    .local v1, "$i$a$-let-SwipeableState$direction$1":I
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .end local v0    # "it":F
    .end local v1    # "$i$a$-let-SwipeableState$direction$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final getDraggableState$material_release()Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-object v0
.end method

.method public final getMaxBound$material_release()F
    .locals 1

    .line 138
    iget v0, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    return v0
.end method

.method public final getMinBound$material_release()F
    .locals 1

    .line 137
    iget v0, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    return v0
.end method

.method public final getOffset()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final getOverflow()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final getProgress()Landroidx/compose/material/SwipeProgress;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material/SwipeProgress<",
            "TT;>;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material/SwipeableKt;->access$findBounds(FLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "bounds":Ljava/util/List;
    const/4 v1, 0x0

    .line 272
    .local v1, "from":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 273
    .local v2, "to":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 274
    .local v3, "fraction":F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 287
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getDirection()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 288
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    goto :goto_0

    .line 281
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 283
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 276
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    .line 277
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v2

    .line 278
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 290
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 287
    :goto_0
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 286
    nop

    .local v5, "a":F
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 292
    .local v4, "b":F
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 293
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 294
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    sub-float/2addr v6, v5

    sub-float v7, v4, v5

    div-float v3, v6, v7

    .line 297
    .end local v4    # "b":F
    .end local v5    # "a":F
    :goto_1
    new-instance v4, Landroidx/compose/material/SwipeProgress;

    invoke-direct {v4, v1, v2, v3}, Landroidx/compose/material/SwipeProgress;-><init>(Ljava/lang/Object;Ljava/lang/Object;F)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getResistance$material_release()Landroidx/compose/material/ResistanceConfig;
    .locals 3

    .line 205
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 958
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/material/ResistanceConfig;

    .line 205
    return-object v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 253
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    move v2, v0

    .line 254
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 255
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getThresholds$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 256
    nop

    .line 257
    nop

    .line 251
    const/4 v5, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static/range {v1 .. v6}, Landroidx/compose/material/SwipeableKt;->access$computeTarget(FFLjava/util/Set;Lkotlin/jvm/functions/Function2;FF)F

    move-result v0

    .line 259
    .local v0, "target":F
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getThresholds$material_release()Lkotlin/jvm/functions/Function2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 952
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 201
    return-object v0
.end method

.method public final getVelocityThreshold$material_release()F
    .locals 3

    .line 203
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 955
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    .line 203
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return v0
.end method

.method public final isAnimationRunning()Z
    .locals 3

    .line 103
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 918
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 103
    return v0
.end method

.method public final performDrag(F)F
    .locals 5
    .param p1, "delta"    # F

    .line 401
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    add-float/2addr v0, p1

    .line 402
    .local v0, "potentiallyConsumed":F
    iget v1, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    iget v2, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 403
    .local v1, "clamped":F
    iget-object v2, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v2}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v2

    sub-float v2, v1, v2

    .line 404
    .local v2, "deltaToConsume":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 405
    iget-object v3, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-interface {v3, v2}, Landroidx/compose/foundation/gestures/DraggableState;->dispatchRawDelta(F)V

    .line 407
    :cond_0
    return v2
.end method

.method public final performFling(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "velocity"    # F
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/material/SwipeableState$performFling$2;

    invoke-direct {v1, p0, p1}, Landroidx/compose/material/SwipeableState$performFling$2;-><init>(Landroidx/compose/material/SwipeableState;F)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 382
    return-object v0
.end method

.method public final processNewAnchors$material_release(Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material/SwipeableState$processNewAnchors$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;

    iget v1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material/SwipeableState$processNewAnchors$1;-><init>(Landroidx/compose/material/SwipeableState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 152
    iget v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    .local p1, "targetOffset":F
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    .local p2, "newAnchors":Ljava/util/Map;
    iget-object v1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/material/SwipeableState;

    .local v1, "this":Landroidx/compose/material/SwipeableState;
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    .line 194
    :catchall_0
    move-exception v2

    goto/16 :goto_9

    .line 152
    .end local v1    # "this":Landroidx/compose/material/SwipeableState;
    .end local p1    # "targetOffset":F
    .end local p2    # "newAnchors":Ljava/util/Map;
    :pswitch_1
    iget p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    .restart local p1    # "targetOffset":F
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    .restart local p2    # "newAnchors":Ljava/util/Map;
    iget-object v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/material/SwipeableState;

    .local v2, "this":Landroidx/compose/material/SwipeableState;
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    .line 194
    :catchall_1
    move-exception v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_9

    .line 190
    :catch_0
    move-exception v3

    goto/16 :goto_7

    .line 152
    .end local v2    # "this":Landroidx/compose/material/SwipeableState;
    .end local p1    # "targetOffset":F
    .end local p2    # "newAnchors":Ljava/util/Map;
    :pswitch_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 156
    .restart local v2    # "this":Landroidx/compose/material/SwipeableState;
    .local p1, "oldAnchors":Ljava/util/Map;
    .restart local p2    # "newAnchors":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    .end local p1    # "oldAnchors":Ljava/util/Map;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 160
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 161
    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    .line 162
    .end local p2    # "newAnchors":Ljava/util/Map;
    .local p1, "initialOffset":Ljava/lang/Float;
    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v3, 0x1

    iput v3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    invoke-direct {v2, p2, v0}, Landroidx/compose/material/SwipeableState;->snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Landroidx/compose/material/SwipeableState;
    .end local p1    # "initialOffset":Ljava/lang/Float;
    if-ne p1, v1, :cond_1

    .line 152
    return-object v1

    .line 199
    :cond_1
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 162
    .restart local v2    # "this":Landroidx/compose/material/SwipeableState;
    .restart local p1    # "initialOffset":Ljava/lang/Float;
    :cond_2
    const/4 p1, 0x0

    .line 163
    .end local v2    # "this":Landroidx/compose/material/SwipeableState;
    .local p1, "$i$a$-requireNotNull-SwipeableState$processNewAnchors$2":I
    nop

    .line 162
    .end local p1    # "$i$a$-requireNotNull-SwipeableState$processNewAnchors$2":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "The initial value must have an associated anchor."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    .restart local v2    # "this":Landroidx/compose/material/SwipeableState;
    .local p1, "oldAnchors":Ljava/util/Map;
    .restart local p2    # "newAnchors":Ljava/util/Map;
    :cond_3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, v2, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 172
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v3, v2, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 173
    iget-object v3, v2, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 175
    .local v3, "animationTargetValue":Ljava/lang/Float;
    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 177
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 178
    .local p1, "oldState":Ljava/lang/Object;
    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    .line 180
    .local p1, "newState":Ljava/lang/Float;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_4

    .end local p1    # "newState":Ljava/lang/Float;
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .local p1, "$this$minByOrNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 924
    .local v5, "$i$f$minByOrNull":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 925
    .end local p1    # "$this$minByOrNull$iv":Ljava/lang/Iterable;
    .local v6, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 926
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 927
    .local v4, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 928
    :cond_6
    move-object p1, v4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .local p1, "it":F
    const/4 v7, 0x0

    .line 180
    .local v7, "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$1":I
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 928
    .end local v7    # "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$1":I
    .end local p1    # "it":F
    nop

    .line 930
    .local v8, "minValue$iv":F
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 931
    .local p1, "e$iv":Ljava/lang/Object;
    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .local v7, "it":F
    const/4 v9, 0x0

    .line 180
    .local v9, "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$1":I
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 931
    .end local v7    # "it":F
    .end local v9    # "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$1":I
    nop

    .line 932
    .local v10, "v$iv":F
    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_8

    .line 933
    .end local v4    # "minElem$iv":Ljava/lang/Object;
    .end local v8    # "minValue$iv":F
    move-object v4, p1

    .line 934
    .restart local v4    # "minElem$iv":Ljava/lang/Object;
    move v7, v10

    move v8, v7

    .line 936
    .end local v10    # "v$iv":F
    .end local p1    # "e$iv":Ljava/lang/Object;
    .restart local v8    # "minValue$iv":F
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    .line 937
    .end local v3    # "animationTargetValue":Ljava/lang/Float;
    nop

    .end local v4    # "minElem$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$minByOrNull":I
    .end local v6    # "iterator$iv":Ljava/util/Iterator;
    .end local v8    # "minValue$iv":F
    :goto_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    goto/16 :goto_4

    .line 183
    .local p1, "oldAnchors":Ljava/util/Map;
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 184
    .local p1, "actualOldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    move-object p1, v3

    .line 185
    .local p1, "value":Ljava/lang/Object;
    :cond_a
    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/Object;
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_4

    .line 186
    :cond_b
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .local p1, "$this$minByOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 938
    .local v3, "$i$f$minByOrNull":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 939
    .end local p1    # "$this$minByOrNull$iv":Ljava/lang/Iterable;
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_3

    .line 940
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 941
    .restart local v4    # "minElem$iv":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3

    .line 942
    :cond_d
    move-object p1, v4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .local p1, "it":F
    const/4 v6, 0x0

    .line 186
    .local v6, "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$2":I
    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 942
    .end local v6    # "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$2":I
    .end local p1    # "it":F
    nop

    .line 944
    .local v7, "minValue$iv":F
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 945
    .local p1, "e$iv":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .local v6, "it":F
    const/4 v8, 0x0

    .line 186
    .local v8, "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$2":I
    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 945
    .end local v6    # "it":F
    .end local v8    # "$i$a$-minByOrNull-SwipeableState$processNewAnchors$targetOffset$2":I
    nop

    .line 946
    .local v9, "v$iv":F
    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_f

    .line 947
    .end local v4    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":F
    move-object v4, p1

    .line 948
    .restart local v4    # "minElem$iv":Ljava/lang/Object;
    move v6, v9

    move v7, v6

    .line 950
    .end local v9    # "v$iv":F
    .end local p1    # "e$iv":Ljava/lang/Object;
    .restart local v7    # "minValue$iv":F
    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_e

    .line 951
    nop

    .end local v3    # "$i$f$minByOrNull":I
    .end local v4    # "minElem$iv":Ljava/lang/Object;
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v7    # "minValue$iv":F
    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 175
    :goto_4
    move p1, v4

    .line 188
    .local p1, "targetOffset":F
    nop

    .line 189
    :try_start_2
    iget-object v3, v2, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    const/4 v4, 0x2

    iput v4, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    invoke-direct {v2, p1, v3, v0}, Landroidx/compose/material/SwipeableState;->animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v1, :cond_10

    .line 152
    return-object v1

    .line 194
    :cond_10
    :goto_5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/compose/material/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 195
    .end local p1    # "targetOffset":F
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 196
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 197
    .end local v2    # "this":Landroidx/compose/material/SwipeableState;
    .end local p2    # "newAnchors":Ljava/util/Map;
    :goto_6
    goto/16 :goto_1

    .line 192
    .restart local v2    # "this":Landroidx/compose/material/SwipeableState;
    .restart local p1    # "targetOffset":F
    .restart local p2    # "newAnchors":Ljava/util/Map;
    :goto_7
    :try_start_3
    iput-object v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    const/4 v3, 0x3

    iput v3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    invoke-direct {v2, p1, v0}, Landroidx/compose/material/SwipeableState;->snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v3, v1, :cond_11

    .line 152
    return-object v1

    .line 192
    :cond_11
    move-object v1, v2

    .line 194
    .end local v2    # "this":Landroidx/compose/material/SwipeableState;
    .restart local v1    # "this":Landroidx/compose/material/SwipeableState;
    :goto_8
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/compose/material/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 195
    .end local p1    # "targetOffset":F
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 196
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroidx/compose/material/SwipeableState;->maxBound:F

    .end local v1    # "this":Landroidx/compose/material/SwipeableState;
    .end local p2    # "newAnchors":Ljava/util/Map;
    goto :goto_6

    .line 194
    .restart local v1    # "this":Landroidx/compose/material/SwipeableState;
    .restart local p1    # "targetOffset":F
    .restart local p2    # "newAnchors":Ljava/util/Map;
    :goto_9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/compose/material/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 195
    .end local p1    # "targetOffset":F
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 196
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroidx/compose/material/SwipeableState;->maxBound:F

    .end local v1    # "this":Landroidx/compose/material/SwipeableState;
    .end local p2    # "newAnchors":Ljava/util/Map;
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setAnchors$material_release(Ljava/util/Map;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 922
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 923
    nop

    .line 130
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setMaxBound$material_release(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 138
    iput p1, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    return-void
.end method

.method public final setMinBound$material_release(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 137
    iput p1, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    return-void
.end method

.method public final setResistance$material_release(Landroidx/compose/material/ResistanceConfig;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/material/ResistanceConfig;

    .line 205
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 959
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 960
    nop

    .line 205
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setThresholds$material_release(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 953
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 954
    nop

    .line 201
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setVelocityThreshold$material_release(F)V
    .locals 3
    .param p1, "<set-?>"    # F

    .line 203
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableFloatState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 956
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 957
    nop

    .line 203
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/material/SwipeableState$snapTo$2;

    invoke-direct {v1, p1, p0}, Landroidx/compose/material/SwipeableState$snapTo$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 325
    return-object v0
.end method
