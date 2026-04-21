.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ContentInViewNode.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewNode$Request;,
        Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentInViewNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentInViewNode.kt\nandroidx/compose/foundation/gestures/ContentInViewNode\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 6 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 9 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 10 BringIntoViewRequestPriorityQueue.kt\nandroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue\n+ 11 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 12 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 13 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,567:1\n51#2,4:568\n51#2,4:592\n351#3,11:572\n59#4:583\n54#4:587\n54#4:633\n59#4:635\n90#5:584\n80#5:586\n85#5:588\n80#5:590\n70#5:597\n60#5:600\n60#5:614\n70#5:617\n70#5:620\n53#5,3:623\n60#5:627\n53#5,3:630\n85#5:634\n90#5:636\n60#5:638\n70#5:641\n32#6:585\n32#6:589\n1#7:591\n61#8:596\n57#8:599\n61#8:619\n57#8:626\n57#8:637\n61#8:640\n22#9:598\n22#9:601\n22#9:615\n22#9:618\n22#9:621\n22#9:628\n22#9:639\n22#9:642\n108#10:602\n109#10:611\n448#11,8:603\n150#12:612\n65#12:613\n69#12:616\n30#13:622\n30#13:629\n*S KotlinDebug\n*F\n+ 1 ContentInViewNode.kt\nandroidx/compose/foundation/gestures/ContentInViewNode\n*L\n122#1:568,4\n270#1:592,4\n138#1:572,11\n189#1:583\n191#1:587\n525#1:633\n526#1:635\n189#1:584\n189#1:586\n191#1:588\n191#1:590\n418#1:597\n424#1:600\n478#1:614\n479#1:617\n506#1:620\n499#1:623,3\n516#1:627\n510#1:630,3\n525#1:634\n526#1:636\n531#1:638\n532#1:641\n189#1:585\n191#1:589\n418#1:596\n424#1:599\n506#1:619\n516#1:626\n531#1:637\n532#1:640\n418#1:598\n424#1:601\n478#1:615\n479#1:618\n506#1:621\n516#1:628\n531#1:639\n532#1:642\n432#1:602\n432#1:611\n432#1:603,8\n460#1:612\n478#1:613\n479#1:616\n499#1:622\n510#1:629\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001MB9\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0016J\u0008\u0010$\u001a\u00020\u000cH\u0002J\u001e\u0010%\u001a\u00020&2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0096@\u00a2\u0006\u0002\u0010\'J\u0010\u0010(\u001a\u00020&2\u0008\u0010)\u001a\u0004\u0018\u00010\u0018J\u0017\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020&2\u0006\u0010+\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008/\u0010-J\n\u00100\u001a\u0004\u0018\u00010\u000fH\u0002J\u0019\u00101\u001a\u00020&2\u0008\u0008\u0002\u00102\u001a\u000203H\u0002\u00a2\u0006\u0004\u00084\u0010-J\u001f\u00105\u001a\u0002062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00102\u001a\u000203H\u0002\u00a2\u0006\u0004\u00087\u00108J\n\u00109\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020\u000fH\u0002J\'\u0010<\u001a\u00020\n*\u00020\u000f2\u0008\u0008\u0002\u0010+\u001a\u00020\u001c2\u0008\u0008\u0002\u0010=\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\'\u0010@\u001a\u00020A2\u0006\u0010;\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u001c2\u0006\u0010=\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u001c\u0010E\u001a\u00020F*\u00020\u001c2\u0006\u0010G\u001a\u00020\u001cH\u0082\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\u001c\u0010E\u001a\u00020F*\u00020J2\u0006\u0010G\u001a\u00020JH\u0082\u0002\u00a2\u0006\u0004\u0008K\u0010IJ \u0010L\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c@BX\u0080\u000e\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ContentInViewNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/LayoutAwareModifierNode;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "scrollingLogic",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "reverseDirection",
        "",
        "bringIntoViewSpec",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "getFocusedRect",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/geometry/Rect;",
        "<init>",
        "(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/jvm/functions/Function0;)V",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "()Z",
        "bringIntoViewRequests",
        "Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;",
        "focusedChild",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "trackingFocusedChild",
        "childWasMaxVisibleBeforeViewportShrunk",
        "value",
        "Landroidx/compose/ui/unit/IntSize;",
        "viewportSize",
        "getViewportSize-YbymL2g$foundation",
        "()J",
        "J",
        "isAnimationRunning",
        "calculateRectForParent",
        "localRect",
        "requireBringIntoViewSpec",
        "bringChildIntoView",
        "",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onFocusBoundsChanged",
        "newBounds",
        "onRemeasured",
        "size",
        "onRemeasured-ozmzZPI",
        "(J)V",
        "onRemeasuredLegacy",
        "onRemeasuredLegacy-ozmzZPI",
        "getFocusedChildBounds",
        "launchAnimation",
        "viewportAdjustmentForReverseScroll",
        "Landroidx/compose/ui/unit/IntOffset;",
        "launchAnimation--gyyYBs",
        "calculateScrollDelta",
        "",
        "calculateScrollDelta-I_oMVgE",
        "(Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F",
        "findBringIntoViewRequest",
        "computeDestination",
        "childBounds",
        "isMaxVisible",
        "containerOffset",
        "isMaxVisible--EQwtKw",
        "(Landroidx/compose/ui/geometry/Rect;JJ)Z",
        "relocationOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "containerSize",
        "relocationOffset-fbGrOKE",
        "(Landroidx/compose/ui/geometry/Rect;JJ)J",
        "compareTo",
        "",
        "other",
        "compareTo-TemP2vQ",
        "(JJ)I",
        "Landroidx/compose/ui/geometry/Size;",
        "compareTo-iLBOSCw",
        "update",
        "Request",
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
.field private final bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

.field private bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field private childWasMaxVisibleBeforeViewportShrunk:Z

.field private focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private getFocusedRect:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private isAnimationRunning:Z

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private reverseDirection:Z

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field private final shouldAutoInvalidate:Z

.field private trackingFocusedChild:Z

.field private viewportSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "scrollingLogic"    # Landroidx/compose/foundation/gestures/ScrollingLogic;
    .param p3, "reverseDirection"    # Z
    .param p4, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .param p5, "getFocusedRect"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Z",
            "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 70
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 71
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 72
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 73
    iput-object p5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Lkotlin/jvm/functions/Function0;

    .line 95
    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 116
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 68
    return-void
.end method

.method public static final synthetic access$calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;
    .param p1, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .param p2, "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0"    # J

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getBringIntoViewRequests$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    return-object v0
.end method

.method public static final synthetic access$getFocusedChildBounds(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReverseDirection$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    return v0
.end method

.method public static final synthetic access$getScrollingLogic$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object v0
.end method

.method public static final synthetic access$getTrackingFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    return v0
.end method

.method public static final synthetic access$isAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    return v0
.end method

.method public static final synthetic access$setAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;
    .param p1, "<set-?>"    # Z

    .line 66
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    return-void
.end method

.method public static final synthetic access$setTrackingFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;
    .param p1, "<set-?>"    # Z

    .line 66
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    return-void
.end method

.method private final calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F
    .locals 13
    .param p1, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .param p2, "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0"    # J

    .line 405
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 408
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->findBringIntoViewRequest()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 409
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 408
    :goto_0
    if-nez v0, :cond_2

    .line 410
    return v1

    .line 407
    :cond_2
    nop

    .line 412
    .local v0, "rectangleToMakeVisible":Landroidx/compose/ui/geometry/Rect;
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v1

    .line 413
    .local v1, "size":J
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    .line 421
    :pswitch_0
    nop

    .line 422
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 423
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    sub-float/2addr v4, v5

    .line 424
    move-wide v5, v1

    .local v5, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v7, 0x0

    .line 599
    .local v7, "$i$f$getWidth-impl":I
    move-wide v8, v5

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 600
    .local v10, "$i$f$unpackFloat1":I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 601
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 600
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 599
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 421
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v7    # "$i$f$getWidth-impl":I
    invoke-interface {p1, v3, v4, v11}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v3

    goto :goto_1

    .line 415
    :pswitch_1
    nop

    .line 416
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 417
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    .line 418
    move-wide v5, v1

    .restart local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v7, 0x0

    .line 596
    .local v7, "$i$f$getHeight-impl":I
    move-wide v8, v5

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 597
    .local v10, "$i$f$unpackFloat2":I
    const-wide v11, 0xffffffffL

    and-long/2addr v11, v8

    long-to-int v11, v11

    .restart local v11    # "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 598
    .restart local v12    # "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 597
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 596
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 415
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v7    # "$i$f$getHeight-impl":I
    invoke-interface {p1, v3, v4, v11}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v3

    .line 413
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final compareTo-TemP2vQ(JJ)I
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-$this$compareTo$0"    # J
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-other$0"    # J

    .line 524
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 525
    :pswitch_0
    move-wide v0, p1

    .local v0, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 633
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 634
    .local v5, "$i$f$unpackInt1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v3, v7

    .line 633
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackInt1":I
    nop

    .line 525
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    move-wide v0, p3

    .restart local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 633
    .restart local v2    # "$i$f$getWidth-impl":I
    move-wide v4, v0

    .local v4, "value$iv$iv":J
    const/4 v7, 0x0

    .line 634
    .local v7, "$i$f$unpackInt1":I
    shr-long v8, v4, v6

    long-to-int v4, v8

    .line 633
    .end local v4    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt1":I
    nop

    .line 525
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    goto :goto_0

    .line 526
    :pswitch_1
    move-wide v0, p1

    .restart local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 635
    .local v2, "$i$f$getHeight-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 636
    .local v5, "$i$f$unpackInt2":I
    const-wide v6, 0xffffffffL

    and-long v8, v3, v6

    long-to-int v3, v8

    .line 635
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackInt2":I
    nop

    .line 526
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getHeight-impl":I
    move-wide v0, p3

    .restart local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 635
    .restart local v2    # "$i$f$getHeight-impl":I
    move-wide v4, v0

    .restart local v4    # "value$iv$iv":J
    const/4 v8, 0x0

    .line 636
    .local v8, "$i$f$unpackInt2":I
    and-long/2addr v6, v4

    long-to-int v4, v6

    .line 635
    .end local v4    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt2":I
    nop

    .line 526
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getHeight-impl":I
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    .line 527
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final compareTo-iLBOSCw(JJ)I
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-$this$compareTo$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Size$-other$0"    # J

    .line 530
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 531
    :pswitch_0
    move-wide v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 637
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 638
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 639
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 638
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 637
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 531
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    move-wide v0, p3

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 637
    .restart local v2    # "$i$f$getWidth-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 638
    .restart local v5    # "$i$f$unpackFloat1":I
    shr-long v8, v3, v6

    long-to-int v6, v8

    .local v6, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 639
    .restart local v8    # "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 638
    .end local v6    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 637
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 531
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0

    .line 532
    :pswitch_1
    move-wide v0, p1

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 640
    .local v2, "$i$f$getHeight-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 641
    .local v5, "$i$f$unpackFloat2":I
    const-wide v6, 0xffffffffL

    and-long v8, v3, v6

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 642
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 641
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 640
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 532
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getHeight-impl":I
    move-wide v0, p3

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 640
    .restart local v2    # "$i$f$getHeight-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 641
    .restart local v5    # "$i$f$unpackFloat2":I
    and-long/2addr v6, v3

    long-to-int v6, v6

    .restart local v6    # "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 642
    .local v7, "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 641
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 640
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 532
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getHeight-impl":I
    invoke-static {v8, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 533
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final computeDestination(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .param p1, "childBounds"    # Landroidx/compose/ui/geometry/Rect;

    .line 458
    nop

    .line 460
    nop

    .line 461
    nop

    .line 462
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 463
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v4

    .line 460
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "childBounds":Landroidx/compose/ui/geometry/Rect;
    .local v1, "childBounds":Landroidx/compose/ui/geometry/Rect;
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J

    move-result-wide v2

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 p1, 0x0

    .line 612
    .local p1, "$i$f$unaryMinus-F1C5BW0":I
    const-wide v4, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v4, v2

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 458
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local p1    # "$i$f$unaryMinus-F1C5BW0":I
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    return-object p1
.end method

.method private final findBringIntoViewRequest()Landroidx/compose/ui/geometry/Rect;
    .locals 15

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "rectangleToMakeVisible":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .local v1, "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    const/4 v2, 0x0

    .line 602
    .local v2, "$i$f$forEachFromSmallest":I
    invoke-static {v1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->access$getRequests$p(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 603
    .local v4, "$i$f$forEachReversed":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 604
    .local v5, "i$iv$iv":I
    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 605
    .local v6, "content$iv$iv":[Ljava/lang/Object;
    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 606
    :goto_0
    if-ltz v5, :cond_3

    .line 607
    aget-object v7, v6, v5

    check-cast v7, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .local v7, "it$iv":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    const/4 v8, 0x0

    .line 602
    .local v8, "$i$a$-forEachReversed-BringIntoViewRequestPriorityQueue$forEachFromSmallest$1$iv":I
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->getCurrentBounds()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/geometry/Rect;

    .local v9, "bounds":Landroidx/compose/ui/geometry/Rect;
    const/4 v10, 0x0

    .line 434
    .local v10, "$i$a$-forEachFromSmallest-ContentInViewNode$findBringIntoViewRequest$1":I
    if-eqz v9, :cond_2

    .line 435
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v11

    iget-wide v13, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v13

    invoke-direct {p0, v11, v12, v13, v14}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-iLBOSCw(JJ)I

    move-result v11

    if-gtz v11, :cond_0

    .line 436
    move-object v0, v9

    .line 446
    goto :goto_2

    .line 444
    :cond_0
    if-nez v0, :cond_1

    move-object v11, v9

    goto :goto_1

    :cond_1
    move-object v11, v0

    :goto_1
    return-object v11

    .line 602
    .end local v9    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .end local v10    # "$i$a$-forEachFromSmallest-ContentInViewNode$findBringIntoViewRequest$1":I
    :cond_2
    :goto_2
    nop

    .line 607
    .end local v7    # "it$iv":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    .end local v8    # "$i$a$-forEachReversed-BringIntoViewRequestPriorityQueue$forEachFromSmallest$1$iv":I
    nop

    .line 608
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 610
    :cond_3
    nop

    .line 611
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEachReversed":I
    .end local v5    # "i$iv$iv":I
    .end local v6    # "content$iv$iv":[Ljava/lang/Object;
    :cond_4
    nop

    .line 447
    .end local v1    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v2    # "$i$f$forEachFromSmallest":I
    return-object v0
.end method

.method private final getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 5

    .line 258
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isKeepInViewFocusObservationChangeEnabled:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    return-object v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 263
    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 264
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v2, :cond_4

    move-object v3, v2

    .line 591
    .local v3, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v4, 0x0

    .line 264
    .local v4, "$i$a$-takeIf-ContentInViewNode$getFocusedChildBounds$focusedChild$1":I
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    .end local v3    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v4    # "$i$a$-takeIf-ContentInViewNode$getFocusedChildBounds$focusedChild$1":I
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    goto :goto_1

    .line 265
    .local v2, "focusedChild":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1

    .line 264
    .end local v2    # "focusedChild":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_4
    :goto_1
    return-object v1
.end method

.method private final isMaxVisible--EQwtKw(Landroidx/compose/ui/geometry/Rect;JJ)Z
    .locals 11
    .param p1, "$this$isMaxVisible_u2d_u2dEQwtKw"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J
    .param p4, "$v$c$androidx-compose-ui-unit-IntOffset$-containerOffset$0"    # J

    .line 477
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J

    move-result-wide v0

    .line 478
    .local v0, "relocationOffset":J
    move-wide v2, v0

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 613
    .local v4, "$i$f$getX-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 614
    .local v7, "$i$f$unpackFloat1":I
    const/16 v8, 0x20

    shr-long v8, v5, v8

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 615
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 614
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 613
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackFloat1":I
    nop

    .line 478
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getX-impl":I
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 479
    move-wide v4, v0

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 616
    .local v2, "$i$f$getY-impl":I
    move-wide v6, v4

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 617
    .local v8, "$i$f$unpackFloat2":I
    const-wide v9, 0xffffffffL

    and-long/2addr v9, v6

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 618
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 617
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 616
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat2":I
    nop

    .line 479
    .end local v2    # "$i$f$getY-impl":I
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 478
    :goto_0
    return v2
.end method

.method static synthetic isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJILjava/lang/Object;)Z
    .locals 6

    .line 473
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 474
    iget-wide p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    move-wide v2, p2

    goto :goto_0

    .line 473
    :cond_0
    move-wide v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    .line 475
    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p4

    move-wide v4, p4

    goto :goto_1

    .line 473
    :cond_1
    move-wide v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw(Landroidx/compose/ui/geometry/Rect;JJ)Z

    move-result p0

    return p0
.end method

.method private final launchAnimation--gyyYBs(J)V
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0"    # J

    .line 269
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v3

    .line 270
    .local v3, "bringIntoViewSpec":Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    xor-int/lit8 v0, v0, 0x1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 592
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 593
    const/4 v2, 0x0

    .line 271
    .local v2, "$i$a$-checkPrecondition-ContentInViewNode$launchAnimation$1":I
    nop

    .line 593
    .end local v2    # "$i$a$-checkPrecondition-ContentInViewNode$launchAnimation$1":I
    const-string/jumbo v2, "launchAnimation called when previous animation was running"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 595
    :cond_0
    nop

    .line 274
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    nop

    .line 275
    new-instance v2, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->getScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    .line 276
    .local v2, "animationState":Landroidx/compose/foundation/gestures/UpdatableAnimationState;
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    sget-object v8, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    .end local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0":J
    .local v4, "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0":J
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlin/coroutines/Continuation;)V

    .end local v4    # "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0":J
    .restart local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-viewportAdjustmentForReverseScroll$0":J
    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, v7

    move-object v7, v0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 395
    return-void
.end method

.method static synthetic launchAnimation--gyyYBs$default(Landroidx/compose/foundation/gestures/ContentInViewNode;JILjava/lang/Object;)V
    .locals 0

    .line 268
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation--gyyYBs(J)V

    return-void
.end method

.method private final onRemeasuredLegacy-ozmzZPI(J)V
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J

    .line 229
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 230
    .local v2, "previousViewportSize":J
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 233
    invoke-direct {p0, p1, p2, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-TemP2vQ(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 235
    :cond_0
    nop

    .line 238
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    .line 246
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 252
    .local v1, "boundsBeforeRemeasurement":Landroidx/compose/ui/geometry/Rect;
    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->childWasMaxVisibleBeforeViewportShrunk:Z

    .line 255
    :cond_3
    return-void

    .line 238
    .end local v1    # "boundsBeforeRemeasurement":Landroidx/compose/ui/geometry/Rect;
    :cond_4
    move-object v0, p0

    .line 239
    :goto_0
    nop

    .line 240
    return-void
.end method

.method private final relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J
    .locals 18
    .param p1, "childBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "$v$c$androidx-compose-ui-unit-IntSize$-containerSize$0"    # J
    .param p4, "$v$c$androidx-compose-ui-unit-IntOffset$-containerOffset$0"    # J

    .line 496
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    .line 497
    .local v0, "size":J
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const-wide v6, 0xffffffffL

    packed-switch v3, :pswitch_data_0

    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    .line 512
    :pswitch_0
    invoke-direct {v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v3

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v8

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    .line 516
    move-wide v10, v0

    .local v10, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v12, 0x0

    .line 626
    .local v12, "$i$f$getWidth-impl":I
    move-wide v13, v10

    .local v13, "value$iv$iv":J
    const/4 v15, 0x0

    .line 627
    .local v15, "$i$f$unpackFloat1":I
    const/16 v16, 0x0

    const/16 v17, 0x20

    shr-long v4, v13, v17

    long-to-int v4, v4

    .local v4, "bits$iv$iv$iv":I
    const/4 v5, 0x0

    .line 628
    .local v5, "$i$f$floatFromBits":I
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 627
    .end local v4    # "bits$iv$iv$iv":I
    .end local v5    # "$i$f$floatFromBits":I
    nop

    .line 626
    .end local v13    # "value$iv$iv":J
    .end local v15    # "$i$f$unpackFloat1":I
    nop

    .line 513
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v12    # "$i$f$getWidth-impl":I
    invoke-interface {v3, v8, v9, v4}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v3

    .line 518
    nop

    .line 510
    nop

    .local v3, "x$iv":F
    .local v16, "y$iv":F
    const/4 v4, 0x0

    .line 629
    .local v4, "$i$f$Offset":I
    move/from16 v5, v16

    .local v5, "val2$iv$iv":F
    move v8, v3

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 630
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 631
    .local v10, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 632
    .local v12, "v2$iv$iv":J
    shl-long v14, v10, v17

    and-long/2addr v6, v12

    or-long v5, v14, v6

    .line 629
    .end local v5    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v12    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .end local v3    # "x$iv":F
    .end local v4    # "$i$f$Offset":I
    .end local v16    # "y$iv":F
    goto :goto_0

    .line 500
    :pswitch_1
    const/16 v16, 0x0

    const/16 v17, 0x20

    .line 502
    invoke-direct {v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v3

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v8

    sub-float/2addr v5, v8

    .line 506
    move-wide v8, v0

    .local v8, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v10, 0x0

    .line 619
    .local v10, "$i$f$getHeight-impl":I
    move-wide v11, v8

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 620
    .local v13, "$i$f$unpackFloat2":I
    and-long v14, v11, v6

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 621
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 620
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 619
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 503
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v10    # "$i$f$getHeight-impl":I
    invoke-interface {v3, v4, v5, v14}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v3

    .line 499
    nop

    .local v3, "y$iv":F
    .local v16, "x$iv":F
    const/4 v4, 0x0

    .line 622
    .restart local v4    # "$i$f$Offset":I
    move v5, v3

    .restart local v5    # "val2$iv$iv":F
    move/from16 v8, v16

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 623
    .restart local v9    # "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 624
    .local v10, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 625
    .restart local v12    # "v2$iv$iv":J
    shl-long v14, v10, v17

    and-long/2addr v6, v12

    or-long v5, v14, v6

    .line 622
    .end local v5    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v12    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .line 497
    .end local v3    # "y$iv":F
    .end local v4    # "$i$f$Offset":I
    .end local v16    # "x$iv":F
    :goto_0
    return-wide v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .locals 2

    .line 130
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->getLocalBringIntoViewSpec()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bringChildIntoView(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "localRect"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v9

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 138
    :cond_2
    const/4 v0, 0x0

    .line 572
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v2, p2

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 573
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 579
    .local v4, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 580
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/CancellableContinuation;

    .local v5, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .line 139
    .local v6, "$i$a$-suspendCancellableCoroutine-ContentInViewNode$bringChildIntoView$2":I
    new-instance v7, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-direct {v7, p1, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 140
    .local v7, "request":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    nop

    .line 143
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$getBringIntoViewRequests$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->enqueue(Landroidx/compose/foundation/gestures/ContentInViewNode$Request;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$isAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 144
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v10, v11, v9, v8}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation--gyyYBs$default(Landroidx/compose/foundation/gestures/ContentInViewNode;JILjava/lang/Object;)V

    .line 146
    :cond_3
    nop

    .line 580
    .end local v5    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendCancellableCoroutine-ContentInViewNode$bringChildIntoView$2":I
    .end local v7    # "request":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    nop

    .line 581
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 572
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_5

    return-object v2

    .line 582
    :cond_5
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    return-object v0
.end method

.method public calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p1, "localRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 122
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 568
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 569
    const/4 v2, 0x0

    .line 123
    .local v2, "$i$a$-checkPrecondition-ContentInViewNode$calculateRectForParent$1":I
    nop

    .line 569
    .end local v2    # "$i$a$-checkPrecondition-ContentInViewNode$calculateRectForParent$1":I
    const-string v2, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 571
    :cond_0
    nop

    .line 126
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->computeDestination(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->shouldAutoInvalidate:Z

    return v0
.end method

.method public final getViewportSize-YbymL2g$foundation()J
    .locals 2

    .line 116
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    return-wide v0
.end method

.method public final onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 9
    .param p1, "newBounds"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 150
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 152
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->childWasMaxVisibleBeforeViewportShrunk:Z

    if-eqz v0, :cond_2

    .line 153
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    .local v2, "focusedChild":Landroidx/compose/ui/geometry/Rect;
    const/4 v0, 0x0

    .line 154
    .local v0, "$i$a$-let-ContentInViewNode$onFocusBoundsChanged$1":I
    nop

    .line 155
    iget-wide v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    nop

    .line 160
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 161
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v3, v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation--gyyYBs$default(Landroidx/compose/foundation/gestures/ContentInViewNode;JILjava/lang/Object;)V

    .line 163
    :cond_0
    nop

    .end local v0    # "$i$a$-let-ContentInViewNode$onFocusBoundsChanged$1":I
    .end local v2    # "focusedChild":Landroidx/compose/ui/geometry/Rect;
    goto :goto_0

    .line 153
    :cond_1
    move-object v1, p0

    :goto_0
    goto :goto_1

    .line 152
    :cond_2
    move-object v1, p0

    .line 165
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->childWasMaxVisibleBeforeViewportShrunk:Z

    .line 166
    return-void
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 19
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J

    .line 169
    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    sget-boolean v1, Landroidx/compose/foundation/ComposeFoundationFlags;->isKeepInViewFocusObservationChangeEnabled:Z

    if-nez v1, :cond_0

    .line 170
    invoke-direct/range {p0 .. p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->onRemeasuredLegacy-ozmzZPI(J)V

    .line 171
    return-void

    .line 174
    :cond_0
    iget-wide v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 175
    .local v2, "previousViewportSize":J
    iput-wide v8, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 178
    invoke-direct {v0, v8, v9, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-TemP2vQ(JJ)I

    move-result v1

    if-ltz v1, :cond_1

    return-void

    .line 180
    :cond_1
    nop

    .line 187
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    if-nez v1, :cond_3

    .line 188
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    if-ne v1, v4, :cond_2

    .line 189
    move-wide v10, v2

    .local v10, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v1, 0x0

    .line 583
    .local v1, "$i$f$getHeight-impl":I
    move-wide v12, v10

    .local v12, "value$iv$iv":J
    const/4 v4, 0x0

    .line 584
    .local v4, "$i$f$unpackInt2":I
    and-long v14, v12, v5

    long-to-int v4, v14

    .line 583
    .end local v4    # "$i$f$unpackInt2":I
    .end local v12    # "value$iv$iv":J
    nop

    .line 189
    .end local v1    # "$i$f$getHeight-impl":I
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    move-wide/from16 v10, p1

    .restart local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v1, 0x0

    .line 583
    .restart local v1    # "$i$f$getHeight-impl":I
    move-wide v12, v10

    .restart local v12    # "value$iv$iv":J
    const/4 v14, 0x0

    .line 584
    .local v14, "$i$f$unpackInt2":I
    move-wide v15, v5

    and-long v5, v12, v15

    long-to-int v5, v5

    .line 583
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackInt2":I
    nop

    .line 189
    .end local v1    # "$i$f$getHeight-impl":I
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    sub-int/2addr v4, v5

    .local v4, "y$iv":I
    const/4 v1, 0x0

    .local v1, "x$iv":I
    const/4 v5, 0x0

    .line 585
    .local v5, "$i$f$IntOffset":I
    move v6, v4

    .local v6, "val2$iv$iv":I
    move v10, v1

    .local v10, "val1$iv$iv":I
    const/4 v11, 0x0

    .line 586
    .local v11, "$i$f$packInts":I
    int-to-long v12, v10

    shl-long/2addr v12, v7

    move-wide/from16 v17, v2

    move v3, v1

    .end local v1    # "x$iv":I
    .end local v2    # "previousViewportSize":J
    .local v3, "x$iv":I
    .local v17, "previousViewportSize":J
    int-to-long v1, v6

    and-long/2addr v1, v15

    or-long/2addr v1, v12

    .line 585
    .end local v6    # "val2$iv$iv":I
    .end local v10    # "val1$iv$iv":I
    .end local v11    # "$i$f$packInts":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v1

    move-wide v4, v1

    .end local v3    # "x$iv":I
    .end local v4    # "y$iv":I
    .end local v5    # "$i$f$IntOffset":I
    goto :goto_0

    .line 191
    .end local v17    # "previousViewportSize":J
    .restart local v2    # "previousViewportSize":J
    :cond_2
    move-wide/from16 v17, v2

    move-wide v15, v5

    .end local v2    # "previousViewportSize":J
    .restart local v17    # "previousViewportSize":J
    move-wide/from16 v1, v17

    .local v1, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 587
    .local v3, "$i$f$getWidth-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 588
    .local v6, "$i$f$unpackInt1":I
    shr-long v10, v4, v7

    long-to-int v4, v10

    .line 587
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackInt1":I
    nop

    .line 191
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    move-wide/from16 v1, p1

    .restart local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 587
    .restart local v3    # "$i$f$getWidth-impl":I
    move-wide v5, v1

    .local v5, "value$iv$iv":J
    const/4 v10, 0x0

    .line 588
    .local v10, "$i$f$unpackInt1":I
    shr-long v11, v5, v7

    long-to-int v5, v11

    .line 587
    .end local v5    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackInt1":I
    nop

    .line 191
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    sub-int/2addr v4, v5

    .local v4, "x$iv":I
    const/4 v1, 0x0

    .local v1, "y$iv":I
    const/4 v2, 0x0

    .line 589
    .local v2, "$i$f$IntOffset":I
    move v3, v1

    .local v3, "val2$iv$iv":I
    move v5, v4

    .local v5, "val1$iv$iv":I
    const/4 v6, 0x0

    .line 590
    .local v6, "$i$f$packInts":I
    int-to-long v10, v5

    shl-long/2addr v10, v7

    int-to-long v12, v3

    and-long/2addr v12, v15

    or-long v5, v10, v12

    .line 589
    .end local v3    # "val2$iv$iv":I
    .end local v5    # "val1$iv$iv":I
    .end local v6    # "$i$f$packInts":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v1

    move-wide v4, v1

    .end local v1    # "y$iv":I
    .end local v2    # "$i$f$IntOffset":I
    .end local v4    # "x$iv":I
    goto :goto_0

    .line 194
    .end local v17    # "previousViewportSize":J
    .local v2, "previousViewportSize":J
    :cond_3
    move-wide/from16 v17, v2

    .end local v2    # "previousViewportSize":J
    .restart local v17    # "previousViewportSize":J
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v1

    move-wide v4, v1

    .line 187
    :goto_0
    nop

    .line 186
    move-wide v10, v4

    .line 197
    .local v10, "viewportAdjustmentForReverseScroll":J
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    if-eqz v1, :cond_8

    .local v1, "focusedChildBounds":Landroidx/compose/ui/geometry/Rect;
    const/4 v12, 0x0

    .line 198
    .local v12, "$i$a$-let-ContentInViewNode$onRemeasured$1":I
    nop

    .line 199
    nop

    .line 200
    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-nez v2, :cond_6

    .line 201
    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-nez v2, :cond_5

    .line 213
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v2, v17

    .end local v17    # "previousViewportSize":J
    .restart local v2    # "previousViewportSize":J
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJILjava/lang/Object;)Z

    move-result v4

    .end local v2    # "previousViewportSize":J
    .restart local v17    # "previousViewportSize":J
    if-eqz v4, :cond_4

    .line 214
    nop

    .line 215
    nop

    .line 214
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v10

    .end local v10    # "viewportAdjustmentForReverseScroll":J
    .local v4, "viewportAdjustmentForReverseScroll":J
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 218
    nop

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 223
    invoke-direct {v0, v4, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation--gyyYBs(J)V

    goto :goto_1

    .line 213
    .end local v4    # "viewportAdjustmentForReverseScroll":J
    .restart local v10    # "viewportAdjustmentForReverseScroll":J
    :cond_4
    move-object/from16 v0, p0

    move-wide v4, v10

    .end local v10    # "viewportAdjustmentForReverseScroll":J
    .restart local v4    # "viewportAdjustmentForReverseScroll":J
    goto :goto_1

    .line 201
    .end local v4    # "viewportAdjustmentForReverseScroll":J
    .restart local v10    # "viewportAdjustmentForReverseScroll":J
    :cond_5
    move-wide v4, v10

    .end local v10    # "viewportAdjustmentForReverseScroll":J
    .restart local v4    # "viewportAdjustmentForReverseScroll":J
    goto :goto_1

    .line 200
    .end local v4    # "viewportAdjustmentForReverseScroll":J
    .restart local v10    # "viewportAdjustmentForReverseScroll":J
    :cond_6
    move-wide v4, v10

    .line 225
    .end local v10    # "viewportAdjustmentForReverseScroll":J
    .restart local v4    # "viewportAdjustmentForReverseScroll":J
    :cond_7
    :goto_1
    nop

    .end local v1    # "focusedChildBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v12    # "$i$a$-let-ContentInViewNode$onRemeasured$1":I
    goto :goto_2

    .line 197
    .end local v4    # "viewportAdjustmentForReverseScroll":J
    .restart local v10    # "viewportAdjustmentForReverseScroll":J
    :cond_8
    move-wide v4, v10

    .end local v10    # "viewportAdjustmentForReverseScroll":J
    .restart local v4    # "viewportAdjustmentForReverseScroll":J
    :goto_2
    nop

    .line 226
    return-void
.end method

.method public final update(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "reverseDirection"    # Z
    .param p3, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 540
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 541
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 542
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 543
    return-void
.end method
