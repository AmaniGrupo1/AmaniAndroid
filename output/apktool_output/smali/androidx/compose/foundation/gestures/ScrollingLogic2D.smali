.class final Landroidx/compose/foundation/gestures/ScrollingLogic2D;
.super Ljava/lang/Object;
.source "Scrollable2D.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollLogic;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable2D.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable2D.kt\nandroidx/compose/foundation/gestures/ScrollingLogic2D\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 6 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,523:1\n30#2:524\n30#2:534\n30#2:538\n53#3,3:525\n60#3:530\n70#3:533\n53#3,3:535\n53#3,3:539\n1#4:528\n65#5:529\n69#5:532\n22#6:531\n*S KotlinDebug\n*F\n+ 1 Scrollable2D.kt\nandroidx/compose/foundation/gestures/ScrollingLogic2D\n*L\n360#1:524\n410#1:534\n412#1:538\n360#1:525,3\n402#1:530\n402#1:533\n410#1:535,3\n412#1:539,3\n402#1:529\n402#1:532\n402#1:531\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u001c\u0008\u0002\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010!\u001a\u00020 *\u00020\u001a2\u0006\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020 \u00a2\u0006\u0004\u0008(\u0010)J\u0015\u0010&\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020+\u00a2\u0006\u0004\u0008,\u0010)J\u0017\u0010-\u001a\u00020 2\u0006\u0010.\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00101\u001a\u00020 2\u0006\u0010.\u001a\u00020 H\u0002\u00a2\u0006\u0004\u00082\u00100J\u0018\u00103\u001a\u0002042\u0006\u00105\u001a\u00020+H\u0086@\u00a2\u0006\u0004\u00086\u00107J\u0018\u00108\u001a\u00020+2\u0006\u00109\u001a\u00020+H\u0096@\u00a2\u0006\u0004\u0008:\u00107J\u0006\u0010;\u001a\u00020\u000cJA\u0010.\u001a\u0002042\u0008\u0008\u0002\u0010<\u001a\u00020=2\'\u0010>\u001a#\u0008\u0001\u0012\u0004\u0012\u00020@\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040A\u0012\u0006\u0012\u0004\u0018\u00010B0?\u00a2\u0006\u0002\u0008CH\u0086@\u00a2\u0006\u0002\u0010DJ(\u0010E\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000c@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ScrollingLogic2D;",
        "Landroidx/compose/foundation/gestures/ScrollLogic;",
        "scrollableState",
        "Landroidx/compose/foundation/gestures/Scrollable2DState;",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "nestedScrollDispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "isScrollableNodeAttached",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Lkotlin/jvm/functions/Function0;)V",
        "getScrollableState",
        "()Landroidx/compose/foundation/gestures/Scrollable2DState;",
        "setScrollableState",
        "(Landroidx/compose/foundation/gestures/Scrollable2DState;)V",
        "value",
        "isFlinging",
        "()Z",
        "latestScrollSource",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "I",
        "outerStateScope",
        "Landroidx/compose/foundation/gestures/Scroll2DScope;",
        "nestedScrollScope",
        "androidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1",
        "Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;",
        "performScrollForOverscroll",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/geometry/Offset;",
        "performScroll",
        "delta",
        "source",
        "performScroll-3eAAhYA",
        "(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J",
        "shouldDispatchOverscroll",
        "offset",
        "shouldDispatchOverscroll-k-4lQ0M",
        "(J)Z",
        "velocity",
        "Landroidx/compose/ui/unit/Velocity;",
        "shouldDispatchOverscroll-TH1AsA0",
        "performRawScroll",
        "scroll",
        "performRawScroll-MK-Hz9U",
        "(J)J",
        "dispatchRawDelta",
        "dispatchRawDelta-MK-Hz9U",
        "onScrollStopped",
        "",
        "initialVelocity",
        "onScrollStopped-sF-c-tU",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doFlingAnimation",
        "available",
        "doFlingAnimation-QWom1Mo",
        "shouldScrollImmediately",
        "scrollPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/NestedScrollScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "update",
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


# instance fields
.field private flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field private isFlinging:Z

.field private final isScrollableNodeAttached:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private latestScrollSource:I

.field private nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private final nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

.field private outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

.field private overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field private final performScrollForOverscroll:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "scrollableState"    # Landroidx/compose/foundation/gestures/Scrollable2DState;
    .param p2, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p3, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p4, "nestedScrollDispatcher"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .param p5, "isScrollableNodeAttached"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Scrollable2DState;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    .line 304
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 305
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 306
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 307
    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isScrollableNodeAttached:Lkotlin/jvm/functions/Function0;

    .line 313
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    .line 314
    invoke-static {}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getNoOpScrollScope$p()Landroidx/compose/foundation/gestures/Scroll2DScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    .line 317
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    .line 336
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScrollForOverscroll:Lkotlin/jvm/functions/Function1;

    .line 302
    return-void
.end method

.method public static final synthetic access$doFlingAnimation_QWom1Mo$toDecomposedOffset(FJ)J
    .locals 2
    .param p0, "$receiver"    # F
    .param p1, "$$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J

    .line 302
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation_QWom1Mo$toDecomposedOffset(FJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J
    .locals 2
    .param p0, "$receiver"    # F
    .param p1, "$$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J

    .line 302
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$doFlingAnimation_QWom1Mo$toMagnitudeFloat(J)F
    .locals 1
    .param p0, "$receiver"    # J

    .line 302
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation_QWom1Mo$toMagnitudeFloat(J)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getFlingBehavior$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/FlingBehavior;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    return-object v0
.end method

.method public static final synthetic access$getLatestScrollSource$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    return v0
.end method

.method public static final synthetic access$getNestedScrollDispatcher$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object v0
.end method

.method public static final synthetic access$getNestedScrollScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    return-object v0
.end method

.method public static final synthetic access$getOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/Scroll2DScope;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    return-object v0
.end method

.method public static final synthetic access$getOverscrollEffect$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/OverscrollEffect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    return-object v0
.end method

.method public static final synthetic access$getPerformScrollForOverscroll$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScrollForOverscroll:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$isScrollableNodeAttached$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isScrollableNodeAttached:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/Scroll2DScope;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-delta$0"    # J
    .param p4, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$setLatestScrollSource$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .param p1, "<set-?>"    # I

    .line 302
    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    return-void
.end method

.method public static final synthetic access$setOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/Scroll2DScope;

    .line 302
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    return-void
.end method

.method private final dispatchRawDelta-MK-Hz9U(J)J
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-scroll$0"    # J

    .line 371
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {v0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DState;->dispatchRawDelta-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final doFlingAnimation_QWom1Mo$toDecomposedOffset(FJ)J
    .locals 15
    .param p0, "$this$doFlingAnimation_QWom1Mo_u24toDecomposedOffset"    # F
    .param p1, "$$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J

    .line 409
    invoke-static/range {p1 .. p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .local v0, "x$iv":F
    move v4, p0

    .local v4, "y$iv":F
    const/4 v5, 0x0

    .line 534
    .local v5, "$i$f$Offset":I
    move v6, v4

    .local v6, "val2$iv$iv":F
    move v7, v0

    .local v7, "val1$iv$iv":F
    const/4 v8, 0x0

    .line 535
    .local v8, "$i$f$packFloats":I
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    .line 536
    .local v9, "v1$iv$iv":J
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 537
    .local v11, "v2$iv$iv":J
    shl-long v13, v9, v3

    and-long/2addr v1, v11

    or-long/2addr v1, v13

    .line 534
    .end local v6    # "val2$iv$iv":F
    .end local v7    # "val1$iv$iv":F
    .end local v8    # "$i$f$packFloats":I
    .end local v9    # "v1$iv$iv":J
    .end local v11    # "v2$iv$iv":J
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .end local v0    # "x$iv":F
    .end local v4    # "y$iv":F
    .end local v5    # "$i$f$Offset":I
    goto :goto_0

    .line 413
    :cond_0
    invoke-static/range {p1 .. p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v0, v4

    .line 414
    invoke-static/range {p1 .. p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v4, v5

    .line 412
    nop

    .restart local v0    # "x$iv":F
    .restart local v4    # "y$iv":F
    const/4 v5, 0x0

    .line 538
    .restart local v5    # "$i$f$Offset":I
    move v6, v4

    .restart local v6    # "val2$iv$iv":F
    move v7, v0

    .restart local v7    # "val1$iv$iv":F
    const/4 v8, 0x0

    .line 539
    .restart local v8    # "$i$f$packFloats":I
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    .line 540
    .restart local v9    # "v1$iv$iv":J
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 541
    .restart local v11    # "v2$iv$iv":J
    shl-long v13, v9, v3

    and-long/2addr v1, v11

    or-long/2addr v1, v13

    .line 538
    .end local v6    # "val2$iv$iv":F
    .end local v7    # "val1$iv$iv":F
    .end local v8    # "$i$f$packFloats":I
    .end local v9    # "v1$iv$iv":J
    .end local v11    # "v2$iv$iv":J
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    move-wide v0, v1

    .line 416
    .end local v0    # "x$iv":F
    .end local v4    # "y$iv":F
    .end local v5    # "$i$f$Offset":I
    :goto_0
    return-wide v0
.end method

.method private static final doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J
    .locals 3
    .param p0, "$this$doFlingAnimation_QWom1Mo_u24toDecomposedVelocity"    # F
    .param p1, "$$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J

    .line 423
    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 428
    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 426
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    .line 430
    :goto_0
    return-wide v0
.end method

.method private static final doFlingAnimation_QWom1Mo$toMagnitudeFloat(J)F
    .locals 11
    .param p0, "$this$doFlingAnimation_QWom1Mo_u24toMagnitudeFloat"    # J

    .line 402
    move-wide v0, p0

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 529
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 530
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v6, v6

    .local v6, "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 531
    .local v7, "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 530
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 529
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 402
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    float-to-double v0, v6

    const/4 v2, 0x2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move-wide v4, p0

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v1, 0x0

    .line 532
    .local v1, "$i$f$getY-impl":I
    move-wide v6, v4

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 533
    .local v8, "$i$f$unpackFloat2":I
    const-wide v9, 0xffffffffL

    and-long/2addr v9, v6

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 531
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 533
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 532
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat2":I
    nop

    .line 402
    .end local v1    # "$i$f$getY-impl":I
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    float-to-double v4, v9

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private final performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J
    .locals 16
    .param p1, "$this$performScroll_u2d3eAAhYA"    # Landroidx/compose/foundation/gestures/Scroll2DScope;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-delta$0"    # J
    .param p4, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 341
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    move/from16 v9, p4

    invoke-virtual {v3, v1, v2, v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreScroll-OzD1aCk(JI)J

    move-result-wide v10

    .line 343
    .local v10, "consumedByPreScroll":J
    invoke-static {v1, v2, v10, v11}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v12

    .line 345
    .local v12, "scrollAvailableAfterPreScroll":J
    move-object/from16 v3, p1

    invoke-interface {v3, v12, v13}, Landroidx/compose/foundation/gestures/Scroll2DScope;->scrollBy-MK-Hz9U(J)J

    move-result-wide v5

    .line 347
    .local v5, "consumedBySelfScroll":J
    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v7

    .line 349
    .local v7, "deltaAvailableAfterScroll":J
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 349
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostScroll-DzOQY0M(JJI)J

    move-result-wide v14

    .line 348
    nop

    .line 354
    .local v14, "consumedByPostScroll":J
    invoke-static {v10, v11, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v14, v15}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static final performScrollForOverscroll$lambda$0(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;
    .locals 5
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .param p1, "delta"    # Landroidx/compose/ui/geometry/Offset;

    .line 337
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    .line 528
    .local v0, "$this$performScrollForOverscroll_u24lambda_u240_u240":Landroidx/compose/foundation/gestures/Scroll2DScope;
    const/4 v1, 0x0

    .line 337
    .local v1, "$i$a$-with-ScrollingLogic2D$performScrollForOverscroll$1$1":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    iget v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    invoke-direct {p0, v0, v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J

    move-result-wide v0

    .end local v0    # "$this$performScrollForOverscroll_u24lambda_u240_u240":Landroidx/compose/foundation/gestures/Scroll2DScope;
    .end local v1    # "$i$a$-with-ScrollingLogic2D$performScrollForOverscroll$1$1":I
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic scroll$default(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 473
    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 474
    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 473
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doFlingAnimation-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v1, v0

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 398
    iget v3, v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    iget-object p2, v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$LongRef;

    .local p2, "result":Lkotlin/jvm/internal/Ref$LongRef;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 462
    .end local p2    # "result":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .line 398
    .end local p1    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    .local v6, "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    move-wide v7, p1

    .line 399
    .local v7, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v9, "result":Lkotlin/jvm/internal/Ref$LongRef;
    iput-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 432
    const/4 p1, 0x1

    iput-boolean p1, v6, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    .line 433
    nop

    .line 434
    :try_start_1
    sget-object p2, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    new-instance v5, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;JLkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v9, v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    iput p1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    invoke-virtual {v6, p2, v5, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v7    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    if-ne p1, v0, :cond_1

    .line 398
    .end local v6    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    return-object v0

    .line 434
    .restart local v6    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    :cond_1
    move-object p1, v6

    move-object p2, v9

    .line 462
    .end local v6    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .end local v9    # "result":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p1    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .restart local p2    # "result":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_1
    iput-boolean v4, p1, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    .line 463
    .end local p1    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    nop

    .line 465
    .restart local p1    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    iget-wide v3, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0

    .line 462
    .end local p1    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .end local p2    # "result":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v6    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    :catchall_1
    move-exception v0

    move-object p2, v0

    move-object p1, v6

    .end local v6    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    .restart local p1    # "this":Landroidx/compose/foundation/gestures/ScrollingLogic2D;
    :goto_2
    iput-boolean v4, p1, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getScrollableState()Landroidx/compose/foundation/gestures/Scrollable2DState;
    .locals 1

    .line 303
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    return-object v0
.end method

.method public isFlinging()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    return v0
.end method

.method public final onScrollStopped-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-unit-Velocity$-initialVelocity$0"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 375
    move-wide v0, p1

    .line 377
    .local v0, "availableVelocity":J
    new-instance v2, Landroidx/compose/foundation/gestures/ScrollingLogic2D$onScrollStopped$performFling$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$onScrollStopped$performFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 389
    .local v2, "performFling":Lkotlin/jvm/functions/Function2;
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 390
    .local v3, "overscroll":Landroidx/compose/foundation/OverscrollEffect;
    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->shouldDispatchOverscroll-TH1AsA0(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    invoke-interface {v3, v0, v1, v2, p3}, Landroidx/compose/foundation/OverscrollEffect;->applyToFling-BMRW4eQ(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    return-object v4

    :cond_0
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 395
    :goto_0
    return-object v4

    .line 393
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v4

    invoke-interface {v2, v4, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    return-object v4

    :cond_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0
.end method

.method public performRawScroll-MK-Hz9U(J)J
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-scroll$0"    # J

    .line 363
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/Scrollable2DState;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->dispatchRawDelta-MK-Hz9U(J)J

    move-result-wide v0

    .line 363
    :goto_0
    return-wide v0
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "scrollPriority"    # Landroidx/compose/foundation/MutatePriority;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
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

    .line 477
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, v1, p3}, Landroidx/compose/foundation/gestures/Scrollable2DState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 481
    return-object v0
.end method

.method public final setScrollableState(Landroidx/compose/foundation/gestures/Scrollable2DState;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/Scrollable2DState;

    .line 303
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    return-void
.end method

.method public final shouldDispatchOverscroll-TH1AsA0(J)Z
    .locals 16
    .param p1, "$v$c$androidx-compose-ui-unit-Velocity$-velocity$0"    # J

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    .local v2, "x$iv":F
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v3

    .local v3, "y$iv":F
    const/4 v4, 0x0

    .line 524
    .local v4, "$i$f$Offset":I
    move v5, v3

    .local v5, "val2$iv$iv":F
    move v6, v2

    .local v6, "val1$iv$iv":F
    const/4 v7, 0x0

    .line 525
    .local v7, "$i$f$packFloats":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 526
    .local v8, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 527
    .local v10, "v2$iv$iv":J
    const/16 v12, 0x20

    shl-long v12, v8, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v10

    or-long v5, v12, v14

    .line 524
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "val1$iv$iv":F
    .end local v7    # "$i$f$packFloats":I
    .end local v8    # "v1$iv$iv":J
    .end local v10    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 360
    .end local v2    # "x$iv":F
    .end local v3    # "y$iv":F
    .end local v4    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/foundation/gestures/Scrollable2DState;->canScroll-k-4lQ0M(J)Z

    move-result v1

    return v1
.end method

.method public final shouldDispatchOverscroll-k-4lQ0M(J)Z
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 357
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {v0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DState;->canScroll-k-4lQ0M(J)Z

    move-result v0

    return v0
.end method

.method public final shouldScrollImmediately()Z
    .locals 2

    .line 469
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/Scrollable2DState;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/OverscrollEffect;->isInProgress()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final update(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Z
    .locals 2
    .param p1, "scrollableState"    # Landroidx/compose/foundation/gestures/Scrollable2DState;
    .param p2, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p3, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p4, "nestedScrollDispatcher"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "resetPointerInputHandling":Z
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    .line 493
    const/4 v0, 0x1

    .line 495
    :cond_0
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 496
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 497
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 498
    return v0
.end method
