.class public final Landroidx/compose/ui/window/PopupLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "AndroidPopup.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/window/PopupLayout$Companion;,
        Landroidx/compose/ui/window/PopupLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/PopupLayout\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 6 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 7 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 8 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 9 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 10 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,995:1\n122#2:996\n1#3:997\n85#4:998\n117#4,2:999\n85#4:1001\n117#4,2:1002\n85#4:1004\n85#4:1005\n117#4,2:1006\n65#5:1008\n69#5:1015\n60#6:1009\n70#6:1016\n80#6:1018\n80#6:1020\n85#6:1022\n90#6:1024\n22#7,5:1010\n32#8:1017\n30#9:1019\n54#10:1021\n59#10:1023\n*S KotlinDebug\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/PopupLayout\n*L\n521#1:996\n510#1:998\n510#1:999,2\n511#1:1001\n511#1:1002,2\n515#1:1004\n575#1:1005\n575#1:1006,2\n764#1:1008\n764#1:1015\n764#1:1009\n764#1:1016\n764#1:1018\n779#1:1020\n803#1:1022\n803#1:1024\n764#1:1010,5\n764#1:1017\n779#1:1019\n803#1:1021\n803#1:1023\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 \u0086\u00012\u00020\u00012\u00020\u0002:\u0002\u0086\u0001BY\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u0010\\\u001a\u00020\u0005J&\u0010V\u001a\u00020\u00052\u0006\u0010]\u001a\u00020^2\u0011\u0010S\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008R\u00a2\u0006\u0002\u0010_J\r\u0010`\u001a\u00020\u0005H\u0017\u00a2\u0006\u0002\u0010aJ\u0008\u0010b\u001a\u00020\u0005H\u0014J\u0008\u0010c\u001a\u00020\u0005H\u0014J\u001d\u0010d\u001a\u00020\u00052\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020fH\u0010\u00a2\u0006\u0002\u0008hJ5\u0010i\u001a\u00020\u00052\u0006\u0010j\u001a\u00020\u00132\u0006\u0010k\u001a\u00020f2\u0006\u0010l\u001a\u00020f2\u0006\u0010m\u001a\u00020f2\u0006\u0010n\u001a\u00020fH\u0010\u00a2\u0006\u0002\u0008oJ\u0010\u0010p\u001a\u00020\u00132\u0006\u0010q\u001a\u00020rH\u0016J\u0008\u0010s\u001a\u00020\u0005H\u0002J\u0008\u0010t\u001a\u00020\u0005H\u0002J.\u0010u\u001a\u00020\u00052\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010v\u001a\u00020*J\u0010\u0010w\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010x\u001a\u00020\u00052\u0006\u00109\u001a\u000208J\u0006\u0010{\u001a\u00020\u0005J\r\u0010|\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0008}J\u0006\u0010~\u001a\u00020\u0005J\u0006\u0010\u007f\u001a\u00020\u0005J\u0014\u0010\u0080\u0001\u001a\u00020\u00132\t\u0010q\u001a\u0005\u0018\u00010\u0081\u0001H\u0016J\u0011\u0010\u0082\u0001\u001a\u00020\u00052\u0006\u0010v\u001a\u00020fH\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00052\u0006\u0010v\u001a\u00020*H\u0002J\t\u0010\u0084\u0001\u001a\u00020\u001fH\u0002J\t\u0010\u0085\u0001\u001a\u00020@H\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u00020\u001f8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\u00020*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R/\u00101\u001a\u0004\u0018\u0001002\u0008\u0010/\u001a\u0004\u0018\u0001008F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R/\u00109\u001a\u0004\u0018\u0001082\u0008\u0010/\u001a\u0004\u0018\u0001088B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008>\u00107\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010A\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008B\u0010CR\u0010\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010HR\u000e\u0010I\u001a\u00020JX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010K\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u000e\u0010N\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u0004\u0018\u00010QX\u0082\u000e\u00a2\u0006\u0002\n\u0000RA\u0010S\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008R2\u0011\u0010/\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008R8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008X\u00107\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u001e\u0010Z\u001a\u00020\u00132\u0006\u0010Y\u001a\u00020\u0013@RX\u0094\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010CR\u000e\u0010y\u001a\u00020zX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/window/PopupLayout;",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "",
        "properties",
        "Landroidx/compose/ui/window/PopupProperties;",
        "testTag",
        "",
        "composeView",
        "Landroid/view/View;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "initialPositionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "popupId",
        "Ljava/util/UUID;",
        "isNested",
        "",
        "popupLayoutHelper",
        "Landroidx/compose/ui/window/PopupLayoutHelper;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;ZLandroidx/compose/ui/window/PopupLayoutHelper;)V",
        "getTestTag",
        "()Ljava/lang/String;",
        "setTestTag",
        "(Ljava/lang/String;)V",
        "windowManager",
        "Landroid/view/WindowManager;",
        "params",
        "Landroid/view/WindowManager$LayoutParams;",
        "getParams$ui$annotations",
        "()V",
        "getParams$ui",
        "()Landroid/view/WindowManager$LayoutParams;",
        "positionProvider",
        "getPositionProvider",
        "()Landroidx/compose/ui/window/PopupPositionProvider;",
        "setPositionProvider",
        "(Landroidx/compose/ui/window/PopupPositionProvider;)V",
        "parentLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getParentLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setParentLayoutDirection",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "<set-?>",
        "Landroidx/compose/ui/unit/IntSize;",
        "popupContentSize",
        "getPopupContentSize-bOM6tXw",
        "()Landroidx/compose/ui/unit/IntSize;",
        "setPopupContentSize-fhxjrPA",
        "(Landroidx/compose/ui/unit/IntSize;)V",
        "popupContentSize$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "parentLayoutCoordinates",
        "getParentLayoutCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setParentLayoutCoordinates",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "parentLayoutCoordinates$delegate",
        "parentBounds",
        "Landroidx/compose/ui/unit/IntRect;",
        "canCalculatePosition",
        "getCanCalculatePosition",
        "()Z",
        "canCalculatePosition$delegate",
        "Landroidx/compose/runtime/State;",
        "maxSupportedElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "previousWindowVisibleFrame",
        "Landroid/graphics/Rect;",
        "subCompositionView",
        "getSubCompositionView",
        "()Landroidx/compose/ui/platform/AbstractComposeView;",
        "snapshotStateObserver",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "backCallback",
        "",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "getContent",
        "()Lkotlin/jvm/functions/Function2;",
        "setContent",
        "(Lkotlin/jvm/functions/Function2;)V",
        "content$delegate",
        "value",
        "shouldCreateCompositionOnAttachedToWindow",
        "getShouldCreateCompositionOnAttachedToWindow",
        "show",
        "parent",
        "Landroidx/compose/runtime/CompositionContext;",
        "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V",
        "Content",
        "(Landroidx/compose/runtime/Composer;I)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "internalOnMeasure",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "internalOnMeasure$ui",
        "internalOnLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "internalOnLayout$ui",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "maybeRegisterBackCallback",
        "maybeUnregisterBackCallback",
        "updateParameters",
        "layoutDirection",
        "updatePopupProperties",
        "updateParentLayoutCoordinates",
        "locationOnScreen",
        "",
        "pollForLocationOnScreenChange",
        "updateParentBounds",
        "updateParentBounds$ui",
        "updatePosition",
        "dismiss",
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "setLayoutDirection",
        "superSetLayoutDirection",
        "createLayoutParams",
        "getVisibleDisplayBounds",
        "Companion",
        "ui"
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

.field private static final Companion:Landroidx/compose/ui/window/PopupLayout$Companion;

.field private static final onCommitAffectingPopupPosition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/window/PopupLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backCallback:Ljava/lang/Object;

.field private final canCalculatePosition$delegate:Landroidx/compose/runtime/State;

.field private final composeView:Landroid/view/View;

.field private final content$delegate:Landroidx/compose/runtime/MutableState;

.field private final isNested:Z

.field private final locationOnScreen:[I

.field private final maxSupportedElevation:F

.field private onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Landroid/view/WindowManager$LayoutParams;

.field private parentBounds:Landroidx/compose/ui/unit/IntRect;

.field private final parentLayoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

.field private parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

.field private final popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

.field private positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

.field private final previousWindowVisibleFrame:Landroid/graphics/Rect;

.field private properties:Landroidx/compose/ui/window/PopupProperties;

.field private shouldCreateCompositionOnAttachedToWindow:Z

.field private final snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

.field private testTag:Ljava/lang/String;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/window/PopupLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/window/PopupLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/window/PopupLayout;->Companion:Landroidx/compose/ui/window/PopupLayout$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/window/PopupLayout;->$stable:I

    .line 888
    sget-object v0, Landroidx/compose/ui/window/PopupLayout$Companion$onCommitAffectingPopupPosition$1;->INSTANCE:Landroidx/compose/ui/window/PopupLayout$Companion$onCommitAffectingPopupPosition$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/window/PopupLayout;->onCommitAffectingPopupPosition:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;ZLandroidx/compose/ui/window/PopupLayoutHelper;)V
    .locals 6
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "properties"    # Landroidx/compose/ui/window/PopupProperties;
    .param p3, "testTag"    # Ljava/lang/String;
    .param p4, "composeView"    # Landroid/view/View;
    .param p5, "density"    # Landroidx/compose/ui/unit/Density;
    .param p6, "initialPositionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p7, "popupId"    # Ljava/util/UUID;
    .param p8, "isNested"    # Z
    .param p9, "popupLayoutHelper"    # Landroidx/compose/ui/window/PopupLayoutHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Ljava/util/UUID;",
            "Z",
            "Landroidx/compose/ui/window/PopupLayoutHelper;",
            ")V"
        }
    .end annotation

    .line 483
    nop

    .line 499
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 483
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 485
    iput-object p1, v0, Landroidx/compose/ui/window/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 486
    iput-object p2, v0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    .line 487
    iput-object p3, v0, Landroidx/compose/ui/window/PopupLayout;->testTag:Ljava/lang/String;

    .line 488
    iput-object p4, v0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    .line 492
    iput-boolean p8, v0, Landroidx/compose/ui/window/PopupLayout;->isNested:Z

    .line 493
    iput-object p9, v0, Landroidx/compose/ui/window/PopupLayout;->popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

    .line 501
    iget-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 503
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 506
    iput-object p6, v0, Landroidx/compose/ui/window/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 509
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 510
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/window/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 511
    invoke-static {v1, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/window/PopupLayout;->parentLayoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 515
    new-instance v3, Landroidx/compose/ui/window/PopupLayout$canCalculatePosition$2;

    invoke-direct {v3, p0}, Landroidx/compose/ui/window/PopupLayout$canCalculatePosition$2;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/window/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .line 521
    const/16 v3, 0x8

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 996
    .local v4, "$i$f$getDp":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 521
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    iput v3, v0, Landroidx/compose/ui/window/PopupLayout;->maxSupportedElevation:F

    .line 524
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Landroidx/compose/ui/window/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .line 530
    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 531
    new-instance v4, Landroidx/compose/ui/window/PopupLayout$snapshotStateObserver$1;

    invoke-direct {v4, p0}, Landroidx/compose/ui/window/PopupLayout$snapshotStateObserver$1;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 530
    invoke-direct {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v3, v0, Landroidx/compose/ui/window/PopupLayout;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 545
    nop

    .line 546
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroidx/compose/ui/window/PopupLayout;->setId(I)V

    .line 547
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v4}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 548
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v4}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 549
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v4}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 552
    sget v3, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Popup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/window/PopupLayout;->setTag(ILjava/lang/Object;)V

    .line 555
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/compose/ui/window/PopupLayout;->setClipChildren(Z)V

    .line 557
    move-object v3, p5

    .line 997
    .local v3, "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v4, 0x0

    .line 557
    .local v4, "$i$a$-with-PopupLayout$1":I
    iget v5, v0, Landroidx/compose/ui/window/PopupLayout;->maxSupportedElevation:F

    invoke-interface {v3, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/compose/ui/window/PopupLayout;->setElevation(F)V

    .line 562
    .end local v3    # "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v4    # "$i$a$-with-PopupLayout$1":I
    nop

    .line 563
    new-instance v3, Landroidx/compose/ui/window/PopupLayout$2;

    invoke-direct {v3}, Landroidx/compose/ui/window/PopupLayout$2;-><init>()V

    check-cast v3, Landroid/view/ViewOutlineProvider;

    .line 562
    invoke-virtual {p0, v3}, Landroidx/compose/ui/window/PopupLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 573
    nop

    .line 575
    sget-object v3, Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;->INSTANCE:Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;

    invoke-virtual {v3}, Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;->getLambda$-1131826196$ui()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v3, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 716
    new-array v1, v2, [I

    iput-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    .line 484
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;ZLandroidx/compose/ui/window/PopupLayoutHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 484
    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 495
    new-instance v0, Landroidx/compose/ui/window/PopupLayoutHelperImpl29;

    invoke-direct {v0}, Landroidx/compose/ui/window/PopupLayoutHelperImpl29;-><init>()V

    check-cast v0, Landroidx/compose/ui/window/PopupLayoutHelper;

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Landroidx/compose/ui/window/PopupLayoutHelperImpl;

    invoke-direct {v0}, Landroidx/compose/ui/window/PopupLayoutHelperImpl;-><init>()V

    check-cast v0, Landroidx/compose/ui/window/PopupLayoutHelper;

    :goto_0
    move-object v10, v0

    goto :goto_1

    .line 484
    :cond_1
    move-object/from16 v10, p9

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;ZLandroidx/compose/ui/window/PopupLayoutHelper;)V

    .line 499
    return-void
.end method

.method public static final synthetic access$getParentLayoutCoordinates(Landroidx/compose/ui/window/PopupLayout;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/window/PopupLayout;

    .line 483
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0
.end method

.method private final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 858
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v1, v0

    .local v1, "$this$createLayoutParams_u24lambda_u240":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 860
    .local v2, "$i$a$-apply-PopupLayout$createLayoutParams$1":I
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 862
    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    iget-object v4, p0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->access$flagsWithSecureFlagInherited(Landroidx/compose/ui/window/PopupProperties;Z)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 864
    const/16 v3, 0x3ea

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 867
    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 870
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 871
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 873
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 877
    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 878
    nop

    .line 858
    .end local v1    # "$this$createLayoutParams_u24lambda_u240":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "$i$a$-apply-PopupLayout$createLayoutParams$1":I
    return-object v0
.end method

.method private final getContent()Lkotlin/jvm/functions/Function2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1005
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 575
    return-object v0
.end method

.method public static synthetic getParams$ui$annotations()V
    .locals 0

    return-void
.end method

.method private final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4

    .line 511
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->parentLayoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1001
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 511
    return-object v0
.end method

.method private final getVisibleDisplayBounds()Landroidx/compose/ui/unit/IntRect;
    .locals 4

    .line 882
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .local v0, "it":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 883
    .local v1, "$i$a$-let-PopupLayout$getVisibleDisplayBounds$1":I
    iget-object v2, p0, Landroidx/compose/ui/window/PopupLayout;->popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroidx/compose/ui/window/PopupLayoutHelper;->getWindowVisibleDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 884
    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->access$toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    .line 882
    .end local v0    # "it":Landroid/graphics/Rect;
    .end local v1    # "$i$a$-let-PopupLayout$getVisibleDisplayBounds$1":I
    nop

    .line 885
    return-object v0
.end method

.method private final maybeRegisterBackCallback()V
    .locals 2

    .line 657
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupProperties;->getDismissOnBackPress()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->backCallback:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/ui/window/Api33Impl;->createBackCallback(Lkotlin/jvm/functions/Function0;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->backCallback:Ljava/lang/Object;

    .line 663
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->backCallback:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/window/Api33Impl;->maybeRegisterBackCallback(Landroid/view/View;Ljava/lang/Object;)V

    .line 664
    return-void

    .line 658
    :cond_2
    :goto_0
    return-void
.end method

.method private final maybeUnregisterBackCallback()V
    .locals 2

    .line 667
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 668
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->backCallback:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/window/Api33Impl;->maybeUnregisterBackCallback(Landroid/view/View;Ljava/lang/Object;)V

    .line 670
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->backCallback:Ljava/lang/Object;

    .line 671
    return-void
.end method

.method private final setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1006
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1007
    nop

    .line 575
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setParentLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 511
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->parentLayoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1002
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1003
    nop

    .line 511
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2
    .param p1, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 849
    sget-object v0, Landroidx/compose/ui/window/PopupLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 851
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 850
    :pswitch_1
    const/4 v0, 0x0

    .line 848
    :goto_0
    nop

    .line 853
    .local v0, "direction":I
    invoke-super {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setLayoutDirection(I)V

    .line 854
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updatePopupProperties(Landroidx/compose/ui/window/PopupProperties;)V
    .locals 4
    .param p1, "properties"    # Landroidx/compose/ui/window/PopupProperties;

    .line 686
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/window/PopupProperties;->getUsePlatformDefaultWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupProperties;->getUsePlatformDefaultWidth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 692
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 695
    :cond_1
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    .line 696
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->access$flagsWithSecureFlagInherited(Landroidx/compose/ui/window/PopupProperties;Z)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 698
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/ui/window/PopupLayoutHelper;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    return-void
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 592
    const v0, -0x331e2520

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(Content)592@25262L9:AndroidPopup.android.kt#2oxthz"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, p2, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v1, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    const-string v3, "androidx.compose.ui.window.PopupLayout.Content (AndroidPopup.android.kt:591)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 593
    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 592
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 594
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Landroidx/compose/ui/window/PopupLayout$Content$4;

    invoke-direct {v2, p0, p2}, Landroidx/compose/ui/window/PopupLayout$Content$4;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 811
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 812
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 813
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 640
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupProperties;->getDismissOnBackPress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 641
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_5

    .line 642
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 643
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 644
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 645
    return v2

    .line 646
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 647
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 648
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 649
    :cond_4
    return v2

    .line 653
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final getCanCalculatePosition()Z
    .locals 4

    .line 515
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1004
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 515
    return v0
.end method

.method public final getParams$ui()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 503
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 509
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;
    .locals 4

    .line 510
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 998
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 510
    return-object v0
.end method

.method public final getPositionProvider()Landroidx/compose/ui/window/PopupPositionProvider;
    .locals 1

    .line 506
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-object v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 577
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    return v0
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 1

    .line 527
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    return-object v0
.end method

.method public final getTestTag()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->testTag:Ljava/lang/String;

    return-object v0
.end method

.method public internalOnLayout$ui(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 627
    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnLayout$ui(ZIIII)V

    .line 630
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    iget-object v1, p1, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/window/PopupProperties;->getUsePlatformDefaultWidth()Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/window/PopupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 632
    .local v1, "child":Landroid/view/View;
    :cond_0
    iget-object v2, p1, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 633
    iget-object v2, p1, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 634
    iget-object v2, p1, Landroidx/compose/ui/window/PopupLayout;->popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

    iget-object v3, p1, Landroidx/compose/ui/window/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    iget-object v5, p1, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v2, v3, v4, v5}, Landroidx/compose/ui/window/PopupLayoutHelper;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public internalOnMeasure$ui(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 610
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupProperties;->getUsePlatformDefaultWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnMeasure$ui(II)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getVisibleDisplayBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    .line 619
    .local v0, "visibleDisplayBounds":Landroidx/compose/ui/unit/IntRect;
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 618
    nop

    .line 621
    .local v1, "displayWidthMeasureSpec":I
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 620
    nop

    .line 622
    .local v2, "displayHeightMeasureSpec":I
    invoke-super {p0, v1, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnMeasure$ui(II)V

    .line 624
    .end local v0    # "visibleDisplayBounds":Landroidx/compose/ui/unit/IntRect;
    .end local v1    # "displayWidthMeasureSpec":I
    .end local v2    # "displayHeightMeasureSpec":I
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 597
    invoke-super {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->onAttachedToWindow()V

    .line 598
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->start()V

    .line 599
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->maybeRegisterBackCallback()V

    .line 600
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 603
    invoke-super {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->onDetachedFromWindow()V

    .line 604
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->stop()V

    .line 605
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    .line 606
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->maybeUnregisterBackCallback()V

    .line 607
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 820
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupProperties;->getDismissOnClickOutside()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 827
    :cond_0
    nop

    .line 828
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 831
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 832
    :cond_3
    return v0

    .line 833
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    move v1, v0

    :cond_5
    if-eqz v1, :cond_7

    .line 834
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 835
    :cond_6
    return v0

    .line 838
    :cond_7
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final pollForLocationOnScreenChange()V
    .locals 6

    .line 731
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    .local v2, "oldX":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 734
    .local v0, "oldY":I
    iget-object v4, p0, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    iget-object v5, p0, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 735
    iget-object v4, p0, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    aget v1, v4, v1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    aget v1, v1, v3

    if-eq v0, v1, :cond_2

    .line 736
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui()V

    .line 738
    :cond_2
    return-void
.end method

.method public final setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "parent"    # Landroidx/compose/runtime/CompositionContext;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 585
    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/PopupLayout;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 586
    invoke-direct {p0, p2}, Landroidx/compose/ui/window/PopupLayout;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/window/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 588
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 844
    return-void
.end method

.method public final setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 509
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Landroidx/compose/ui/unit/IntSize;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/IntSize;

    .line 510
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 999
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1000
    nop

    .line 510
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/window/PopupPositionProvider;

    .line 506
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-void
.end method

.method public final setTestTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 487
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->testTag:Ljava/lang/String;

    return-void
.end method

.method public final show()V
    .locals 3

    .line 581
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "properties"    # Landroidx/compose/ui/window/PopupProperties;
    .param p3, "testTag"    # Ljava/lang/String;
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 679
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 680
    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->testTag:Ljava/lang/String;

    .line 681
    invoke-direct {p0, p2}, Landroidx/compose/ui/window/PopupLayout;->updatePopupProperties(Landroidx/compose/ui/window/PopupProperties;)V

    .line 682
    invoke-direct {p0, p4}, Landroidx/compose/ui/window/PopupLayout;->superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 683
    return-void
.end method

.method public final updateParentBounds$ui()V
    .locals 18

    .line 747
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/compose/ui/window/PopupLayout;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v2, v1

    .line 997
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 747
    .local v3, "$i$a$-takeIf-PopupLayout$updateParentBounds$coordinates$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "$i$a$-takeIf-PopupLayout$updateParentBounds$coordinates$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 748
    .local v1, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    .line 759
    .local v2, "layoutSize":J
    iget-boolean v4, v0, Landroidx/compose/ui/window/PopupLayout;->isNested:Z

    if-eqz v4, :cond_2

    .line 760
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    goto :goto_1

    .line 762
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    .line 759
    :goto_1
    nop

    .line 758
    nop

    .line 764
    .local v4, "position":J
    move-wide v6, v4

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 1008
    .local v8, "$i$f$getX-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 1009
    .local v11, "$i$f$unpackFloat1":I
    const/16 v12, 0x20

    shr-long v13, v9, v12

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 1010
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 1009
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 1008
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat1":I
    nop

    .line 764
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    nop

    .local v13, "$this$fastRoundToInt$iv":F
    const/4 v6, 0x0

    .line 1014
    .local v6, "$i$f$fastRoundToInt":I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 764
    .end local v6    # "$i$f$fastRoundToInt":I
    .end local v13    # "$this$fastRoundToInt$iv":F
    move-wide v7, v4

    .local v7, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v9, 0x0

    .line 1015
    .local v9, "$i$f$getY-impl":I
    move-wide v10, v7

    .local v10, "value$iv$iv":J
    const/4 v13, 0x0

    .line 1016
    .local v13, "$i$f$unpackFloat2":I
    const-wide v14, 0xffffffffL

    move/from16 v16, v12

    move/from16 v17, v13

    .end local v13    # "$i$f$unpackFloat2":I
    .local v17, "$i$f$unpackFloat2":I
    and-long v12, v10, v14

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 1010
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 1016
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 1015
    .end local v10    # "value$iv$iv":J
    .end local v17    # "$i$f$unpackFloat2":I
    nop

    .line 764
    .end local v7    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v9    # "$i$f$getY-impl":I
    nop

    .local v12, "$this$fastRoundToInt$iv":F
    const/4 v7, 0x0

    .line 1014
    .local v7, "$i$f$fastRoundToInt":I
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 764
    .end local v7    # "$i$f$fastRoundToInt":I
    .end local v12    # "$this$fastRoundToInt$iv":F
    nop

    .local v6, "x$iv":I
    .local v7, "y$iv":I
    const/4 v8, 0x0

    .line 1017
    .local v8, "$i$f$IntOffset":I
    move v9, v7

    .local v9, "val2$iv$iv":I
    move v10, v6

    .local v10, "val1$iv$iv":I
    const/4 v11, 0x0

    .line 1018
    .local v11, "$i$f$packInts":I
    int-to-long v12, v10

    shl-long v12, v12, v16

    move-wide/from16 v16, v14

    int-to-long v14, v9

    and-long v14, v14, v16

    or-long v9, v12, v14

    .line 1017
    .end local v9    # "val2$iv$iv":I
    .end local v10    # "val1$iv$iv":I
    .end local v11    # "$i$f$packInts":I
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v6

    .line 764
    .end local v6    # "x$iv":I
    .end local v7    # "y$iv":I
    .end local v8    # "$i$f$IntOffset":I
    nop

    .line 766
    .local v6, "layoutPosition":J
    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object v8

    .line 767
    .local v8, "newParentBounds":Landroidx/compose/ui/unit/IntRect;
    iget-object v9, v0, Landroidx/compose/ui/window/PopupLayout;->parentBounds:Landroidx/compose/ui/unit/IntRect;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 768
    iput-object v8, v0, Landroidx/compose/ui/window/PopupLayout;->parentBounds:Landroidx/compose/ui/unit/IntRect;

    .line 769
    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupLayout;->updatePosition()V

    .line 771
    :cond_3
    return-void

    .line 747
    .end local v1    # "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v2    # "layoutSize":J
    .end local v4    # "position":J
    .end local v6    # "layoutPosition":J
    .end local v8    # "newParentBounds":Landroidx/compose/ui/unit/IntRect;
    :cond_4
    :goto_2
    return-void
.end method

.method public final updateParentLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1, "parentLayoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 707
    invoke-direct {p0, p1}, Landroidx/compose/ui/window/PopupLayout;->setParentLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 708
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui()V

    .line 709
    return-void
.end method

.method public final updatePosition()V
    .locals 21

    .line 775
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/compose/ui/window/PopupLayout;->parentBounds:Landroidx/compose/ui/unit/IntRect;

    if-nez v3, :cond_0

    return-void

    .line 776
    .local v3, "parentBounds":Landroidx/compose/ui/unit/IntRect;
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/window/PopupLayout;->getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v6

    .line 779
    .local v6, "popupContentSize":J
    invoke-direct {v2}, Landroidx/compose/ui/window/PopupLayout;->getVisibleDisplayBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    .line 997
    .local v0, "it":Landroidx/compose/ui/unit/IntRect;
    const/4 v1, 0x0

    .line 779
    .local v1, "$i$a$-let-PopupLayout$updatePosition$windowSize$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v4

    .local v4, "width$iv":I
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v5

    .local v5, "height$iv":I
    const/4 v8, 0x0

    .line 1019
    .local v8, "$i$f$IntSize":I
    move v9, v5

    .local v9, "val2$iv$iv":I
    move v10, v4

    .local v10, "val1$iv$iv":I
    const/4 v11, 0x0

    .line 1020
    .local v11, "$i$f$packInts":I
    int-to-long v12, v10

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    move/from16 v16, v14

    int-to-long v14, v9

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    or-long v9, v12, v14

    .line 1019
    .end local v9    # "val2$iv$iv":I
    .end local v10    # "val1$iv$iv":I
    .end local v11    # "$i$f$packInts":I
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v4

    .line 779
    .end local v4    # "width$iv":I
    .end local v5    # "height$iv":I
    .end local v8    # "$i$f$IntSize":I
    nop

    .line 778
    .end local v0    # "it":Landroidx/compose/ui/unit/IntRect;
    .end local v1    # "$i$a$-let-PopupLayout$updatePosition$windowSize$1":I
    nop

    .line 786
    .local v4, "windowSize":J
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v1, "popupPosition":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v8

    iput-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 787
    iget-object v8, v2, Landroidx/compose/ui/window/PopupLayout;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v9, Landroidx/compose/ui/window/PopupLayout;->onCommitAffectingPopupPosition:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/ui/window/PopupLayout$updatePosition$1;

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/window/PopupLayout$updatePosition$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/IntRect;JJ)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v2, v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 797
    iget-object v0, v2, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 798
    iget-object v0, v2, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 800
    iget-object v0, v2, Landroidx/compose/ui/window/PopupLayout;->properties:Landroidx/compose/ui/window/PopupProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupProperties;->getExcludeFromSystemGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, v2, Landroidx/compose/ui/window/PopupLayout;->popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

    move-object v8, v2

    check-cast v8, Landroid/view/View;

    move-wide v9, v4

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 1021
    .local v11, "$i$f$getWidth-impl":I
    move-wide v12, v9

    .local v12, "value$iv$iv":J
    const/4 v14, 0x0

    .line 1022
    .local v14, "$i$f$unpackInt1":I
    move-object v15, v3

    move-wide/from16 v19, v4

    .end local v3    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .end local v4    # "windowSize":J
    .local v15, "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .local v19, "windowSize":J
    shr-long v3, v12, v16

    long-to-int v3, v3

    .line 1021
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackInt1":I
    nop

    .line 803
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v11    # "$i$f$getWidth-impl":I
    move-wide/from16 v4, v19

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v9, 0x0

    .line 1023
    .local v9, "$i$f$getHeight-impl":I
    move-wide v10, v4

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 1024
    .local v12, "$i$f$unpackInt2":I
    and-long v13, v10, v17

    long-to-int v10, v13

    .line 1023
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackInt2":I
    nop

    .line 803
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v9    # "$i$f$getHeight-impl":I
    invoke-interface {v0, v8, v3, v10}, Landroidx/compose/ui/window/PopupLayoutHelper;->setGestureExclusionRects(Landroid/view/View;II)V

    goto :goto_0

    .line 800
    .end local v15    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .end local v19    # "windowSize":J
    .restart local v3    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .local v4, "windowSize":J
    :cond_1
    move-object v15, v3

    move-wide/from16 v19, v4

    .line 806
    .end local v3    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .end local v4    # "windowSize":J
    .restart local v15    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .restart local v19    # "windowSize":J
    :goto_0
    iget-object v0, v2, Landroidx/compose/ui/window/PopupLayout;->popupLayoutHelper:Landroidx/compose/ui/window/PopupLayoutHelper;

    iget-object v3, v2, Landroidx/compose/ui/window/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    iget-object v5, v2, Landroidx/compose/ui/window/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v3, v4, v5}, Landroidx/compose/ui/window/PopupLayoutHelper;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    return-void

    .line 776
    .end local v1    # "popupPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "popupContentSize":J
    .end local v15    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .end local v19    # "windowSize":J
    .restart local v3    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    :cond_2
    return-void
.end method
