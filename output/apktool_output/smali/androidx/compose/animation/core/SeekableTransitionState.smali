.class public final Landroidx/compose/animation/core/SeekableTransitionState;
.super Landroidx/compose/animation/core/TransitionState;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/SeekableTransitionState$Companion;,
        Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/animation/core/TransitionState<",
        "TS;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/SeekableTransitionState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 4 VectorConverters.kt\nandroidx/compose/animation/core/VectorConvertersKt\n+ 5 Preconditions.kt\nandroidx/compose/animation/core/PreconditionsKt\n+ 6 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 7 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 8 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,2168:1\n85#2:2169\n117#2,2:2170\n85#2:2172\n117#2,2:2173\n80#3:2175\n113#3,2:2176\n71#4:2178\n34#5,4:2179\n53#5,4:2207\n351#6,11:2183\n351#6,11:2194\n919#7,2:2205\n943#7,4:2217\n947#7,8:2222\n287#8,6:2211\n84#8:2221\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/SeekableTransitionState\n*L\n219#1:2169\n219#1:2170,2\n222#1:2172\n222#1:2173,2\n251#1:2175\n251#1:2176,2\n414#1:2178\n483#1:2179,4\n680#1:2207,4\n524#1:2183,11\n545#1:2194,11\n574#1:2205,2\n308#1:2217,4\n308#1:2222,8\n301#1:2211,6\n308#1:2221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 Z*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002YZB\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010=\u001a\u00020\u001fH\u0002J\u000e\u0010>\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010?J\u000e\u0010@\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010?J\u000e\u0010A\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010?J\u0018\u0010B\u001a\u00020\u001f2\u0006\u0010C\u001a\u0002072\u0006\u0010D\u001a\u00020\u0018H\u0002J\u0016\u0010E\u001a\u00020\u001f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0086@\u00a2\u0006\u0002\u0010FJ\"\u0010G\u001a\u00020\u001f2\u0008\u0008\u0001\u0010!\u001a\u00020 2\u0008\u0008\u0002\u0010\u0007\u001a\u00028\u0000H\u0086@\u00a2\u0006\u0002\u0010HJ\u000e\u0010I\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010?J\u000e\u0010J\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010?J\u0008\u0010K\u001a\u00020\u001fH\u0002J*\u0010L\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u0007\u001a\u00028\u00002\u0010\u0008\u0002\u0010M\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010NH\u0086@\u00a2\u0006\u0002\u0010OJ\u001b\u0010P\u001a\u00020\u001f2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0010\u00a2\u0006\u0002\u0008QJ\r\u0010R\u001a\u00020\u001fH\u0010\u00a2\u0006\u0002\u0008SJ\r\u0010T\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008UJ\r\u0010V\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008WJ\u0008\u0010X\u001a\u00020\u001fH\u0002R+\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u00008V@PX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0005R+\u0010\r\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u00008V@PX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u0005R\u001c\u0010\u0011\u001a\u00028\u0000X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u0005R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010!\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020 8G@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010)X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u0014\u0010.\u001a\u00020/X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u000e\u00102\u001a\u000203X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0008\u0012\u0004\u0012\u00020706X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001f0:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001f0:X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006["
    }
    d2 = {
        "Landroidx/compose/animation/core/SeekableTransitionState;",
        "S",
        "Landroidx/compose/animation/core/TransitionState;",
        "initialState",
        "<init>",
        "(Ljava/lang/Object;)V",
        "<set-?>",
        "targetState",
        "getTargetState",
        "()Ljava/lang/Object;",
        "setTargetState$animation_core",
        "targetState$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "currentState",
        "getCurrentState",
        "setCurrentState$animation_core",
        "currentState$delegate",
        "composedTargetState",
        "getComposedTargetState$animation_core",
        "setComposedTargetState$animation_core",
        "Ljava/lang/Object;",
        "transition",
        "Landroidx/compose/animation/core/Transition;",
        "totalDurationNanos",
        "",
        "getTotalDurationNanos$animation_core",
        "()J",
        "setTotalDurationNanos$animation_core",
        "(J)V",
        "recalculateTotalDurationNanos",
        "Lkotlin/Function0;",
        "",
        "",
        "fraction",
        "getFraction",
        "()F",
        "setFraction",
        "(F)V",
        "fraction$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "compositionContinuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "getCompositionContinuation$animation_core",
        "()Lkotlinx/coroutines/CancellableContinuation;",
        "setCompositionContinuation$animation_core",
        "(Lkotlinx/coroutines/CancellableContinuation;)V",
        "compositionContinuationMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "getCompositionContinuationMutex$animation_core",
        "()Lkotlinx/coroutines/sync/Mutex;",
        "mutatorMutex",
        "Landroidx/compose/animation/core/MutatorMutex;",
        "lastFrameTimeNanos",
        "initialValueAnimations",
        "Landroidx/collection/MutableObjectList;",
        "Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;",
        "currentAnimation",
        "firstFrameLambda",
        "Lkotlin/Function1;",
        "durationScale",
        "animateOneFrameLambda",
        "endAllAnimations",
        "runAnimations",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doOneFrame",
        "animateOneFrame",
        "recalculateAnimationValue",
        "animation",
        "deltaPlayTimeNanos",
        "snapTo",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "seekTo",
        "(FLjava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "waitForCompositionAfterTargetStateChange",
        "waitForComposition",
        "moveAnimationToInitialState",
        "animateTo",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "transitionConfigured",
        "transitionConfigured$animation_core",
        "transitionRemoved",
        "transitionRemoved$animation_core",
        "observeTotalDuration",
        "observeTotalDuration$animation_core",
        "onTotalDurationChanged",
        "onTotalDurationChanged$animation_core",
        "seekToFraction",
        "SeekingAnimationState",
        "Companion",
        "animation-core"
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

.field private static final Companion:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

.field private static final Target1:Landroidx/compose/animation/core/AnimationVector1D;

.field private static final ZeroVelocity:Landroidx/compose/animation/core/AnimationVector1D;


# instance fields
.field private final animateOneFrameLambda:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private composedTargetState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private compositionContinuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TS;>;"
        }
    .end annotation
.end field

.field private final compositionContinuationMutex:Lkotlinx/coroutines/sync/Mutex;

.field private currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

.field private final currentState$delegate:Landroidx/compose/runtime/MutableState;

.field private durationScale:F

.field private final firstFrameLambda:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final fraction$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final initialValueAnimations:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;",
            ">;"
        }
    .end annotation
.end field

.field private lastFrameTimeNanos:J

.field private final mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

.field private final recalculateTotalDurationNanos:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final targetState$delegate:Landroidx/compose/runtime/MutableState;

.field private totalDurationNanos:J

.field private transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/SeekableTransitionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->Companion:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/core/SeekableTransitionState;->$stable:I

    .line 774
    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    sput-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->ZeroVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 777
    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    sput-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->Target1:Landroidx/compose/animation/core/AnimationVector1D;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "initialState"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/TransitionState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/MutableState;

    .line 222
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/MutableState;

    .line 229
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;

    .line 240
    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;)V

    iput-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Lkotlin/jvm/functions/Function0;

    .line 251
    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 261
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 264
    new-instance v3, Landroidx/compose/animation/core/MutatorMutex;

    invoke-direct {v3}, Landroidx/compose/animation/core/MutatorMutex;-><init>()V

    iput-object v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 270
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 276
    new-instance v3, Landroidx/collection/MutableObjectList;

    invoke-direct {v3, v1, v2, v0}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    .line 285
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;)V

    iput-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->firstFrameLambda:Lkotlin/jvm/functions/Function1;

    .line 296
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;)V

    iput-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrameLambda:Lkotlin/jvm/functions/Function1;

    .line 218
    return-void
.end method

.method public static final synthetic access$animateOneFrame(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 218
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$doOneFrame(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 218
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->doOneFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$endAllAnimations(Landroidx/compose/animation/core/SeekableTransitionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 218
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Landroidx/compose/animation/core/SeekableTransitionState$Companion;
    .locals 1

    .line 218
    sget-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->Companion:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    return-object v0
.end method

.method public static final synthetic access$getCurrentAnimation$p(Landroidx/compose/animation/core/SeekableTransitionState;)Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 218
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    return-object v0
.end method

.method public static final synthetic access$getInitialValueAnimations$p(Landroidx/compose/animation/core/SeekableTransitionState;)Landroidx/collection/MutableObjectList;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 218
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    return-object v0
.end method

.method public static final synthetic access$getTarget1$cp()Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    .line 218
    sget-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->Target1:Landroidx/compose/animation/core/AnimationVector1D;

    return-object v0
.end method

.method public static final synthetic access$getZeroVelocity$cp()Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    .line 218
    sget-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->ZeroVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    return-object v0
.end method

.method public static final synthetic access$moveAnimationToInitialState(Landroidx/compose/animation/core/SeekableTransitionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 218
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->moveAnimationToInitialState()V

    return-void
.end method

.method public static final synthetic access$runAnimations(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 218
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->runAnimations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$seekToFraction(Landroidx/compose/animation/core/SeekableTransitionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 218
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    return-void
.end method

.method public static final synthetic access$setCurrentAnimation$p(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "<set-?>"    # Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 218
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    return-void
.end method

.method public static final synthetic access$setFraction(Landroidx/compose/animation/core/SeekableTransitionState;F)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "<set-?>"    # F

    .line 218
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    return-void
.end method

.method public static final synthetic access$setLastFrameTimeNanos$p(Landroidx/compose/animation/core/SeekableTransitionState;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "<set-?>"    # J

    .line 218
    iput-wide p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    return-void
.end method

.method public static final synthetic access$waitForComposition(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 218
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->waitForComposition(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$waitForCompositionAfterTargetStateChange(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 218
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->waitForCompositionAfterTargetStateChange(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final animateOneFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 377
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v0

    .line 378
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 379
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    .line 384
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 381
    :cond_0
    iput v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->durationScale:F

    .line 382
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrameLambda:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 384
    return-object v1
.end method

.method static final animateOneFrameLambda$lambda$0(Landroidx/compose/animation/core/SeekableTransitionState;J)Lkotlin/Unit;
    .locals 18
    .param p0, "this$0"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "frameTimeNanos"    # J

    .line 297
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    sub-long v3, v1, v3

    .line 298
    .local v3, "delta":J
    iput-wide v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 299
    long-to-double v5, v3

    iget v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->durationScale:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v5

    .line 300
    .local v5, "deltaPlayTimeNanos":J
    iget-object v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    invoke-virtual {v7}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    .line 301
    iget-object v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    check-cast v7, Landroidx/collection/ObjectList;

    .local v7, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v11, 0x0

    .line 2211
    .local v11, "$i$f$forEach":I
    nop

    .line 2212
    iget-object v12, v7, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 2213
    .local v12, "content$iv":[Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "i$iv":I
    iget v14, v7, Landroidx/collection/ObjectList;->_size:I

    :goto_0
    if-ge v13, v14, :cond_0

    .line 2214
    aget-object v15, v12, v13

    check-cast v15, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .local v15, "animation":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    const/16 v16, 0x0

    .line 304
    .local v16, "$i$a$-forEach-SeekableTransitionState$animateOneFrameLambda$1$1":I
    invoke-direct {v0, v15, v5, v6}, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateAnimationValue(Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;J)V

    .line 305
    invoke-virtual {v15, v10}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setComplete(Z)V

    .line 306
    nop

    .line 2214
    .end local v15    # "animation":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    .end local v16    # "$i$a$-forEach-SeekableTransitionState$animateOneFrameLambda$1$1":I
    nop

    .line 2213
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2216
    .end local v13    # "i$iv":I
    :cond_0
    nop

    .line 307
    .end local v7    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v11    # "$i$f$forEach":I
    .end local v12    # "content$iv":[Ljava/lang/Object;
    iget-object v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->updateInitialValues$animation_core()V

    .line 308
    :cond_1
    iget-object v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    .local v7, "this_$iv":Landroidx/collection/MutableObjectList;
    const/4 v11, 0x0

    .line 2217
    .local v11, "$i$f$removeIf":I
    const/4 v12, 0x0

    .line 2218
    .local v12, "gap$iv":I
    iget v13, v7, Landroidx/collection/MutableObjectList;->_size:I

    .line 2219
    .local v13, "size$iv":I
    iget-object v14, v7, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 2220
    .local v14, "content$iv":[Ljava/lang/Object;
    move-object v15, v7

    check-cast v15, Landroidx/collection/ObjectList;

    .local v15, "this_$iv$iv":Landroidx/collection/ObjectList;
    const/16 v16, 0x0

    .line 2221
    .local v16, "$i$f$getIndices":I
    iget v10, v15, Landroidx/collection/ObjectList;->_size:I

    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v10

    .line 2220
    .end local v15    # "this_$iv$iv":Landroidx/collection/ObjectList;
    .end local v16    # "$i$f$getIndices":I
    invoke-virtual {v10}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v15

    .local v15, "i$iv":I
    invoke-virtual {v10}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v10

    if-gt v15, v10, :cond_3

    .line 2222
    :goto_1
    sub-int v16, v15, v12

    aget-object v17, v14, v15

    aput-object v17, v14, v16

    .line 2223
    aget-object v16, v14, v15

    check-cast v16, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .local v16, "it":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    const/16 v17, 0x0

    .line 308
    .local v17, "$i$a$-removeIf-SeekableTransitionState$animateOneFrameLambda$1$2":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->isComplete()Z

    move-result v16

    .line 2223
    .end local v16    # "it":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    .end local v17    # "$i$a$-removeIf-SeekableTransitionState$animateOneFrameLambda$1$2":I
    if-eqz v16, :cond_2

    .line 2224
    add-int/lit8 v12, v12, 0x1

    .line 2220
    :cond_2
    if-eq v15, v10, :cond_3

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2227
    .end local v15    # "i$iv":I
    :cond_3
    sub-int v10, v13, v12

    invoke-static {v14, v8, v10, v13}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 2228
    iget v10, v7, Landroidx/collection/MutableObjectList;->_size:I

    sub-int/2addr v10, v12

    iput v10, v7, Landroidx/collection/MutableObjectList;->_size:I

    .line 2229
    nop

    .line 310
    .end local v7    # "this_$iv":Landroidx/collection/MutableObjectList;
    .end local v11    # "$i$f$removeIf":I
    .end local v12    # "gap$iv":I
    .end local v13    # "size$iv":I
    .end local v14    # "content$iv":[Ljava/lang/Object;
    :cond_4
    iget-object v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 311
    .local v7, "currentAnimation":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    if-eqz v7, :cond_7

    .line 312
    iget-wide v10, v0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    invoke-virtual {v7, v10, v11}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setDurationNanos(J)V

    .line 313
    invoke-direct {v0, v7, v5, v6}, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateAnimationValue(Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;J)V

    .line 314
    invoke-virtual {v7}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getValue()F

    move-result v10

    invoke-direct {v0, v10}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    .line 315
    invoke-virtual {v7}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getValue()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-nez v10, :cond_5

    const/4 v9, 0x1

    :cond_5
    if-eqz v9, :cond_6

    .line 316
    iput-object v8, v0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 318
    :cond_6
    invoke-direct {v0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 320
    :cond_7
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v8
.end method

.method public static synthetic animateTo$default(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 595
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object p1

    .line 594
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 596
    const/4 p2, 0x0

    .line 594
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/SeekableTransitionState;->animateTo(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final doOneFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 367
    iget-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->firstFrameLambda:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 373
    :goto_0
    return-object v0

    .line 371
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0
.end method

.method private final endAllAnimations()V
    .locals 2

    .line 326
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->clearInitialAnimations$animation_core()V

    .line 327
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    .line 328
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 329
    .local v0, "current":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    if-eqz v0, :cond_1

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 331
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    .line 332
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 334
    :cond_1
    return-void
.end method

.method static final firstFrameLambda$lambda$0(Landroidx/compose/animation/core/SeekableTransitionState;J)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/animation/core/SeekableTransitionState;
    .param p1, "frameTimeNanos"    # J

    .line 286
    iput-wide p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 287
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final moveAnimationToInitialState()V
    .locals 14

    .line 557
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-nez v0, :cond_0

    return-void

    .line 559
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 560
    iget-wide v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getFraction()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 563
    :cond_2
    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    invoke-direct {v1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;-><init>()V

    move-object v4, v1

    .local v4, "it":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    const/4 v5, 0x0

    .line 564
    .local v5, "$i$a$-also-SeekableTransitionState$moveAnimationToInitialState$animation$1":I
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getFraction()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setValue(F)V

    .line 565
    iget-wide v6, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 566
    .local v6, "totalDurationNanos":J
    invoke-virtual {v4, v6, v7}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setDurationNanos(J)V

    .line 567
    nop

    .line 568
    long-to-double v8, v6

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getFraction()F

    move-result v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v10

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v8

    .line 567
    invoke-virtual {v4, v8, v9}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setAnimationSpecDuration(J)V

    .line 569
    invoke-virtual {v4}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getStart()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getFraction()F

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/compose/animation/core/AnimationVector1D;->set$animation_core(IF)V

    .line 570
    nop

    .line 563
    .end local v4    # "it":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    .end local v5    # "$i$a$-also-SeekableTransitionState$moveAnimationToInitialState$animation$1":I
    .end local v6    # "totalDurationNanos":J
    goto :goto_2

    .line 561
    :cond_3
    :goto_1
    move-object v1, v2

    .line 559
    :cond_4
    :goto_2
    nop

    .line 558
    nop

    .line 572
    .local v1, "animation":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    if-eqz v1, :cond_5

    .line 573
    iget-wide v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    invoke-virtual {v1, v3, v4}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setDurationNanos(J)V

    .line 574
    iget-object v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    .local v3, "this_$iv":Landroidx/collection/MutableObjectList;
    move-object v4, v1

    .local v4, "element$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 2205
    .local v5, "$i$f$plusAssign":I
    invoke-virtual {v3, v4}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 2206
    nop

    .line 575
    .end local v3    # "this_$iv":Landroidx/collection/MutableObjectList;
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$plusAssign":I
    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/Transition;->setInitialAnimations$animation_core(Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;)V

    .line 577
    :cond_5
    iput-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 578
    return-void
.end method

.method private final recalculateAnimationValue(Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;J)V
    .locals 11
    .param p1, "animation"    # Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    .param p2, "deltaPlayTimeNanos"    # J

    .line 395
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getProgressNanos()J

    move-result-wide v0

    add-long v3, v0, p2

    .line 396
    .local v3, "playTimeNanos":J
    invoke-virtual {p1, v3, v4}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setProgressNanos(J)V

    .line 397
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getAnimationSpecDuration()J

    move-result-wide v0

    .line 398
    .local v0, "durationNanos":J
    cmp-long v2, v3, v0

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    .line 399
    invoke-virtual {p1, v8}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setValue(F)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object v2

    .line 402
    .local v2, "animationSpec":Landroidx/compose/animation/core/VectorizedAnimationSpec;
    const/4 v9, 0x0

    if-eqz v2, :cond_2

    .line 403
    nop

    .line 404
    nop

    .line 406
    nop

    .line 407
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getStart()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/AnimationVector;

    .line 408
    sget-object v6, Landroidx/compose/animation/core/SeekableTransitionState;->Target1:Landroidx/compose/animation/core/AnimationVector1D;

    check-cast v6, Landroidx/compose/animation/core/AnimationVector;

    .line 409
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getInitialVelocity()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Landroidx/compose/animation/core/SeekableTransitionState;->ZeroVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    :cond_1
    check-cast v7, Landroidx/compose/animation/core/AnimationVector;

    .line 405
    invoke-interface/range {v2 .. v7}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/AnimationVector1D;

    .line 410
    nop

    .line 404
    invoke-virtual {v5, v9}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core(I)F

    move-result v5

    .line 411
    const/4 v6, 0x0

    invoke-static {v5, v6, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    .line 403
    invoke-virtual {p1, v5}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setValue(F)V

    goto :goto_0

    .line 413
    :cond_2
    nop

    .line 414
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getStart()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core(I)F

    move-result v5

    .local v5, "start$iv":F
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "stop$iv":F
    long-to-float v7, v3

    long-to-float v8, v0

    div-float/2addr v7, v8

    .local v7, "fraction$iv":F
    const/4 v8, 0x0

    .line 2178
    .local v8, "$i$f$lerp":I
    const/4 v9, 0x1

    int-to-float v9, v9

    sub-float/2addr v9, v7

    mul-float/2addr v9, v5

    mul-float v10, v6, v7

    add-float/2addr v9, v10

    .line 413
    .end local v5    # "start$iv":F
    .end local v6    # "stop$iv":F
    .end local v7    # "fraction$iv":F
    .end local v8    # "$i$f$lerp":I
    invoke-virtual {p1, v9}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setValue(F)V

    .line 417
    .end local v2    # "animationSpec":Landroidx/compose/animation/core/VectorizedAnimationSpec;
    :goto_0
    return-void
.end method

.method static final recalculateTotalDurationNanos$lambda$0(Landroidx/compose/animation/core/SeekableTransitionState;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 241
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 242
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final runAnimations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 342
    iget v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->label:I

    const-wide/high16 v4, -0x8000000000000000L

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v3, p0

    .local v3, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6

    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :pswitch_1
    move-object v3, p0

    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 343
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    iget-object v6, v3, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    invoke-virtual {v6}, Landroidx/collection/MutableObjectList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    if-nez v6, :cond_1

    .line 345
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 347
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_1
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    const/4 v7, 0x1

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 348
    invoke-direct {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    .line 349
    iput-wide v4, v3, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 350
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 352
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_3
    iget-wide v8, v3, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    cmp-long v6, v8, v4

    if-nez v6, :cond_5

    .line 354
    iget-object v6, v3, Landroidx/compose/animation/core/SeekableTransitionState;->firstFrameLambda:Lkotlin/jvm/functions/Function1;

    iput v7, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->label:I

    invoke-static {v6, v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_4

    .line 342
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :goto_2
    return-object v2

    .line 356
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_4
    :goto_3
    nop

    :cond_5
    :goto_4
    iget-object v6, v3, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    invoke-virtual {v6}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v3, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    if-eqz v6, :cond_6

    goto :goto_5

    .line 359
    :cond_6
    iput-wide v4, v3, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 360
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 357
    :cond_7
    :goto_5
    const/4 v6, 0x2

    iput v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$runAnimations$1;->label:I

    invoke-direct {v3, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_8

    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    goto :goto_2

    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_8
    :goto_6
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic seekTo$default(Landroidx/compose/animation/core/SeekableTransitionState;FLjava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 479
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 481
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object p2

    .line 479
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/SeekableTransitionState;->seekTo(FLjava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final seekToFraction()V
    .locals 5

    .line 725
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-nez v0, :cond_0

    return-void

    .line 726
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getFraction()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v1

    .line 727
    .local v1, "playTimeNanos":J
    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/core/Transition;->seekAnimations$animation_core(J)V

    .line 728
    return-void
.end method

.method private final setFraction(F)V
    .locals 5
    .param p1, "<set-?>"    # F

    .line 251
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/MutableFloatState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move v2, p1

    .local v2, "value$iv":F
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2176
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 2177
    nop

    .line 251
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":F
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final waitForComposition(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 542
    iget v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v2, p0

    .local v2, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    const/4 v3, 0x0

    .local v3, "$i$f$suspendCancellableCoroutine":I
    iget-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->L$0:Ljava/lang/Object;

    .local v4, "expectedState":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v1

    goto :goto_2

    .end local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .end local v3    # "$i$f$suspendCancellableCoroutine":I
    .end local v4    # "expectedState":Ljava/lang/Object;
    :pswitch_1
    move-object v3, p0

    .local v3, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    iget-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->L$0:Ljava/lang/Object;

    .local v6, "expectedState":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .end local v6    # "expectedState":Ljava/lang/Object;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 543
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    .line 544
    .restart local v6    # "expectedState":Ljava/lang/Object;
    iget-object v7, v3, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/Mutex;

    iput-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->label:I

    invoke-static {v7, v5, v0, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 542
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    return-object v2

    .line 545
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 2194
    .local v7, "$i$f$suspendCancellableCoroutine":I
    iput-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForComposition$1;->label:I

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .local v8, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v9, 0x0

    .line 2195
    .local v9, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v8}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2201
    .local v10, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 2202
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/CancellableContinuation;

    .local v11, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v12, 0x0

    .line 546
    .local v12, "$i$a$-suspendCancellableCoroutine-SeekableTransitionState$waitForComposition$state$1":I
    invoke-virtual {v3, v11}, Landroidx/compose/animation/core/SeekableTransitionState;->setCompositionContinuation$animation_core(Lkotlinx/coroutines/CancellableContinuation;)V

    .line 547
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->getCompositionContinuationMutex$animation_core()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v13

    invoke-static {v13, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 548
    nop

    .line 2202
    .end local v11    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v12    # "$i$a$-suspendCancellableCoroutine-SeekableTransitionState$waitForComposition$state$1":I
    nop

    .line 2203
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 2194
    .end local v8    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v10    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne v4, v2, :cond_3

    .line 542
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    return-object v2

    .line 2194
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_3
    move-object v2, v3

    move v3, v7

    .line 2204
    .end local v7    # "$i$f$suspendCancellableCoroutine":I
    .restart local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .local v3, "$i$f$suspendCancellableCoroutine":I
    :goto_2
    nop

    .line 545
    .end local v3    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 549
    .local v4, "state":Ljava/lang/Object;
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 550
    :cond_4
    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v2, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 551
    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v5, "targetState while waiting for composition"

    invoke-direct {v3, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final waitForCompositionAfterTargetStateChange(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 518
    iget v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v2, p0

    .local v2, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    const/4 v3, 0x0

    .local v3, "$i$f$suspendCancellableCoroutine":I
    iget-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->L$0:Ljava/lang/Object;

    .local v4, "expectedState":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v1

    goto :goto_2

    .end local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .end local v3    # "$i$f$suspendCancellableCoroutine":I
    .end local v4    # "expectedState":Ljava/lang/Object;
    :pswitch_1
    move-object v3, p0

    .local v3, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    iget-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->L$0:Ljava/lang/Object;

    .local v6, "expectedState":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .end local v6    # "expectedState":Ljava/lang/Object;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 519
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    .line 520
    .restart local v6    # "expectedState":Ljava/lang/Object;
    iget-object v7, v3, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/Mutex;

    iput-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->label:I

    invoke-static {v7, v5, v0, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 518
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    return-object v2

    .line 521
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_1
    :goto_1
    iget-object v7, v3, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 522
    .end local v6    # "expectedState":Ljava/lang/Object;
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 524
    .restart local v6    # "expectedState":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    .line 2183
    .local v7, "$i$f$suspendCancellableCoroutine":I
    iput-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Landroidx/compose/animation/core/SeekableTransitionState$waitForCompositionAfterTargetStateChange$1;->label:I

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .local v8, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v9, 0x0

    .line 2184
    .local v9, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v8}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2190
    .local v10, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 2191
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/CancellableContinuation;

    .local v11, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v12, 0x0

    .line 525
    .local v12, "$i$a$-suspendCancellableCoroutine-SeekableTransitionState$waitForCompositionAfterTargetStateChange$state$1":I
    invoke-virtual {v3, v11}, Landroidx/compose/animation/core/SeekableTransitionState;->setCompositionContinuation$animation_core(Lkotlinx/coroutines/CancellableContinuation;)V

    .line 526
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->getCompositionContinuationMutex$animation_core()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v13

    invoke-static {v13, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 527
    nop

    .line 2191
    .end local v11    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v12    # "$i$a$-suspendCancellableCoroutine-SeekableTransitionState$waitForCompositionAfterTargetStateChange$state$1":I
    nop

    .line 2192
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 2183
    .end local v8    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v10    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_3

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne v4, v2, :cond_4

    .line 518
    .end local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    return-object v2

    .line 2183
    .restart local v3    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :cond_4
    move-object v2, v3

    move v3, v7

    .line 2193
    .end local v7    # "$i$f$suspendCancellableCoroutine":I
    .restart local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .local v3, "$i$f$suspendCancellableCoroutine":I
    :goto_2
    nop

    .line 524
    .end local v3    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 528
    .local v4, "state":Ljava/lang/Object;
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    .end local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .end local v4    # "state":Ljava/lang/Object;
    .end local v6    # "expectedState":Ljava/lang/Object;
    :goto_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 529
    .restart local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .restart local v4    # "state":Ljava/lang/Object;
    .restart local v6    # "expectedState":Ljava/lang/Object;
    :cond_5
    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v2, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 530
    .end local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "snapTo() was canceled because state was changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    nop

    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    nop

    .line 531
    const-string v5, " instead of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    nop

    .line 531
    .end local v6    # "expectedState":Ljava/lang/Object;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final animateTo(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "targetState"    # Ljava/lang/Object;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    move-object v2, v0

    .line 599
    .local v2, "transition":Landroidx/compose/animation/core/Transition;
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "targetState":Ljava/lang/Object;
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v4, "targetState":Ljava/lang/Object;
    .local v5, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .end local v4    # "targetState":Ljava/lang/Object;
    .end local v5    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p1    # "targetState":Ljava/lang/Object;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    move-object v3, v0

    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    .local v6, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    return-object p3

    .line 677
    :cond_1
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p3
.end method

.method public final getComposedTargetState$animation_core()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCompositionContinuation$animation_core()Lkotlinx/coroutines/CancellableContinuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "TS;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuation:Lkotlinx/coroutines/CancellableContinuation;

    return-object v0
.end method

.method public final getCompositionContinuationMutex$animation_core()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2172
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    return-object v0
.end method

.method public final getFraction()F
    .locals 4

    .line 251
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2175
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    .line 251
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method public getTargetState()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2169
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 219
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    return-object v0
.end method

.method public final getTotalDurationNanos$animation_core()J
    .locals 2

    .line 238
    iget-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    return-wide v0
.end method

.method public final observeTotalDuration$animation_core()V
    .locals 3

    .line 693
    invoke-static {}, Landroidx/compose/animation/core/TransitionKt;->getSeekableStateObserver()Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v0

    .line 694
    nop

    .line 695
    invoke-static {}, Landroidx/compose/animation/core/TransitionKt;->access$getSeekableTransitionStateTotalDurationChanged$p()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 696
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Lkotlin/jvm/functions/Function0;

    .line 693
    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 698
    return-void
.end method

.method public final onTotalDurationChanged$animation_core()V
    .locals 7

    .line 701
    iget-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 702
    .local v0, "previousTotalDurationNanos":J
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->observeTotalDuration$animation_core()V

    .line 703
    iget-wide v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 705
    .local v2, "animation":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    if-eqz v2, :cond_1

    .line 706
    invoke-virtual {v2}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getProgressNanos()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 707
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    goto :goto_0

    .line 709
    :cond_0
    iget-wide v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setDurationNanos(J)V

    .line 710
    invoke-virtual {v2}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object v3

    if-nez v3, :cond_2

    .line 711
    nop

    .line 712
    invoke-virtual {v2}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->getStart()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core(I)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v3

    iget-wide v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    long-to-double v3, v3

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v3

    .line 711
    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->setAnimationSpecDuration(J)V

    goto :goto_0

    .line 715
    :cond_1
    iget-wide v3, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 719
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 722
    .end local v2    # "animation":Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;
    :cond_2
    :goto_0
    return-void
.end method

.method public final seekTo(FLjava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "fraction"    # F
    .param p2, "targetState"    # Ljava/lang/Object;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTS;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 483
    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    .local v1, "value$iv":Z
    :cond_0
    const/4 v0, 0x0

    .line 2179
    .local v0, "$i$f$requirePrecondition":I
    if-nez v1, :cond_1

    .line 2180
    const/4 v2, 0x0

    .line 484
    .local v2, "$i$a$-requirePrecondition-SeekableTransitionState$seekTo$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting fraction between 0 and 1. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2180
    .end local v2    # "$i$a$-requirePrecondition-SeekableTransitionState$seekTo$2":I
    invoke-static {v2}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 2182
    :cond_1
    nop

    .line 486
    .end local v0    # "$i$f$requirePrecondition":I
    .end local v1    # "value$iv":Z
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-nez v0, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_2
    move-object v5, v0

    .line 487
    .local v5, "transition":Landroidx/compose/animation/core/Transition;
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    .line 488
    .local v3, "oldTargetState":Ljava/lang/Object;
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState$seekTo$3;

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p1

    move-object v2, p2

    .end local p1    # "fraction":F
    .end local p2    # "targetState":Ljava/lang/Object;
    .local v2, "targetState":Ljava/lang/Object;
    .local v6, "fraction":F
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/core/SeekableTransitionState$seekTo$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;FLkotlin/coroutines/Continuation;)V

    .end local v6    # "fraction":F
    .restart local p1    # "fraction":F
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v9, p3

    move-object v6, v0

    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    .local v9, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    if-ne p2, p3, :cond_3

    return-object p2

    .line 515
    :cond_3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method public final setComposedTargetState$animation_core(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;

    return-void
.end method

.method public final setCompositionContinuation$animation_core(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TS;>;)V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method

.method public setCurrentState$animation_core(Ljava/lang/Object;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2173
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2174
    nop

    .line 222
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public setTargetState$animation_core(Ljava/lang/Object;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2170
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2171
    nop

    .line 219
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setTotalDurationNanos$animation_core(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 238
    iput-wide p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    return-void
.end method

.method public final snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "targetState"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 434
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    :cond_0
    nop

    .line 435
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 439
    :cond_1
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p2

    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v5, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_2

    return-object p2

    .line 462
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method public transitionConfigured$animation_core(Landroidx/compose/animation/core/Transition;)V
    .locals 5
    .param p1, "transition"    # Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;)V"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .local v0, "value$iv":Z
    :goto_1
    const/4 v1, 0x0

    .line 2207
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_2

    .line 2208
    const/4 v2, 0x0

    .line 681
    .local v2, "$i$a$-checkPrecondition-SeekableTransitionState$transitionConfigured$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An instance of SeekableTransitionState has been used in different Transitions. Previous instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    iget-object v4, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    nop

    .line 681
    const-string v4, ", new instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    nop

    .line 681
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 682
    nop

    .line 2208
    .end local v2    # "$i$a$-checkPrecondition-SeekableTransitionState$transitionConfigured$1":I
    invoke-static {v3}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2210
    :cond_2
    nop

    .line 684
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 685
    return-void
.end method

.method public transitionRemoved$animation_core()V
    .locals 1

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 689
    invoke-static {}, Landroidx/compose/animation/core/TransitionKt;->getSeekableStateObserver()Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear(Ljava/lang/Object;)V

    .line 690
    return-void
.end method
