.class public abstract Landroidx/compose/foundation/AbstractClickableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Clickable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/TraversableNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;,
        Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/AbstractClickableNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LongObjectMap.kt\nandroidx/collection/LongObjectMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 7 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 8 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n*L\n1#1,1884:1\n1#2:1885\n397#3,3:1886\n354#3,6:1889\n364#3,3:1896\n367#3,9:1900\n400#3:1909\n397#3,3:1910\n354#3,6:1913\n364#3,3:1920\n367#3,9:1924\n400#3:1933\n1399#4:1895\n1270#4:1899\n1399#4:1919\n1270#4:1923\n159#5:1934\n30#6:1935\n53#7,3:1936\n97#8,4:1939\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/AbstractClickableNode\n*L\n1439#1:1886,3\n1439#1:1889,6\n1439#1:1896,3\n1439#1:1900,9\n1439#1:1909\n1457#1:1910,3\n1457#1:1913,6\n1457#1:1920,3\n1457#1:1924,9\n1457#1:1933\n1439#1:1895\n1439#1:1899\n1457#1:1919\n1457#1:1923\n1500#1:1934\n1500#1:1935\n1500#1:1936,3\n1398#1:1939,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008!\u0018\u0000 x2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008:\u0002wxBM\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u00104\u001a\u00020\u000eH\u0002J\n\u00107\u001a\u0004\u0018\u00010$H&J\u000c\u00108\u001a\u00020\u0016*\u000209H\u0016JS\u0010:\u001a\u00020\u00162\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0004\u00a2\u0006\u0002\u0008;J\u0018\u0010<\u001a\u00020\u00162\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0016J\u0008\u0010A\u001a\u00020\u0016H\u0016J\u0006\u0010B\u001a\u00020\u0016J\u0008\u0010C\u001a\u00020\u0016H\u0016J\u0006\u0010D\u001a\u00020\u0016J\u0008\u0010E\u001a\u00020\u0016H\u0004J\u0010\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020\u000eH\u0002J\u0008\u0010H\u001a\u00020\u0016H\u0002J\u0008\u0010I\u001a\u00020\u0016H\u0002J\'\u0010J\u001a\u00020\u00162\u0006\u0010K\u001a\u00020L2\u0006\u0010?\u001a\u00020@2\u0006\u0010M\u001a\u00020NH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u0008\u0010Q\u001a\u00020\u0016H\u0016J\u0015\u0010R\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020S\u00a2\u0006\u0004\u0008T\u0010UJ\u0017\u0010V\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020SH$\u00a2\u0006\u0004\u0008W\u0010UJ\u0017\u0010X\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020SH$\u00a2\u0006\u0004\u0008Y\u0010UJ\u0008\u0010Z\u001a\u00020\u0016H\u0014J\u0015\u0010[\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020S\u00a2\u0006\u0004\u0008\\\u0010UJ\n\u0010_\u001a\u00020\u0016*\u000209J\u000f\u0010`\u001a\u0004\u0018\u00010\u0016H\u0004\u00a2\u0006\u0002\u0010aJ\u001f\u0010d\u001a\u00020\u00162\u0006\u0010e\u001a\u00020.2\u0006\u0010f\u001a\u00020\u000eH\u0004\u00a2\u0006\u0004\u0008g\u0010hJ\u001f\u0010i\u001a\u00020\u00162\u0006\u0010e\u001a\u00020.2\u0006\u0010f\u001a\u00020\u000eH\u0004\u00a2\u0006\u0004\u0008j\u0010hJ\u0010\u0010k\u001a\u00020\u00162\u0006\u0010f\u001a\u00020\u000eH\u0004J\u001c\u0010l\u001a\u00020\u0016*\u00020m2\u0006\u0010e\u001a\u00020.H\u0084@\u00a2\u0006\u0004\u0008n\u0010oJ\u0008\u0010p\u001a\u00020\u000eH\u0002J\u0008\u0010q\u001a\u00020\u0016H\u0002J\u0008\u0010r\u001a\u00020\u0016H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000e@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR*\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u000eX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020(0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010/R\u0010\u00100\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010]\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010\u001bR\u0010\u0010b\u001a\u0004\u0018\u00010cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010s\u001a\u00020tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010v\u00a8\u0006y"
    }
    d2 = {
        "Landroidx/compose/foundation/AbstractClickableNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/input/key/KeyInputModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/node/TraversableNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "indicationNodeFactory",
        "Landroidx/compose/foundation/IndicationNodeFactory;",
        "useLocalIndication",
        "",
        "enabled",
        "onClickLabel",
        "",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "onClick",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "value",
        "getEnabled",
        "()Z",
        "getOnClick",
        "()Lkotlin/jvm/functions/Function0;",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "focusableNode",
        "Landroidx/compose/foundation/FocusableNode;",
        "localIndicationNodeFactory",
        "pointerInputNode",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;",
        "indicationNode",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "pressInteraction",
        "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "hoverInteraction",
        "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
        "currentKeyPressInteractions",
        "Landroidx/collection/MutableLongObjectMap;",
        "centerOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "J",
        "indirectPointerPressInteraction",
        "indirectPointerEventPressPosition",
        "userProvidedInteractionSource",
        "lazilyCreateIndication",
        "shouldLazilyCreateIndication",
        "indirectPointerClickDetector",
        "Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;",
        "createPointerInputNodeIfNeeded",
        "applyAdditionalSemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "updateCommon",
        "updateCommon-O2vRcR0",
        "onIndirectPointerEvent",
        "event",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "onCancelIndirectPointerInput",
        "onAttach",
        "onObservedReadsChanged",
        "onDetach",
        "disposeInteractions",
        "onFocusChange",
        "isFocused",
        "recreateIndicationIfNeeded",
        "initializeIndicationAndInteractionSourceIfNeeded",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "onCancelPointerInput",
        "onKeyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "onKeyEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "onClickKeyDownEvent",
        "onClickKeyDownEvent-ZmokQxo",
        "onClickKeyUpEvent",
        "onClickKeyUpEvent-ZmokQxo",
        "onCancelKeyInput",
        "onPreKeyEvent",
        "onPreKeyEvent-ZmokQxo",
        "shouldMergeDescendantSemantics",
        "getShouldMergeDescendantSemantics",
        "applySemantics",
        "resetPointerInputHandler",
        "()Lkotlin/Unit;",
        "delayJob",
        "Lkotlinx/coroutines/Job;",
        "handlePressInteractionStart",
        "offset",
        "indirectPointer",
        "handlePressInteractionStart-3MmeM6k",
        "(JZ)V",
        "handlePressInteractionRelease",
        "handlePressInteractionRelease-3MmeM6k",
        "handlePressInteractionCancel",
        "handlePressInteraction",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "handlePressInteraction-d-4ec7I",
        "(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "delayPressInteraction",
        "emitHoverEnter",
        "emitHoverExit",
        "traverseKey",
        "",
        "getTraverseKey",
        "()Ljava/lang/Object;",
        "IndirectPointerClickDetector",
        "TraverseKey",
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

.field public static final TraverseKey:Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;


# instance fields
.field private centerOffset:J

.field private final currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableLongObjectMap<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field private delayJob:Lkotlinx/coroutines/Job;

.field private enabled:Z

.field private final focusableNode:Landroidx/compose/foundation/FocusableNode;

.field private hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

.field private indicationNode:Landroidx/compose/ui/node/DelegatableNode;

.field private indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

.field private indirectPointerClickDetector:Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;

.field private indirectPointerEventPressPosition:Landroidx/compose/ui/geometry/Offset;

.field private indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private lazilyCreateIndication:Z

.field private localIndicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

.field private onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onClickLabel:Ljava/lang/String;

.field private pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

.field private role:Landroidx/compose/ui/semantics/Role;

.field private final shouldAutoInvalidate:Z

.field private final traverseKey:Ljava/lang/Object;

.field private useLocalIndication:Z

.field private userProvidedInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public static synthetic $r8$lambda$TLuHyIGlRCsgukITQ5Vb9Ul5ad0(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionCancel$lambda$0$0$0(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/AbstractClickableNode;->TraverseKey:Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/AbstractClickableNode;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "indicationNodeFactory"    # Landroidx/compose/foundation/IndicationNodeFactory;
    .param p3, "useLocalIndication"    # Z
    .param p4, "enabled"    # Z
    .param p5, "onClickLabel"    # Ljava/lang/String;
    .param p6, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p7, "onClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/IndicationNodeFactory;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1244
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 1245
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1246
    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 1247
    iput-boolean p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->useLocalIndication:Z

    .line 1249
    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClickLabel:Ljava/lang/String;

    .line 1250
    iput-object p6, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    .line 1261
    iput-boolean p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    .line 1264
    iput-object p7, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    .line 1270
    new-instance v0, Landroidx/compose/foundation/FocusableNode;

    .line 1271
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1272
    sget-object v2, Landroidx/compose/ui/focus/Focusability;->Companion:Landroidx/compose/ui/focus/Focusability$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/Focusability$Companion;->getSystemDefined-LCbbffg()I

    move-result v2

    .line 1273
    new-instance v3, Landroidx/compose/foundation/AbstractClickableNode$focusableNode$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/AbstractClickableNode$focusableNode$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1270
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/FocusableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->focusableNode:Landroidx/compose/foundation/FocusableNode;

    .line 1283
    invoke-static {}, Landroidx/collection/LongObjectMapKt;->mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    .line 1284
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->centerOffset:J

    .line 1291
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->userProvidedInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1293
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->shouldLazilyCreateIndication()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->lazilyCreateIndication:Z

    .line 1801
    sget-object v0, Landroidx/compose/foundation/AbstractClickableNode;->TraverseKey:Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->traverseKey:Ljava/lang/Object;

    .line 1244
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$delayPressInteraction(Landroidx/compose/foundation/AbstractClickableNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1244
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->delayPressInteraction()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$emitHoverEnter(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1244
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->emitHoverEnter()V

    return-void
.end method

.method public static final synthetic access$emitHoverExit(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1244
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->emitHoverExit()V

    return-void
.end method

.method public static final synthetic access$getInteractionSource$p(Landroidx/compose/foundation/AbstractClickableNode;)Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1244
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public static final synthetic access$getPressInteraction$p(Landroidx/compose/foundation/AbstractClickableNode;)Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1244
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object v0
.end method

.method public static final synthetic access$onFocusChange(Landroidx/compose/foundation/AbstractClickableNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;
    .param p1, "isFocused"    # Z

    .line 1244
    invoke-direct {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->onFocusChange(Z)V

    return-void
.end method

.method public static final synthetic access$setIndirectPointerPressInteraction$p(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1244
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method

.method public static final synthetic access$setPressInteraction$p(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/AbstractClickableNode;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1244
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method

.method static final applySemantics$lambda$0(Landroidx/compose/foundation/AbstractClickableNode;)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1594
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1595
    const/4 v0, 0x1

    return v0
.end method

.method private final delayPressInteraction()Z
    .locals 1

    .line 1779
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/TraversableNode;

    invoke-static {v0}, Landroidx/compose/foundation/ClickableKt;->hasScrollableContainer(Landroidx/compose/ui/node/TraversableNode;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/foundation/Clickable_androidKt;->isComposeRootInScrollableContainer(Landroidx/compose/ui/node/DelegatableNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final emitHoverEnter()V
    .locals 9

    .line 1782
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-nez v0, :cond_1

    .line 1783
    new-instance v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    invoke-direct {v0}, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;-><init>()V

    .line 1784
    .local v0, "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    .local v1, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v2, 0x0

    .line 1785
    .local v2, "$i$a$-let-AbstractClickableNode$emitHoverEnter$1":I
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/AbstractClickableNode$emitHoverEnter$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Landroidx/compose/foundation/AbstractClickableNode$emitHoverEnter$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/HoverInteraction$Enter;Lkotlin/coroutines/Continuation;)V

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1784
    .end local v1    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v2    # "$i$a$-let-AbstractClickableNode$emitHoverEnter$1":I
    nop

    .line 1787
    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1789
    .end local v0    # "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    :cond_1
    return-void
.end method

.method private final emitHoverExit()V
    .locals 12

    .line 1792
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v0, :cond_1

    .local v0, "oldValue":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    const/4 v1, 0x0

    .line 1793
    .local v1, "$i$a$-let-AbstractClickableNode$emitHoverExit$1":I
    new-instance v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 1794
    .local v2, "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .local v3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v5, 0x0

    .line 1795
    .local v5, "$i$a$-let-AbstractClickableNode$emitHoverExit$1$1":I
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$emitHoverExit$1$1$1;

    invoke-direct {v7, v3, v2, v4}, Landroidx/compose/foundation/AbstractClickableNode$emitHoverExit$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/HoverInteraction$Exit;Lkotlin/coroutines/Continuation;)V

    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1794
    .end local v3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v5    # "$i$a$-let-AbstractClickableNode$emitHoverExit$1$1":I
    nop

    .line 1797
    :cond_0
    iput-object v4, p0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1798
    nop

    .line 1792
    .end local v0    # "oldValue":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    .end local v1    # "$i$a$-let-AbstractClickableNode$emitHoverExit$1":I
    .end local v2    # "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
    nop

    .line 1799
    :cond_1
    return-void
.end method

.method private static final handlePressInteractionCancel$lambda$0$0$0(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1
    .param p0, "$interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p1, "$endInteraction"    # Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    .param p2, "it"    # Ljava/lang/Throwable;

    .line 1723
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {p0, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1724
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final initializeIndicationAndInteractionSourceIfNeeded()V
    .locals 5

    .line 1481
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_0

    return-void

    .line 1483
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->useLocalIndication:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->localIndicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 1482
    :goto_0
    nop

    .line 1484
    .local v0, "indicationFactory":Landroidx/compose/foundation/IndicationNodeFactory;
    if-eqz v0, :cond_3

    move-object v1, v0

    .local v1, "factory":Landroidx/compose/foundation/IndicationNodeFactory;
    const/4 v2, 0x0

    .line 1485
    .local v2, "$i$a$-let-AbstractClickableNode$initializeIndicationAndInteractionSourceIfNeeded$1":I
    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-nez v3, :cond_2

    .line 1486
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1488
    :cond_2
    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->focusableNode:Landroidx/compose/foundation/FocusableNode;

    iget-object v4, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/FocusableNode;->update(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 1489
    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-interface {v1, v3}, Landroidx/compose/foundation/IndicationNodeFactory;->create(Landroidx/compose/foundation/interaction/InteractionSource;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v3

    .line 1490
    .local v3, "node":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/AbstractClickableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 1491
    iput-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    .line 1492
    nop

    .line 1484
    .end local v1    # "factory":Landroidx/compose/foundation/IndicationNodeFactory;
    .end local v2    # "$i$a$-let-AbstractClickableNode$initializeIndicationAndInteractionSourceIfNeeded$1":I
    .end local v3    # "node":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1493
    :cond_3
    return-void
.end method

.method private final onFocusChange(Z)V
    .locals 28
    .param p1, "isFocused"    # Z

    .line 1451
    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 1452
    invoke-direct {v0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    goto/16 :goto_5

    .line 1456
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_8

    .line 1457
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    check-cast v1, Landroidx/collection/LongObjectMap;

    .local v1, "this_$iv":Landroidx/collection/LongObjectMap;
    const/4 v3, 0x0

    .line 1910
    .local v3, "$i$f$forEachValue":I
    iget-object v4, v1, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    .line 1912
    .local v4, "v$iv":[Ljava/lang/Object;
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/collection/LongObjectMap;
    const/4 v6, 0x0

    .line 1913
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/LongObjectMap;->metadata:[J

    .line 1914
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1916
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_5

    .line 1917
    :goto_0
    aget-wide v10, v7, v9

    .line 1918
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 1919
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move/from16 v16, v3

    .end local v3    # "$i$f$forEachValue":I
    .local v16, "$i$f$forEachValue":I
    not-long v2, v12

    const/16 v17, 0x7

    shl-long v2, v2, v17

    and-long/2addr v2, v12

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v17

    .line 1918
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v17

    if-eqz v2, :cond_4

    .line 1920
    sub-int v2, v9, v8

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1921
    .local v2, "bitCount$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv":I
    :goto_1
    if-ge v12, v2, :cond_3

    .line 1922
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv$iv":J
    const/16 v17, 0x0

    .line 1923
    .local v17, "$i$f$isFull":I
    const-wide/16 v18, 0x80

    cmp-long v18, v13, v18

    if-gez v18, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    .line 1922
    .end local v13    # "value$iv$iv$iv":J
    .end local v17    # "$i$f$isFull":I
    :goto_2
    if-eqz v18, :cond_2

    .line 1924
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 1925
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v17, 0x0

    .line 1912
    .local v17, "$i$a$-forEachIndexed-LongObjectMap$forEachValue$1$iv":I
    aget-object v18, v4, v14

    move-object/from16 v15, v18

    check-cast v15, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .local v15, "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/16 v18, 0x0

    .line 1458
    .local v18, "$i$a$-forEachValue-AbstractClickableNode$onFocusChange$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v20

    move/from16 v26, v3

    new-instance v3, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$1$1;

    move-object/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    .local v27, "this_$iv":Landroidx/collection/LongObjectMap;
    invoke-direct {v3, v0, v15, v1}, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$1$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v23, v3

    check-cast v23, Lkotlin/jvm/functions/Function2;

    const/16 v24, 0x3

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v25}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1459
    nop

    .line 1912
    .end local v15    # "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v18    # "$i$a$-forEachValue-AbstractClickableNode$onFocusChange$1":I
    nop

    .line 1925
    .end local v14    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndexed-LongObjectMap$forEachValue$1$iv":I
    goto :goto_3

    .line 1922
    .end local v13    # "index$iv$iv":I
    .end local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    :cond_2
    move-object/from16 v27, v1

    move/from16 v26, v3

    .line 1927
    .end local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    :goto_3
    shr-long v10, v10, v26

    .line 1921
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v26

    move-object/from16 v1, v27

    goto :goto_1

    .end local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    :cond_3
    move-object/from16 v27, v1

    move/from16 v26, v3

    .line 1929
    .end local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v12    # "j$iv$iv":I
    .restart local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    if-ne v2, v3, :cond_7

    goto :goto_4

    .line 1918
    .end local v2    # "bitCount$iv$iv":I
    .end local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    :cond_4
    move-object/from16 v27, v1

    .line 1916
    .end local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v10    # "slot$iv$iv":J
    .restart local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    :goto_4
    if-eq v9, v8, :cond_6

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    move-object/from16 v1, v27

    goto/16 :goto_0

    .end local v16    # "$i$f$forEachValue":I
    .end local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v3    # "$i$f$forEachValue":I
    :cond_5
    move-object/from16 v27, v1

    move/from16 v16, v3

    .line 1932
    .end local v1    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v3    # "$i$f$forEachValue":I
    .end local v9    # "i$iv$iv":I
    .restart local v16    # "$i$f$forEachValue":I
    .restart local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    :cond_6
    nop

    .line 1933
    .end local v5    # "this_$iv$iv":Landroidx/collection/LongObjectMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    :cond_7
    nop

    .line 1460
    .end local v4    # "v$iv":[Ljava/lang/Object;
    .end local v16    # "$i$f$forEachValue":I
    .end local v27    # "this_$iv":Landroidx/collection/LongObjectMap;
    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v2, :cond_8

    .local v2, "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/4 v3, 0x0

    .line 1461
    .local v3, "$i$a$-let-AbstractClickableNode$onFocusChange$2":I
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v5, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$2$1;

    const/4 v15, 0x0

    invoke-direct {v5, v0, v2, v15}, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$2$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1460
    .end local v2    # "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v3    # "$i$a$-let-AbstractClickableNode$onFocusChange$2":I
    nop

    .line 1464
    :cond_8
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 1465
    const/4 v15, 0x0

    iput-object v15, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1466
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->onCancelKeyInput()V

    .line 1468
    :goto_5
    return-void
.end method

.method static final onObservedReadsChanged$lambda$0(Landroidx/compose/foundation/AbstractClickableNode;)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/foundation/AbstractClickableNode;

    .line 1397
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/Indication;

    .line 1398
    .local v0, "indication":Landroidx/compose/foundation/Indication;
    instance-of v1, v0, Landroidx/compose/foundation/IndicationNodeFactory;

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 1939
    .local v2, "$i$f$requirePrecondition":I
    if-nez v1, :cond_0

    .line 1940
    const/4 v3, 0x0

    .line 1399
    .local v3, "$i$a$-requirePrecondition-AbstractClickableNode$onObservedReadsChanged$1$1":I
    invoke-static {v0}, Landroidx/compose/foundation/ClickableKt;->access$unsupportedIndicationExceptionMessage(Landroidx/compose/foundation/Indication;)Ljava/lang/String;

    move-result-object v3

    .line 1940
    .end local v3    # "$i$a$-requirePrecondition-AbstractClickableNode$onObservedReadsChanged$1$1":I
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1942
    :cond_0
    nop

    .line 1401
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->localIndicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 1402
    .local v1, "previousFactory":Landroidx/compose/foundation/IndicationNodeFactory;
    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/IndicationNodeFactory;

    iput-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->localIndicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 1405
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->localIndicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1406
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->recreateIndicationIfNeeded()V

    .line 1408
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method private final recreateIndicationIfNeeded()V
    .locals 2

    .line 1472
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->lazilyCreateIndication:Z

    if-nez v0, :cond_2

    .line 1473
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_1

    .line 1885
    .local v0, "it":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v1, 0x0

    .line 1473
    .local v1, "$i$a$-let-AbstractClickableNode$recreateIndicationIfNeeded$1":I
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/AbstractClickableNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 1474
    .end local v0    # "it":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$i$a$-let-AbstractClickableNode$recreateIndicationIfNeeded$1":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    .line 1475
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 1477
    :cond_2
    return-void
.end method

.method private final shouldLazilyCreateIndication()Z
    .locals 1

    .line 1295
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->userProvidedInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public applyAdditionalSemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0
    .param p1, "$this$applyAdditionalSemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1305
    return-void
.end method

.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1589
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1597
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClickLabel:Ljava/lang/String;

    .line 1592
    nop

    .line 1597
    nop

    .line 1592
    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/AbstractClickableNode$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;)V

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1599
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->focusableNode:Landroidx/compose/foundation/FocusableNode;

    .line 1885
    .local v0, "$this$applySemantics_u24lambda_u241":Landroidx/compose/foundation/FocusableNode;
    const/4 v1, 0x0

    .line 1600
    .local v1, "$i$a$-with-AbstractClickableNode$applySemantics$2":I
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .end local v0    # "$this$applySemantics_u24lambda_u241":Landroidx/compose/foundation/FocusableNode;
    .end local v1    # "$i$a$-with-AbstractClickableNode$applySemantics$2":I
    goto :goto_0

    .line 1602
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 1604
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->applyAdditionalSemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 1605
    return-void
.end method

.method public abstract createPointerInputNodeIfNeeded()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
.end method

.method protected final disposeInteractions()V
    .locals 22

    .line 1426
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_a

    .local v1, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v2, 0x0

    .line 1427
    .local v2, "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    iget-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v3, :cond_0

    .local v3, "oldValue":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/4 v4, 0x0

    .line 1428
    .local v4, "$i$a$-let-AbstractClickableNode$disposeInteractions$1$1":I
    new-instance v5, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 1429
    .local v5, "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v1, v6}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1427
    .end local v3    # "oldValue":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v4    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1$1":I
    .end local v5    # "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    nop

    .line 1431
    :cond_0
    iget-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v3, :cond_1

    .restart local v3    # "oldValue":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/4 v4, 0x0

    .line 1432
    .local v4, "$i$a$-let-AbstractClickableNode$disposeInteractions$1$2":I
    new-instance v5, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 1433
    .restart local v5    # "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v1, v6}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1431
    .end local v3    # "oldValue":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v4    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1$2":I
    .end local v5    # "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    nop

    .line 1435
    :cond_1
    iget-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v3, :cond_2

    .local v3, "oldValue":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    const/4 v4, 0x0

    .line 1436
    .local v4, "$i$a$-let-AbstractClickableNode$disposeInteractions$1$3":I
    new-instance v5, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 1437
    .local v5, "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v1, v6}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1435
    .end local v3    # "oldValue":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    .end local v4    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1$3":I
    .end local v5    # "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
    nop

    .line 1439
    :cond_2
    iget-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    check-cast v3, Landroidx/collection/LongObjectMap;

    .local v3, "this_$iv":Landroidx/collection/LongObjectMap;
    const/4 v4, 0x0

    .line 1886
    .local v4, "$i$f$forEachValue":I
    iget-object v5, v3, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    .line 1888
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object v6, v3

    .local v6, "this_$iv$iv":Landroidx/collection/LongObjectMap;
    const/4 v7, 0x0

    .line 1889
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/LongObjectMap;->metadata:[J

    .line 1890
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 1892
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_7

    .line 1893
    :goto_0
    aget-wide v11, v8, v10

    .line 1894
    .local v11, "slot$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1895
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    .end local v3    # "this_$iv":Landroidx/collection/LongObjectMap;
    .local v16, "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    .local v17, "this_$iv":Landroidx/collection/LongObjectMap;
    not-long v2, v13

    const/16 v18, 0x7

    shl-long v2, v2, v18

    and-long/2addr v2, v13

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v18

    .line 1894
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v18

    if-eqz v2, :cond_6

    .line 1896
    sub-int v2, v10, v9

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1897
    .local v2, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v2, :cond_5

    .line 1898
    const-wide/16 v14, 0xff

    and-long/2addr v14, v11

    .local v14, "value$iv$iv$iv":J
    const/16 v18, 0x0

    .line 1899
    .local v18, "$i$f$isFull":I
    const-wide/16 v19, 0x80

    cmp-long v19, v14, v19

    if-gez v19, :cond_3

    const/16 v19, 0x1

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    .line 1898
    .end local v14    # "value$iv$iv$iv":J
    .end local v18    # "$i$f$isFull":I
    :goto_2
    if-eqz v19, :cond_4

    .line 1900
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 1901
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v18, 0x0

    .line 1888
    .local v18, "$i$a$-forEachIndexed-LongObjectMap$forEachValue$1$iv":I
    aget-object v19, v5, v15

    move/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .local v3, "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/16 v19, 0x0

    .line 1440
    .local v19, "$i$a$-forEachValue-AbstractClickableNode$disposeInteractions$1$4":I
    move/from16 v21, v4

    .end local v4    # "$i$f$forEachValue":I
    .local v21, "$i$f$forEachValue":I
    new-instance v4, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v4, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v1, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1441
    nop

    .line 1888
    .end local v3    # "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v19    # "$i$a$-forEachValue-AbstractClickableNode$disposeInteractions$1$4":I
    nop

    .line 1901
    .end local v15    # "index$iv":I
    .end local v18    # "$i$a$-forEachIndexed-LongObjectMap$forEachValue$1$iv":I
    goto :goto_3

    .line 1898
    .end local v14    # "index$iv$iv":I
    .end local v21    # "$i$f$forEachValue":I
    .restart local v4    # "$i$f$forEachValue":I
    :cond_4
    move/from16 v20, v3

    move/from16 v21, v4

    .line 1903
    .end local v4    # "$i$f$forEachValue":I
    .restart local v21    # "$i$f$forEachValue":I
    :goto_3
    shr-long v11, v11, v20

    .line 1897
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_1

    .end local v21    # "$i$f$forEachValue":I
    .restart local v4    # "$i$f$forEachValue":I
    :cond_5
    move/from16 v20, v3

    move/from16 v21, v4

    .line 1905
    .end local v4    # "$i$f$forEachValue":I
    .end local v13    # "j$iv$iv":I
    .restart local v21    # "$i$f$forEachValue":I
    if-ne v2, v3, :cond_9

    goto :goto_4

    .line 1894
    .end local v2    # "bitCount$iv$iv":I
    .end local v21    # "$i$f$forEachValue":I
    .restart local v4    # "$i$f$forEachValue":I
    :cond_6
    move/from16 v21, v4

    .line 1892
    .end local v4    # "$i$f$forEachValue":I
    .end local v11    # "slot$iv$iv":J
    .restart local v21    # "$i$f$forEachValue":I
    :goto_4
    if-eq v10, v9, :cond_8

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v21

    goto :goto_0

    .end local v16    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    .end local v17    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v21    # "$i$f$forEachValue":I
    .local v2, "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    .local v3, "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v4    # "$i$f$forEachValue":I
    :cond_7
    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v21, v4

    .line 1908
    .end local v2    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    .end local v3    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v4    # "$i$f$forEachValue":I
    .end local v10    # "i$iv$iv":I
    .restart local v16    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    .restart local v17    # "this_$iv":Landroidx/collection/LongObjectMap;
    .restart local v21    # "$i$f$forEachValue":I
    :cond_8
    nop

    .line 1909
    .end local v6    # "this_$iv$iv":Landroidx/collection/LongObjectMap;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_9
    nop

    .line 1442
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v17    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v21    # "$i$f$forEachValue":I
    nop

    .line 1426
    .end local v1    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v16    # "$i$a$-let-AbstractClickableNode$disposeInteractions$1":I
    nop

    .line 1443
    :cond_a
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1444
    iput-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1445
    iput-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerEventPressPosition:Landroidx/compose/ui/geometry/Offset;

    .line 1446
    iput-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1447
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 1448
    return-void
.end method

.method protected final getEnabled()Z
    .locals 1

    .line 1261
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    return v0
.end method

.method protected final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1264
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 1

    .line 1267
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->shouldAutoInvalidate:Z

    return v0
.end method

.method public final getShouldMergeDescendantSemantics()Z
    .locals 1

    .line 1586
    const/4 v0, 0x1

    return v0
.end method

.method public getTraverseKey()Ljava/lang/Object;
    .locals 1

    .line 1801
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->traverseKey:Ljava/lang/Object;

    return-object v0
.end method

.method protected final handlePressInteraction-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$this$handlePressInteraction_u2dd_u2d4ec7I"    # Landroidx/compose/foundation/gestures/PressGestureScope;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_1

    move-object v5, v0

    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v0, 0x0

    .line 1741
    .local v0, "$i$a$-let-AbstractClickableNode$handlePressInteraction$2":I
    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    const/4 v7, 0x0

    move-object v6, p0

    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "$this$handlePressInteraction_u2dd_u2d4ec7I":Landroidx/compose/foundation/gestures/PressGestureScope;
    .end local p2    # "$v$c$androidx-compose-ui-geometry-Offset$-offset$0":J
    .local v2, "$this$handlePressInteraction_u2dd_u2d4ec7I":Landroidx/compose/foundation/gestures/PressGestureScope;
    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0":J
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 1775
    :cond_0
    nop

    .end local v0    # "$i$a$-let-AbstractClickableNode$handlePressInteraction$2":I
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_0

    .line 1740
    .end local v2    # "$this$handlePressInteraction_u2dd_u2d4ec7I":Landroidx/compose/foundation/gestures/PressGestureScope;
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-offset$0":J
    .restart local p1    # "$this$handlePressInteraction_u2dd_u2d4ec7I":Landroidx/compose/foundation/gestures/PressGestureScope;
    .restart local p2    # "$v$c$androidx-compose-ui-geometry-Offset$-offset$0":J
    :cond_1
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "$this$handlePressInteraction_u2dd_u2d4ec7I":Landroidx/compose/foundation/gestures/PressGestureScope;
    .end local p2    # "$v$c$androidx-compose-ui-geometry-Offset$-offset$0":J
    .restart local v2    # "$this$handlePressInteraction_u2dd_u2d4ec7I":Landroidx/compose/foundation/gestures/PressGestureScope;
    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-offset$0":J
    :goto_0
    nop

    .line 1776
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final handlePressInteractionCancel(Z)V
    .locals 14
    .param p1, "indirectPointer"    # Z

    .line 1705
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_6

    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v1, 0x0

    .line 1706
    .local v1, "$i$a$-let-AbstractClickableNode$handlePressInteractionCancel$1":I
    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->delayJob:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-ne v2, v4, :cond_0

    move v3, v4

    :cond_0
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    .line 1709
    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->delayJob:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_4

    invoke-static {v3, v2, v4, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_2

    .line 1712
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1711
    :goto_0
    nop

    .line 1713
    .local v3, "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    if-eqz v3, :cond_4

    move-object v4, v3

    .local v4, "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/4 v5, 0x0

    .line 1714
    .local v5, "$i$a$-let-AbstractClickableNode$handlePressInteractionCancel$1$1":I
    new-instance v6, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v6, v4}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 1722
    .local v6, "endInteraction":Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    sget-object v8, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v8, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v7, v8}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/Job;

    if-eqz v7, :cond_3

    new-instance v8, Landroidx/compose/foundation/AbstractClickableNode$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v6}, Landroidx/compose/foundation/AbstractClickableNode$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;)V

    invoke-interface {v7, v8}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v2

    .line 1721
    :goto_1
    nop

    .line 1725
    .local v7, "handler":Lkotlinx/coroutines/DisposableHandle;
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    new-instance v9, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionCancel$1$1$1;

    invoke-direct {v9, v0, v6, v7, v2}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionCancel$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;Lkotlinx/coroutines/DisposableHandle;Lkotlin/coroutines/Continuation;)V

    move-object v11, v9

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1728
    nop

    .line 1713
    .end local v4    # "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v5    # "$i$a$-let-AbstractClickableNode$handlePressInteractionCancel$1$1":I
    .end local v6    # "endInteraction":Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
    .end local v7    # "handler":Lkotlinx/coroutines/DisposableHandle;
    nop

    .line 1731
    .end local v3    # "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 1732
    iput-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    goto :goto_3

    .line 1734
    :cond_5
    iput-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1736
    :goto_3
    nop

    .line 1705
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "$i$a$-let-AbstractClickableNode$handlePressInteractionCancel$1":I
    nop

    .line 1737
    :cond_6
    return-void
.end method

.method protected final handlePressInteractionRelease-3MmeM6k(JZ)V
    .locals 14
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J
    .param p3, "indirectPointer"    # Z

    .line 1651
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_5

    move-object v5, v0

    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v0, 0x0

    .line 1659
    .local v0, "$i$a$-let-AbstractClickableNode$handlePressInteractionRelease$1":I
    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->delayJob:Lkotlinx/coroutines/Job;

    .line 1660
    .local v2, "job":Lkotlinx/coroutines/Job;
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    :cond_0
    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 1666
    invoke-static {v2, v7, v3, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1667
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionRelease$1$1;

    const/4 v6, 0x0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionRelease$1$1;-><init>(Lkotlinx/coroutines/Job;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/Continuation;)V

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 1679
    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1678
    :goto_0
    nop

    .line 1680
    .local v1, "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    if-eqz v1, :cond_3

    move-object v3, v1

    .local v3, "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/4 v4, 0x0

    .line 1681
    .local v4, "$i$a$-let-AbstractClickableNode$handlePressInteractionRelease$1$2":I
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    new-instance v6, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionRelease$1$2$1;

    invoke-direct {v6, v3, v5, v7}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionRelease$1$2$1;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/Continuation;)V

    move-object v11, v6

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1687
    nop

    .line 1680
    .end local v3    # "it":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .end local v4    # "$i$a$-let-AbstractClickableNode$handlePressInteractionRelease$1$2":I
    nop

    .line 1690
    .end local v1    # "interaction":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 1691
    iput-object v7, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    goto :goto_2

    .line 1693
    :cond_4
    iput-object v7, p0, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1695
    :goto_2
    nop

    .line 1651
    .end local v0    # "$i$a$-let-AbstractClickableNode$handlePressInteractionRelease$1":I
    .end local v2    # "job":Lkotlinx/coroutines/Job;
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    nop

    .line 1696
    :cond_5
    return-void
.end method

.method protected final handlePressInteractionStart-3MmeM6k(JZ)V
    .locals 11
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J
    .param p3, "indirectPointer"    # Z

    .line 1619
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_2

    move-object v2, v0

    .local v2, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v0, 0x0

    .line 1620
    .local v0, "$i$a$-let-AbstractClickableNode$handlePressInteractionStart$1":I
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, v1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    .local v3, "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->delayPressInteraction()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1622
    nop

    .line 1623
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionStart$1$1;

    const/4 v6, 0x0

    move-object v5, p0

    move v4, p3

    .end local p3    # "indirectPointer":Z
    .local v4, "indirectPointer":Z
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionStart$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;ZLandroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    move-object p3, v5

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v7

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 1622
    iput-object v1, p3, Landroidx/compose/foundation/AbstractClickableNode;->delayJob:Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 1633
    .end local v4    # "indirectPointer":Z
    .restart local p3    # "indirectPointer":Z
    :cond_0
    move v4, p3

    move-object p3, p0

    .end local p3    # "indirectPointer":Z
    .restart local v4    # "indirectPointer":Z
    if-eqz v4, :cond_1

    .line 1634
    iput-object v3, p3, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    goto :goto_0

    .line 1636
    :cond_1
    iput-object v3, p3, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1638
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v6, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionStart$1$2;

    invoke-direct {v6, v2, v3, v1}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteractionStart$1$2;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v8, v6

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1639
    :goto_1
    nop

    .end local v0    # "$i$a$-let-AbstractClickableNode$handlePressInteractionStart$1":I
    .end local v2    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v3    # "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    goto :goto_2

    .line 1619
    .end local v4    # "indirectPointer":Z
    .restart local p3    # "indirectPointer":Z
    :cond_2
    move v4, p3

    move-object p3, p0

    .end local p3    # "indirectPointer":Z
    .restart local v4    # "indirectPointer":Z
    :goto_2
    nop

    .line 1641
    return-void
.end method

.method public final onAttach()V
    .locals 1

    .line 1385
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->onObservedReadsChanged()V

    .line 1386
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->lazilyCreateIndication:Z

    if-nez v0, :cond_0

    .line 1387
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 1389
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->focusableNode:Landroidx/compose/foundation/FocusableNode;

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/AbstractClickableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 1392
    :cond_1
    return-void
.end method

.method public onCancelIndirectPointerInput()V
    .locals 1

    .line 1381
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerClickDetector:Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;->resetDetector()V

    .line 1382
    :cond_0
    return-void
.end method

.method protected onCancelKeyInput()V
    .locals 0

    .line 1581
    return-void
.end method

.method public onCancelPointerInput()V
    .locals 6

    .line 1521
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_1

    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v1, 0x0

    .line 1522
    .local v1, "$i$a$-let-AbstractClickableNode$onCancelPointerInput$1":I
    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v2, :cond_0

    .local v2, "oldValue":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    const/4 v3, 0x0

    .line 1523
    .local v3, "$i$a$-let-AbstractClickableNode$onCancelPointerInput$1$1":I
    new-instance v4, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    invoke-direct {v4, v2}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 1524
    .local v4, "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v0, v5}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1522
    .end local v2    # "oldValue":Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    .end local v3    # "$i$a$-let-AbstractClickableNode$onCancelPointerInput$1$1":I
    .end local v4    # "interaction":Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
    nop

    .line 1525
    :cond_0
    nop

    .line 1521
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "$i$a$-let-AbstractClickableNode$onCancelPointerInput$1":I
    nop

    .line 1527
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->hoverInteraction:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1528
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onCancelPointerInput()V

    .line 1529
    :cond_2
    return-void
.end method

.method protected abstract onClickKeyDownEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method protected abstract onClickKeyUpEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method public final onDetach()V
    .locals 3

    .line 1413
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractions()V

    .line 1417
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->userProvidedInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1418
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1421
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_1

    .line 1885
    .local v0, "it":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v2, 0x0

    .line 1421
    .local v2, "$i$a$-let-AbstractClickableNode$onDetach$1":I
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/AbstractClickableNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 1422
    .end local v0    # "it":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$i$a$-let-AbstractClickableNode$onDetach$1":I
    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    .line 1423
    return-void
.end method

.method public onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 2
    .param p1, "event"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1371
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 1372
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v0, :cond_1

    .line 1373
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerClickDetector:Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;

    if-nez v0, :cond_0

    .line 1374
    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;-><init>(Landroidx/compose/foundation/AbstractClickableNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerClickDetector:Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;

    .line 1376
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerClickDetector:Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/foundation/AbstractClickableNode$IndirectPointerClickDetector;->processRawEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/functions/Function0;)V

    .line 1378
    :cond_1
    return-void
.end method

.method public final onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "$v$c$androidx-compose-ui-input-key-KeyEvent$-event$0"    # Landroid/view/KeyEvent;

    .line 1535
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 1536
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    .line 1537
    .local v0, "keyCode":J
    nop

    .line 1538
    iget-boolean v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-static {p1}, Landroidx/compose/foundation/ClickableKt;->access$isPress-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1541
    const/4 v2, 0x0

    .line 1542
    .local v2, "wasInteractionHandled":Z
    iget-object v6, p0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v6, v0, v1}, Landroidx/collection/MutableLongObjectMap;->containsKey(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1543
    new-instance v6, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-wide v7, p0, Landroidx/compose/foundation/AbstractClickableNode;->centerOffset:J

    invoke-direct {v6, v7, v8, v4}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1544
    .local v6, "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    iget-object v7, p0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v7, v0, v1, v6}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .line 1547
    iget-object v7, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v7, :cond_0

    .line 1548
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    invoke-direct {v7, p0, v6, v4}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v11, v7

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1550
    :cond_0
    const/4 v2, 0x1

    .line 1552
    .end local v6    # "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->onClickKeyDownEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    .end local v2    # "wasInteractionHandled":Z
    goto :goto_0

    .line 1554
    :cond_3
    iget-boolean v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v2, :cond_7

    invoke-static {p1}, Landroidx/compose/foundation/ClickableKt;->access$isClick-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1555
    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/MutableLongObjectMap;->remove(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1556
    .local v2, "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    if-eqz v2, :cond_5

    .line 1557
    iget-object v6, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v6, :cond_4

    .line 1558
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v6, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2;

    invoke-direct {v6, p0, v2, v4}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1564
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->onClickKeyUpEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 1567
    :cond_5
    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    move v3, v5

    .end local v2    # "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    goto :goto_0

    .line 1569
    :cond_7
    move v3, v5

    .line 1537
    :cond_8
    :goto_0
    return v3
.end method

.method public onObservedReadsChanged()V
    .locals 2

    .line 1395
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->useLocalIndication:Z

    if-eqz v0, :cond_0

    .line 1396
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/AbstractClickableNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/AbstractClickableNode;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 1410
    :cond_0
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 19
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-bounds$0"    # J

    .line 1500
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/IntSizeKt;->getCenter-ozmzZPI(J)J

    move-result-wide v2

    .local v2, "$v$c$androidx-compose-ui-unit-IntOffset$-$this$toOffset$0$iv":J
    const/4 v4, 0x0

    .line 1934
    .local v4, "$i$f$toOffset--gyyYBs":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    int-to-float v5, v5

    .local v5, "x$iv$iv":F
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    int-to-float v6, v6

    .local v6, "y$iv$iv":F
    const/4 v7, 0x0

    .line 1935
    .local v7, "$i$f$Offset":I
    move v8, v6

    .local v8, "val2$iv$iv$iv":F
    move v9, v5

    .local v9, "val1$iv$iv$iv":F
    const/4 v10, 0x0

    .line 1936
    .local v10, "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 1937
    .local v11, "v1$iv$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 1938
    .local v13, "v2$iv$iv$iv":J
    const/16 v15, 0x20

    shl-long v15, v11, v15

    const-wide v17, 0xffffffffL

    and-long v17, v13, v17

    or-long v8, v15, v17

    .line 1935
    .end local v8    # "val2$iv$iv$iv":F
    .end local v9    # "val1$iv$iv$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv$iv":J
    .end local v13    # "v2$iv$iv$iv":J
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v5

    .line 1934
    .end local v5    # "x$iv$iv":F
    .end local v6    # "y$iv$iv":F
    .end local v7    # "$i$f$Offset":I
    nop

    .line 1500
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntOffset$-$this$toOffset$0$iv":J
    .end local v4    # "$i$f$toOffset--gyyYBs":I
    iput-wide v5, v0, Landroidx/compose/foundation/AbstractClickableNode;->centerOffset:J

    .line 1501
    invoke-direct {v0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 1502
    iget-boolean v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v2, :cond_1

    .line 1503
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v1, v2, :cond_1

    .line 1504
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v2

    .line 1505
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v2, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$1;

    invoke-direct {v2, v0, v4}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 1506
    :cond_0
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v2, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$2;

    invoke-direct {v2, v0, v4}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1510
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-nez v2, :cond_2

    .line 1511
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->createPointerInputNodeIfNeeded()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v2

    .line 1512
    .local v2, "node":Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    if-eqz v2, :cond_2

    .line 1513
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {v0, v3}, Landroidx/compose/foundation/AbstractClickableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 1516
    .end local v2    # "node":Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v2, :cond_3

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-interface {v2, v3, v1, v4, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_1

    :cond_3
    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    .line 1517
    :goto_1
    return-void
.end method

.method public final onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-input-key-KeyEvent$-event$0"    # Landroid/view/KeyEvent;

    .line 1583
    const/4 v0, 0x0

    return v0
.end method

.method protected final resetPointerInputHandler()Lkotlin/Unit;
    .locals 1

    .line 1607
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final updateCommon-O2vRcR0(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "indicationNodeFactory"    # Landroidx/compose/foundation/IndicationNodeFactory;
    .param p3, "useLocalIndication"    # Z
    .param p4, "enabled"    # Z
    .param p5, "onClickLabel"    # Ljava/lang/String;
    .param p6, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p7, "onClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/IndicationNodeFactory;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1316
    const/4 v0, 0x0

    .line 1319
    .local v0, "isIndicationNodeDirty":Z
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->userProvidedInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1320
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractions()V

    .line 1321
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->userProvidedInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1322
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1323
    const/4 v0, 0x1

    .line 1325
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1326
    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 1327
    const/4 v0, 0x1

    .line 1329
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->useLocalIndication:Z

    if-eq v1, p3, :cond_3

    .line 1330
    iput-boolean p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->useLocalIndication:Z

    .line 1331
    if-eqz p3, :cond_2

    .line 1333
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->onObservedReadsChanged()V

    .line 1335
    :cond_2
    const/4 v0, 0x1

    .line 1337
    :cond_3
    iget-boolean v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eq v1, p4, :cond_5

    .line 1338
    nop

    .line 1342
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->focusableNode:Landroidx/compose/foundation/FocusableNode;

    .line 1338
    if-eqz p4, :cond_4

    .line 1339
    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/AbstractClickableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    goto :goto_0

    .line 1342
    :cond_4
    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/AbstractClickableNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 1343
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractions()V

    .line 1345
    :goto_0
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 1346
    iput-boolean p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    .line 1348
    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClickLabel:Ljava/lang/String;

    invoke-static {v1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1349
    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClickLabel:Ljava/lang/String;

    .line 1350
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 1352
    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    invoke-static {v1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1353
    iput-object p6, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    .line 1354
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 1356
    :cond_7
    iput-object p7, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    .line 1357
    iget-boolean v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->lazilyCreateIndication:Z

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->shouldLazilyCreateIndication()Z

    move-result v2

    if-eq v1, v2, :cond_8

    .line 1358
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->shouldLazilyCreateIndication()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->lazilyCreateIndication:Z

    .line 1361
    iget-boolean v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->lazilyCreateIndication:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v1, :cond_8

    const/4 v0, 0x1

    .line 1364
    :cond_8
    if-eqz v0, :cond_9

    .line 1365
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->recreateIndicationIfNeeded()V

    .line 1367
    :cond_9
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->focusableNode:Landroidx/compose/foundation/FocusableNode;

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/FocusableNode;->update(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 1368
    return-void
.end method
