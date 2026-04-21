.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
.super Ljava/lang/Object;
.source "MouseWheelScrollable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMouseWheelScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MouseWheelScrollable.kt\nandroidx/compose/foundation/gestures/MouseWheelScrollingLogic\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,410:1\n101#1:411\n101#1:419\n103#2:412\n35#2,5:413\n104#2:418\n103#2:420\n35#2,5:421\n104#2:426\n103#2:427\n35#2,5:428\n104#2:433\n35#2,5:434\n1#3:439\n*S KotlinDebug\n*F\n+ 1 MouseWheelScrollable.kt\nandroidx/compose/foundation/gestures/MouseWheelScrollingLogic\n*L\n67#1:411\n90#1:419\n67#1:412\n67#1:413,5\n67#1:418\n90#1:420\n90#1:421,5\n90#1:426\n101#1:427\n101#1:428,5\n101#1:433\n103#1:434,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0001SBR\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00121\u0010\u0006\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ%\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000c\u0010 \u001a\u00020\r*\u00020\u0016H\u0002J\u000e\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020)J;\u0010*\u001a\u00020\r*\u00020\u00032\'\u0010+\u001a#\u0008\u0001\u0012\u0004\u0012\u00020,\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u00a2\u0006\u0002\u0008-H\u0082@\u00a2\u0006\u0002\u0010.J\u001f\u0010/\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u00080\u00101J\u0014\u00102\u001a\u0004\u0018\u00010#*\u0008\u0012\u0004\u0012\u00020#0\"H\u0002J\u0018\u00103\u001a\u00020#*\u0008\u0012\u0004\u0012\u00020#0\"H\u0082@\u00a2\u0006\u0002\u00104J$\u00105\u001a\u0008\u0012\u0004\u0012\u0002H706\"\u0004\u0008\u0000\u001072\u000e\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H709H\u0002J\u001b\u0010:\u001a\u00020\u001e*\u00020\u00032\u0006\u0010;\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0010\u0010A\u001a\u00020\r2\u0006\u0010;\u001a\u00020#H\u0002J*\u0010B\u001a\u00020\r*\u00020\u00032\u0006\u0010;\u001a\u00020#2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020DH\u0082@\u00a2\u0006\u0002\u0010FJY\u0010G\u001a\u00020\r*\u00020,2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020J0I2\u0006\u0010K\u001a\u00020D2\u0006\u0010L\u001a\u00020M2!\u0010N\u001a\u001d\u0012\u0013\u0012\u00110D\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(P\u0012\u0004\u0012\u00020\u001e0OH\u0082@\u00a2\u0006\u0002\u0010QJ\u0014\u0010B\u001a\u00020D*\u00020,2\u0006\u0010R\u001a\u00020DH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R;\u0010\u0006\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001d\u001a\u00020\u001e*\u00020\u00168\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001fR\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;",
        "",
        "scrollingLogic",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "mouseWheelScrollConfig",
        "Landroidx/compose/foundation/gestures/ScrollConfig;",
        "onScrollStopped",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Velocity;",
        "Lkotlin/ParameterName;",
        "name",
        "velocity",
        "Lkotlin/coroutines/Continuation;",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "<init>",
        "(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V",
        "Lkotlin/jvm/functions/Function2;",
        "updateDensity",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "isConsumed",
        "",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;)Z",
        "consume",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
        "isScrolling",
        "receivingMouseWheelEventsJob",
        "Lkotlinx/coroutines/Job;",
        "startReceivingMouseWheelEvents",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "userScroll",
        "block",
        "Landroidx/compose/foundation/gestures/NestedScrollScope;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onMouseWheel",
        "onMouseWheel-O0kMr_c",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z",
        "sumOrNull",
        "busyReceive",
        "(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "untilNull",
        "Lkotlin/sequences/Sequence;",
        "E",
        "builderAction",
        "Lkotlin/Function0;",
        "canConsumeDelta",
        "scrollDelta",
        "Landroidx/compose/ui/geometry/Offset;",
        "canConsumeDelta-Uv8p0NA",
        "(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z",
        "velocityTracker",
        "Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;",
        "trackVelocity",
        "dispatchMouseWheelScroll",
        "threshold",
        "",
        "speed",
        "(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateMouseWheelScroll",
        "animationState",
        "Landroidx/compose/animation/core/AnimationState;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "targetValue",
        "durationMillis",
        "",
        "shouldCancelAnimation",
        "Lkotlin/Function1;",
        "lastValue",
        "(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/animation/core/AnimationState;FILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "delta",
        "MouseWheelScrollDelta",
        "foundation"
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
.field private final channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
            ">;"
        }
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;

.field private isScrolling:Z

.field private final mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

.field private final onScrollStopped:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Velocity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private receivingMouseWheelEventsJob:Lkotlinx/coroutines/Job;

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field private final velocityTracker:Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V
    .locals 3
    .param p1, "scrollingLogic"    # Landroidx/compose/foundation/gestures/ScrollingLogic;
    .param p2, "mouseWheelScrollConfig"    # Landroidx/compose/foundation/gestures/ScrollConfig;
    .param p3, "onScrollStopped"    # Lkotlin/jvm/functions/Function2;
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 55
    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 56
    iput-object p3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onScrollStopped:Lkotlin/jvm/functions/Function2;

    .line 57
    iput-object p4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x6

    const v2, 0x7fffffff

    invoke-static {v2, v0, v0, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 232
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->velocityTracker:Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;

    .line 53
    return-void
.end method

.method public static final synthetic access$animateMouseWheelScroll(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/animation/core/AnimationState;FILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/NestedScrollScope;
    .param p2, "animationState"    # Landroidx/compose/animation/core/AnimationState;
    .param p3, "targetValue"    # F
    .param p4, "durationMillis"    # I
    .param p5, "shouldCancelAnimation"    # Lkotlin/jvm/functions/Function1;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->animateMouseWheelScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/animation/core/AnimationState;FILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$busyReceive(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "$receiver"    # Lkotlinx/coroutines/channels/Channel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->busyReceive(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;F)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/NestedScrollScope;
    .param p2, "delta"    # F

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollingLogic;
    .param p2, "scrollDelta"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .param p3, "threshold"    # F
    .param p4, "speed"    # F
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "targetScrollDelta"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p2, "targetValue"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p3, "$this_dispatchMouseWheelScroll"    # Landroidx/compose/foundation/gestures/ScrollingLogic;
    .param p4, "animationState"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p5, "timeoutMillis"    # J
    .param p7, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;)Lkotlinx/coroutines/channels/Channel;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object v0
.end method

.method public static final synthetic access$getDensity$p(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;)Landroidx/compose/ui/unit/Density;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public static final synthetic access$getScrollingLogic$p(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;)Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object v0
.end method

.method public static final synthetic access$setReceivingMouseWheelEventsJob$p(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/Job;

    .line 53
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$sumOrNull(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlinx/coroutines/channels/Channel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "$receiver"    # Lkotlinx/coroutines/channels/Channel;

    .line 53
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->sumOrNull(Lkotlinx/coroutines/channels/Channel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "scrollDelta"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 53
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    return-void
.end method

.method public static final synthetic access$userScroll(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollingLogic;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->userScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final animateMouseWheelScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/animation/core/AnimationState;FILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$this$animateMouseWheelScroll"    # Landroidx/compose/foundation/gestures/NestedScrollScope;
    .param p2, "animationState"    # Landroidx/compose/animation/core/AnimationState;
    .param p3, "targetValue"    # F
    .param p4, "durationMillis"    # I
    .param p5, "shouldCancelAnimation"    # Lkotlin/jvm/functions/Function1;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/NestedScrollScope;",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;FI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 355
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .local v0, "lastValue":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 356
    nop

    .line 357
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    .line 358
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p4, v5, v1, v2, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    .line 359
    nop

    .line 356
    new-instance v6, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, p0, p1, p5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;Lkotlin/jvm/functions/Function1;)V

    const/4 v5, 0x1

    move-object v2, p2

    move-object v7, p6

    .end local p2    # "animationState":Landroidx/compose/animation/core/AnimationState;
    .end local p6    # "$completion":Lkotlin/coroutines/Continuation;
    .local v2, "animationState":Landroidx/compose/animation/core/AnimationState;
    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p6

    if-ne p2, p6, :cond_0

    return-object p2

    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 374
    return-object p2
.end method

.method static final animateMouseWheelScroll$lambda$0(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;
    .locals 3
    .param p0, "$lastValue"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .param p2, "$this_animateMouseWheelScroll"    # Landroidx/compose/foundation/gestures/NestedScrollScope;
    .param p3, "$shouldCancelAnimation"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$this$animateTo"    # Landroidx/compose/animation/core/AnimationScope;

    .line 361
    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, v1

    .line 362
    .local v0, "delta":F
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    invoke-direct {p1, p2, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    move-result v1

    .line 364
    .local v1, "consumedDelta":F
    sub-float v2, v0, v1

    invoke-static {v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 366
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 368
    :cond_0
    iget v2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr v2, v0

    iput v2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 370
    .end local v1    # "consumedDelta":F
    :cond_1
    iget v1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 373
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final busyReceive(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$busyReceive"    # Lkotlinx/coroutines/channels/Channel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 191
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$busyReceive$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$busyReceive$2;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method private final canConsumeDelta-Uv8p0NA(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z
    .locals 4
    .param p1, "$this$canConsumeDelta_u2dUv8p0NA"    # Landroidx/compose/foundation/gestures/ScrollingLogic;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-scrollDelta$0"    # J

    .line 214
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isMouseWheel1DAxisLockingEnabled:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    move-result v0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v0

    .line 214
    :goto_0
    nop

    .line 213
    nop

    .line 223
    .local v0, "delta":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 224
    goto :goto_2

    .line 225
    :cond_2
    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 226
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getScrollableState()Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result v3

    goto :goto_2

    .line 228
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getScrollableState()Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result v3

    .line 223
    :goto_2
    return v3
.end method

.method private final consume(Landroidx/compose/ui/input/pointer/PointerEvent;)V
    .locals 7
    .param p1, "$this$consume"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 434
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 435
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 436
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v5, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v6, 0x0

    .line 103
    .local v6, "$i$a$-fastForEach-MouseWheelScrollingLogic$consume$1":I
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 436
    .end local v5    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v6    # "$i$a$-fastForEach-MouseWheelScrollingLogic$consume$1":I
    nop

    .line 434
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 103
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method

.method private final dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F
    .locals 8
    .param p1, "$this$dispatchMouseWheelScroll"    # Landroidx/compose/foundation/gestures/NestedScrollScope;
    .param p2, "delta"    # F

    .line 377
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .local v0, "$this$dispatchMouseWheelScroll_u24lambda_u242":Landroidx/compose/foundation/gestures/ScrollingLogic;
    const/4 v1, 0x0

    .line 378
    .local v1, "$i$a$-with-MouseWheelScrollingLogic$dispatchMouseWheelScroll$4":I
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v2

    .line 379
    .local v2, "offset":J
    sget-object v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Landroidx/compose/foundation/gestures/NestedScrollScope;->scrollBy-OzD1aCk(JI)J

    move-result-wide v4

    .line 380
    .local v4, "consumed":J
    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v0

    .line 377
    .end local v0    # "$this$dispatchMouseWheelScroll_u24lambda_u242":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local v1    # "$i$a$-with-MouseWheelScrollingLogic$dispatchMouseWheelScroll$4":I
    .end local v2    # "offset":J
    .end local v4    # "consumed":J
    nop

    .line 381
    return v0
.end method

.method private final dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
            "FF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 239
    iget v5, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v5, p0

    .local v5, "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    iget v6, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->F$0:F

    .local v6, "speed":F
    iget-object v7, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .local v7, "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .local v8, "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v5    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .end local v6    # "speed":F
    .end local v7    # "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v8    # "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v14, p0

    .local v14, "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    move-object/from16 v5, p2

    .local v5, "scrollDelta":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    move/from16 v15, p4

    .local v15, "speed":F
    move-object/from16 v6, p1

    .local v6, "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    move/from16 v13, p3

    .line 244
    .local v13, "threshold":F
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v12, "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    iput-object v5, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    invoke-direct {v14, v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    .line 247
    .end local v5    # "scrollDelta":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    iget-object v5, v14, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {v14, v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->sumOrNull(Lkotlinx/coroutines/channels/Channel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v5

    if-eqz v5, :cond_1

    .local v5, "it":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    const/4 v7, 0x0

    .line 248
    .local v7, "$i$a$-let-MouseWheelScrollingLogic$dispatchMouseWheelScroll$2":I
    invoke-direct {v14, v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    .line 249
    iget-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v8, v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v8

    iput-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 250
    nop

    .line 247
    .end local v5    # "it":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .end local v7    # "$i$a$-let-MouseWheelScrollingLogic$dispatchMouseWheelScroll$2":I
    nop

    .line 251
    :cond_1
    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .local v10, "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object v5, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->getValue-F1C5BW0()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v5

    iput v5, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 252
    iget v5, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    .end local v12    # "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "threshold":F
    .end local v14    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 255
    .restart local v12    # "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "threshold":F
    .restart local v14    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    :cond_2
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v11, "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/16 v23, 0x1e

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v24}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v5

    iput-object v5, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 288
    new-instance v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    const/16 v17, 0x0

    move-object/from16 v16, v6

    .end local v6    # "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .local v16, "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    invoke-direct/range {v9 .. v17}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/foundation/gestures/MouseWheelScrollingLogic;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v8, v16

    .end local v16    # "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .restart local v8    # "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$1:Ljava/lang/Object;

    iput v15, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->F$0:F

    const/4 v5, 0x1

    iput v5, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    invoke-direct {v14, v8, v9, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->userScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v11    # "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "threshold":F
    if-ne v5, v4, :cond_3

    .line 239
    .end local v14    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    return-object v4

    .line 288
    .restart local v14    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    :cond_3
    move-object v7, v10

    move-object v5, v14

    move v6, v15

    .line 340
    .end local v10    # "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v14    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .end local v15    # "speed":F
    .local v5, "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .local v6, "speed":F
    .local v7, "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    :goto_1
    iget-object v9, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->velocityTracker:Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;

    invoke-virtual {v9}, Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;->calculateVelocity-9UxMQ8M()J

    move-result-wide v9

    .line 341
    .local v9, "velocity":J
    sget-object v11, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/Velocity;->equals-impl0(JJ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 343
    .end local v9    # "velocity":J
    iget v9, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/16 v10, 0x64

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 344
    .local v6, "velocityPxInMs":F
    nop

    .end local v8    # "$this$dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    iget v9, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v7

    .end local v7    # "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-virtual {v8, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result v7

    mul-float/2addr v7, v6

    const/16 v9, 0x3e8

    int-to-float v9, v9

    mul-float/2addr v7, v9

    invoke-virtual {v8, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toVelocity-adjELrA(F)J

    move-result-wide v9

    .line 346
    .end local v6    # "velocityPxInMs":F
    .restart local v9    # "velocity":J
    :cond_4
    iget-object v6, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onScrollStopped:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v7

    const/4 v8, 0x0

    iput-object v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    invoke-interface {v6, v7, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .end local v9    # "velocity":J
    if-ne v5, v4, :cond_5

    .line 239
    return-object v4

    .line 347
    :cond_5
    :goto_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .param p7, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p7

    instance-of v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 264
    iget v4, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v3, "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v4, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$3:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .local v4, "$this_dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    iget-object v7, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .local v7, "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v8, "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v9, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .local v9, "this$0":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v2

    goto :goto_1

    .end local v3    # "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$this_dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local v7    # "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v8    # "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "this$0":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p0

    .restart local v9    # "this$0":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    move-object/from16 v7, p2

    .restart local v7    # "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object/from16 v4, p4

    .local v4, "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v8, p1

    .restart local v8    # "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v10, p3

    .local v10, "$this_dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    move-wide/from16 v11, p5

    .line 265
    .local v11, "timeoutMillis":J
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-gez v13, :cond_1

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 266
    :cond_1
    new-instance v13, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iput-object v9, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$3:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$4:Ljava/lang/Object;

    iput v5, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    invoke-static {v11, v12, v13, v1}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "timeoutMillis":J
    if-ne v11, v3, :cond_2

    .line 264
    return-object v3

    .line 266
    :cond_2
    move-object v3, v4

    move-object v4, v10

    .line 264
    .end local v10    # "$this_dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .restart local v3    # "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "$this_dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    :goto_1
    check-cast v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 267
    if-eqz v11, :cond_6

    .line 266
    nop

    .line 267
    move-object v12, v11

    .local v12, "it":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    const/4 v10, 0x0

    .line 272
    .local v10, "$i$a$-let-MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$3":I
    iget-object v11, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v11}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->getShouldApplyImmediately()Z

    move-result v11

    .line 271
    nop

    .line 273
    .local v11, "previousDeltaShouldApplyImmediately":Z
    nop

    .line 274
    if-eqz v11, :cond_3

    move/from16 v17, v5

    goto :goto_2

    :cond_3
    move/from16 v17, v6

    .end local v11    # "previousDeltaShouldApplyImmediately":Z
    :goto_2
    const/16 v18, 0x3

    const/16 v19, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->copy-9KIMszo$default(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;JJZILjava/lang/Object;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v11

    .line 273
    iput-object v11, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 275
    nop

    .line 276
    sget-boolean v11, Landroidx/compose/foundation/ComposeFoundationFlags;->isMouseWheel1DAxisLockingEnabled:Z

    if-eqz v11, :cond_4

    .line 277
    iget-object v11, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v11}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->getValue-F1C5BW0()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    move-result v11

    goto :goto_3

    .line 279
    :cond_4
    iget-object v11, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v11}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->getValue-F1C5BW0()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v11

    .line 275
    .end local v4    # "$this_dispatchMouseWheelScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local v8    # "targetScrollDelta":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_3
    iput v11, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 281
    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v4

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 282
    .end local v3    # "animationState":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-direct {v9, v12}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    .line 284
    .end local v9    # "this$0":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .end local v12    # "it":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    iget v3, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move v5, v6

    .line 267
    .end local v7    # "targetValue":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v10    # "$i$a$-let-MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$3":I
    :goto_4
    nop

    .line 266
    move v6, v5

    goto :goto_5

    .line 285
    :cond_6
    nop

    :goto_5
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 266
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final isConsumed(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 12
    .param p1, "$this$isConsumed"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    const/4 v0, 0x0

    .line 101
    .local v0, "$i$f$isConsumed":I
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 427
    .local v2, "$i$f$fastAny":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 428
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 429
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 430
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 427
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v10, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v11, 0x0

    .line 101
    .local v11, "$i$a$-fastAny-MouseWheelScrollingLogic$isConsumed$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v10

    .line 427
    .end local v10    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v11    # "$i$a$-fastAny-MouseWheelScrollingLogic$isConsumed$1":I
    if-eqz v10, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 430
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_0
    nop

    .line 428
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 432
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .line 433
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v6, 0x0

    .line 101
    .end local v1    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_1
    return v6
.end method

.method private final onMouseWheel-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z
    .locals 11
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "$v$c$androidx-compose-ui-unit-IntSize$-bounds$0"    # J

    .line 156
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .local v0, "$this$onMouseWheel_O0kMr_c_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollConfig;
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$a$-with-MouseWheelScrollingLogic$onMouseWheel$scrollDelta$1":I
    iget-object v2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 439
    .local v2, "$this$onMouseWheel_O0kMr_c_u24lambda_u240_u240":Landroidx/compose/ui/unit/Density;
    const/4 v3, 0x0

    .line 157
    .local v3, "$i$a$-with-MouseWheelScrollingLogic$onMouseWheel$scrollDelta$1$1":I
    invoke-interface {v0, v2, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollConfig;->calculateMouseWheelScroll-8xgXZGE(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J

    move-result-wide v2

    .line 156
    .end local v0    # "$this$onMouseWheel_O0kMr_c_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollConfig;
    .end local v1    # "$i$a$-with-MouseWheelScrollingLogic$onMouseWheel$scrollDelta$1":I
    .end local v2    # "$this$onMouseWheel_O0kMr_c_u24lambda_u240_u240":Landroidx/compose/ui/unit/Density;
    .end local v3    # "$i$a$-with-MouseWheelScrollingLogic$onMouseWheel$scrollDelta$1$1":I
    nop

    .line 155
    move-wide v5, v2

    .line 159
    .local v5, "scrollDelta":J
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {p0, v0, v5, v6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->canConsumeDelta-Uv8p0NA(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 162
    new-instance v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 163
    nop

    .line 164
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v7

    .line 165
    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollConfig;->isSmoothScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    invoke-interface {v1, p1}, Landroidx/compose/foundation/gestures/ScrollConfig;->isPreciseWheelScroll(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v9, v1

    .line 162
    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;-><init>(JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    invoke-interface {v0, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 175
    :cond_2
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->isScrolling:Z

    .line 159
    :goto_2
    return v0
.end method

.method private final sumOrNull(Lkotlinx/coroutines/channels/Channel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .locals 4
    .param p1, "$this$sumOrNull"    # Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;",
            ">;)",
            "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;"
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "sum":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    new-instance v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/Channel;)V

    invoke-direct {p0, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->untilNull(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 181
    .local v2, "i":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v3

    :goto_1
    move-object v0, v3

    .end local v2    # "i":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    goto :goto_0

    .line 183
    :cond_1
    return-object v0
.end method

.method static final sumOrNull$lambda$0(Lkotlinx/coroutines/channels/Channel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .locals 1
    .param p0, "$this_sumOrNull"    # Lkotlinx/coroutines/channels/Channel;

    .line 180
    invoke-interface {p0}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    return-object v0
.end method

.method private final trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V
    .locals 5
    .param p1, "scrollDelta"    # Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 235
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->velocityTracker:Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->getTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->getValue-F1C5BW0()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;->addDelta-Uv8p0NA(JJ)V

    .line 236
    return-void
.end method

.method private final untilNull(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .locals 2
    .param p1, "builderAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TE;>;)",
            "Lkotlin/sequences/Sequence<",
            "TE;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method private final userScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/NestedScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 147
    iget v3, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 148
    .local v3, "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .local p1, "$this$userScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .local p2, "block":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->isScrolling:Z

    .line 150
    new-instance v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$2;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p2, v6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput v4, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/SupervisorKt;->supervisorScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "$this$userScroll":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    if-ne p1, v2, :cond_1

    .line 147
    .end local v3    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    return-object v2

    .line 150
    .restart local v3    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    :cond_1
    move-object p1, v3

    .line 151
    .end local v3    # "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .local p1, "this":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    :goto_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->isScrolling:Z

    .line 152
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 21
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-bounds$0"    # J

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    sget-boolean v5, Landroidx/compose/foundation/ComposeFoundationFlags;->isMouseWheel1DAxisLockingEnabled:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v5

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getScroll-7fucELk()I

    move-result v8

    invoke-static {v5, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 67
    :cond_0
    move-object/from16 v5, p1

    .local v5, "$this$isConsumed$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    const/4 v9, 0x0

    .line 411
    .local v9, "$i$f$isConsumed":I
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v10

    .local v10, "$this$fastAny$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 412
    .local v11, "$i$f$fastAny":I
    move-object v12, v10

    .local v12, "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 413
    .local v13, "$i$f$fastForEach":I
    const/4 v14, 0x0

    .local v14, "index$iv$iv$iv":I
    move-object v15, v12

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    :goto_0
    if-ge v14, v15, :cond_2

    .line 414
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 415
    .local v16, "item$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 412
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v19, "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v20, 0x0

    .line 411
    .local v20, "$i$a$-fastAny-MouseWheelScrollingLogic$isConsumed$1$iv":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v19

    .line 412
    .end local v19    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v20    # "$i$a$-fastAny-MouseWheelScrollingLogic$isConsumed$1$iv":I
    if-eqz v19, :cond_1

    move v6, v7

    goto :goto_1

    .line 415
    .end local v17    # "it$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv$iv":I
    :cond_1
    nop

    .line 413
    .end local v16    # "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 417
    .end local v14    # "index$iv$iv$iv":I
    :cond_2
    nop

    .line 418
    .end local v12    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    nop

    .line 411
    .end local v10    # "$this$fastAny$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastAny":I
    :goto_1
    nop

    .line 67
    .end local v5    # "$this$isConsumed$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v8    # "this_$iv":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .end local v9    # "$i$f$isConsumed":I
    if-eqz v6, :cond_3

    return-void

    .line 72
    :cond_3
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v5, :cond_4

    iget-boolean v5, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->isScrolling:Z

    if-eqz v5, :cond_4

    .line 73
    invoke-direct {v0, v1, v3, v4}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onMouseWheel-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 74
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->consume(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 82
    :cond_4
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v5, :cond_8

    iget-boolean v5, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->isScrolling:Z

    if-nez v5, :cond_8

    .line 83
    invoke-direct {v0, v1, v3, v4}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onMouseWheel-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v5

    .line 84
    .local v5, "consumed":Z
    if-eqz v5, :cond_8

    .line 85
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->consume(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .end local v5    # "consumed":Z
    goto :goto_4

    .line 89
    :cond_5
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v5, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v5

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getScroll-7fucELk()I

    move-result v8

    invoke-static {v5, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 90
    move-object/from16 v5, p1

    .local v5, "$this$isConsumed$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    move-object/from16 v8, p0

    .restart local v8    # "this_$iv":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    const/4 v9, 0x0

    .line 419
    .restart local v9    # "$i$f$isConsumed":I
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v10

    .restart local v10    # "$this$fastAny$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 420
    .restart local v11    # "$i$f$fastAny":I
    move-object v12, v10

    .restart local v12    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 421
    .restart local v13    # "$i$f$fastForEach":I
    const/4 v14, 0x0

    .restart local v14    # "index$iv$iv$iv":I
    move-object v15, v12

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    :goto_2
    if-ge v14, v15, :cond_7

    .line 422
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 423
    .restart local v16    # "item$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .restart local v17    # "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 420
    .restart local v18    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .restart local v19    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v20, 0x0

    .line 419
    .restart local v20    # "$i$a$-fastAny-MouseWheelScrollingLogic$isConsumed$1$iv":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v19

    .line 420
    .end local v19    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v20    # "$i$a$-fastAny-MouseWheelScrollingLogic$isConsumed$1$iv":I
    if-eqz v19, :cond_6

    move v6, v7

    goto :goto_3

    .line 423
    .end local v17    # "it$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv$iv":I
    :cond_6
    nop

    .line 421
    .end local v16    # "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 425
    .end local v14    # "index$iv$iv$iv":I
    :cond_7
    nop

    .line 426
    .end local v12    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    nop

    .line 419
    .end local v10    # "$this$fastAny$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastAny":I
    :goto_3
    nop

    .line 90
    .end local v5    # "$this$isConsumed$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v8    # "this_$iv":Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
    .end local v9    # "$i$f$isConsumed":I
    if-nez v6, :cond_8

    .line 91
    invoke-direct {v0, v1, v3, v4}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onMouseWheel-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v5

    .line 92
    .local v5, "consumed":Z
    if-eqz v5, :cond_8

    .line 93
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->consume(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 98
    .end local v5    # "consumed":Z
    :cond_8
    :goto_4
    return-void
.end method

.method public final startReceivingMouseWheelEvents(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 8
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 130
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_0

    .line 131
    nop

    .line 132
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingMouseWheelEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingMouseWheelEvents$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 131
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 130
    .end local v2    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local p1    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :cond_0
    move-object v2, p1

    .line 145
    .end local p1    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v2    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_0
    return-void
.end method

.method public final updateDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;

    .line 60
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 61
    return-void
.end method
