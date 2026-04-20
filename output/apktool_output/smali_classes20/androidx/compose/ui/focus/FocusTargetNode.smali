.class public final Landroidx/compose/ui/focus/FocusTargetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusTargetNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/focus/FocusTargetModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;,
        Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusTargetNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n*L\n1#1,398:1\n287#1,12:549\n287#1,12:561\n120#2:399\n124#2:473\n120#2:474\n128#2:573\n120#2:574\n252#3,5:400\n95#3:405\n96#3,8:410\n556#3,6:418\n566#3,2:425\n568#3,8:430\n576#3,9:441\n585#3,8:453\n105#3,7:461\n263#3,2:475\n95#3:477\n96#3,8:482\n265#3:490\n266#3,2:492\n556#3,12:494\n568#3,8:509\n576#3,9:520\n585#3,8:532\n269#3:540\n105#3,7:541\n270#3:548\n263#3,2:575\n95#3:577\n96#3,8:582\n265#3:590\n266#3,2:592\n556#3,12:594\n568#3,8:609\n576#3,9:620\n585#3,8:632\n269#3:640\n105#3,7:641\n270#3:648\n57#4,4:406\n57#4,4:478\n57#4,4:578\n247#5:424\n247#5:491\n247#5:591\n240#6,3:427\n243#6,3:450\n240#6,3:506\n243#6,3:529\n240#6,3:606\n243#6,3:629\n1107#7:438\n1085#7,2:439\n1107#7:517\n1085#7,2:518\n1107#7:617\n1085#7,2:618\n27#8,5:468\n*S KotlinDebug\n*F\n+ 1 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n*L\n317#1:549,12\n341#1:561,12\n86#1:399\n247#1:473\n247#1:474\n370#1:573\n370#1:574\n86#1:400,5\n86#1:405\n86#1:410,8\n86#1:418,6\n86#1:425,2\n86#1:430,8\n86#1:441,9\n86#1:453,8\n86#1:461,7\n247#1:475,2\n247#1:477\n247#1:482,8\n247#1:490\n247#1:492,2\n247#1:494,12\n247#1:509,8\n247#1:520,9\n247#1:532,8\n247#1:540\n247#1:541,7\n247#1:548\n370#1:575,2\n370#1:577\n370#1:582,8\n370#1:590\n370#1:592,2\n370#1:594,12\n370#1:609,8\n370#1:620,9\n370#1:632,8\n370#1:640\n370#1:641,7\n370#1:648\n86#1:406,4\n247#1:478,4\n370#1:578,4\n86#1:424\n247#1:491\n370#1:591\n86#1:427,3\n86#1:450,3\n247#1:506,3\n247#1:529,3\n370#1:606,3\n370#1:629,3\n86#1:438\n86#1:439,2\n247#1:517\n247#1:518,2\n370#1:617\n370#1:618,2\n104#1:468,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001VBo\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012:\u0008\u0002\u0010\u000b\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000c\u0012\u0016\u0008\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010!\u001a\u00020\nH\u0017J\u0017\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010&\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008\'\u0010%J\u0008\u00106\u001a\u00020\u0012H\u0016J\u0008\u00107\u001a\u00020\u0012H\u0016J\u0008\u00108\u001a\u00020\u0012H\u0016J\u0010\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u00020;H\u0016J\r\u0010<\u001a\u00020=H\u0000\u00a2\u0006\u0002\u0008>J\u0019\u0010?\u001a\u00020@2\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010;H\u0000\u00a2\u0006\u0002\u0008BJK\u0010C\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020\u00120\u00142\u001d\u0010F\u001a\u0019\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u00120\u000c\u00a2\u0006\u0002\u0008HH\u0082\u0008\u00a2\u0006\u0004\u0008I\u0010JJ,\u0010K\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\u0008\u00a2\u0006\u0004\u0008L\u0010MJ,\u0010N\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\u0008\u00a2\u0006\u0004\u0008O\u0010MJ\r\u0010P\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008QJ\u001d\u0010R\u001a\u00020\u00122\u0006\u0010S\u001a\u00020\r2\u0006\u0010T\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008UR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0017R@\u0010\u000b\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u0014\u0010\u001e\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R&\u0010\u0007\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0008@VX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010-\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010.\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010*\"\u0004\u00081\u0010,R\u0013\u00102\u001a\u0004\u0018\u0001038F\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u00a8\u0006W"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/LayoutAwareModifierNode;",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "focusability",
        "Landroidx/compose/ui/focus/Focusability;",
        "isInteropViewHost",
        "",
        "onFocusChange",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lkotlin/ParameterName;",
        "name",
        "previous",
        "current",
        "",
        "onDispatchEventsCompleted",
        "Lkotlin/Function1;",
        "<init>",
        "(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "()Z",
        "isProcessingCustomExit",
        "isProcessingCustomEnter",
        "committedFocusState",
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "focusState",
        "getFocusState",
        "()Landroidx/compose/ui/focus/FocusStateImpl;",
        "requestFocus",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "requestFocus-3ESFkO8",
        "(I)Z",
        "assignFocus",
        "assignFocus-3ESFkO8",
        "value",
        "getFocusability-LCbbffg",
        "()I",
        "setFocusability-josRg5g",
        "(I)V",
        "I",
        "previouslyFocusedChildHash",
        "",
        "getPreviouslyFocusedChildHash",
        "setPreviouslyFocusedChildHash",
        "beyondBoundsLayoutParent",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "getBeyondBoundsLayoutParent",
        "()Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "onObservedReadsChanged",
        "onReset",
        "onDetach",
        "onPlaced",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "fetchFocusProperties",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "fetchFocusProperties$ui",
        "fetchFocusRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "relativeCoordinates",
        "fetchFocusRect$ui",
        "fetchCustomEnterOrExit",
        "block",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "enterOrExit",
        "Landroidx/compose/ui/focus/FocusEnterExitScope;",
        "Lkotlin/ExtensionFunctionType;",
        "fetchCustomEnterOrExit-ULY8qGw",
        "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "fetchCustomEnter",
        "fetchCustomEnter-aToIllA$ui",
        "(ILkotlin/jvm/functions/Function1;)V",
        "fetchCustomExit",
        "fetchCustomExit-aToIllA$ui",
        "invalidateFocus",
        "invalidateFocus$ui",
        "dispatchFocusCallbacks",
        "previousState",
        "newState",
        "dispatchFocusCallbacks$ui",
        "FocusTargetElement",
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


# instance fields
.field private committedFocusState:Landroidx/compose/ui/focus/FocusStateImpl;

.field private focusability:I

.field private final isInteropViewHost:Z

.field private isProcessingCustomEnter:Z

.field private isProcessingCustomExit:Z

.field private final onDispatchEventsCompleted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onFocusChange:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/focus/FocusState;",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private previouslyFocusedChildHash:I

.field private final shouldAutoInvalidate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/focus/FocusTargetNode;->$stable:I

    return-void
.end method

.method private constructor <init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "focusability"    # I
    .param p2, "isInteropViewHost"    # Z
    .param p3, "onFocusChange"    # Lkotlin/jvm/functions/Function2;
    .param p4, "onDispatchEventsCompleted"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/focus/FocusState;",
            "-",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 57
    iput-boolean p2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    .line 58
    iput-object p3, p0, Landroidx/compose/ui/focus/FocusTargetNode;->onFocusChange:Lkotlin/jvm/functions/Function2;

    .line 59
    iput-object p4, p0, Landroidx/compose/ui/focus/FocusTargetNode;->onDispatchEventsCompleted:Lkotlin/jvm/functions/Function1;

    .line 129
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    .line 55
    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 55
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 56
    sget-object p1, Landroidx/compose/ui/focus/Focusability;->Companion:Landroidx/compose/ui/focus/Focusability$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/Focusability$Companion;->getAlways-LCbbffg()I

    move-result p1

    move v1, p1

    goto :goto_0

    .line 55
    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 57
    const/4 p2, 0x0

    move v2, p2

    goto :goto_1

    .line 55
    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 p1, p5, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 58
    move-object v3, p2

    goto :goto_2

    .line 55
    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    .line 59
    move-object v4, p2

    goto :goto_3

    .line 55
    :cond_3
    move-object v4, p4

    :goto_3
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$assignFocus-3ESFkO8(Landroidx/compose/ui/focus/FocusTargetNode;I)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 55
    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;->assignFocus-3ESFkO8(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 55
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return v0
.end method

.method public static final synthetic access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 55
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return v0
.end method

.method public static final synthetic access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "<set-?>"    # Z

    .line 55
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return-void
.end method

.method public static final synthetic access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "<set-?>"    # Z

    .line 55
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-void
.end method

.method private final assignFocus-3ESFkO8(I)Z
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 121
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/CustomDestinationResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final fetchCustomEnterOrExit-ULY8qGw(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "enterOrExit"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/focus/FocusProperties;",
            "-",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    .local v0, "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v1

    .line 288
    .local v1, "focusProperties":Landroidx/compose/ui/focus/FocusProperties;
    new-instance v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 289
    .local v2, "scope":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v3

    .line 290
    .local v3, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v4

    .line 291
    .local v4, "activeNodeBefore":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-interface {p3, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v5

    .line 293
    .local v5, "activeNodeAfter":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v2}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v6

    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 295
    :cond_0
    if-eq v4, v5, :cond_1

    if-eqz v5, :cond_1

    .line 296
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v6

    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic fetchFocusRect$ui$default(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/layout/LayoutCoordinates;ILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 263
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusRect$ui(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V
    .locals 36
    .param p1, "previousState"    # Landroidx/compose/ui/focus/FocusState;
    .param p2, "newState"    # Landroidx/compose/ui/focus/FocusState;

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    .line 368
    .local v2, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v2}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    .line 369
    .local v3, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-static/range {p1 .. p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroidx/compose/ui/focus/FocusTargetNode;->onFocusChange:Lkotlin/jvm/functions/Function2;

    if-eqz v4, :cond_0

    move-object/from16 v5, p1

    invoke-interface {v4, v5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    .line 370
    :goto_0
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v6, 0x0

    .line 573
    .local v6, "$i$f$getFocusEvent-OLwlOKw":I
    const/16 v7, 0x1000

    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 370
    .end local v6    # "$i$f$getFocusEvent-OLwlOKw":I
    const/4 v7, 0x0

    .line 574
    .local v7, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v8, 0x400

    invoke-static {v8}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 370
    .end local v7    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v4, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v7, "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    const/4 v8, 0x0

    .line 575
    .local v8, "$i$f$visitSelfAndAncestors-5BbP62I":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 576
    .local v9, "self$iv":Landroidx/compose/ui/Modifier$Node;
    or-int v10, v6, v7

    .local v10, "mask$iv$iv":I
    const/4 v11, 0x1

    .local v11, "includeSelf$iv$iv":Z
    move-object v12, v4

    .local v12, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v13, 0x0

    .line 577
    .local v13, "$i$f$visitAncestors":I
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v14

    .local v14, "value$iv$iv$iv":Z
    const/4 v15, 0x0

    .line 578
    .local v15, "$i$f$checkPrecondition":I
    if-nez v14, :cond_1

    .line 579
    const/16 v16, 0x0

    .line 577
    .local v16, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 579
    .end local v16    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v16, "visitAncestors called on an unattached node"

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 581
    :cond_1
    nop

    .line 582
    .end local v14    # "value$iv$iv$iv":Z
    .end local v15    # "$i$f$checkPrecondition":I
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .line 583
    .local v14, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v15

    .line 584
    .local v15, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v15, :cond_19

    .line 585
    invoke-virtual {v15}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 586
    .local v16, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v17

    and-int v17, v17, v10

    if-eqz v17, :cond_17

    .line 587
    :goto_2
    if-eqz v14, :cond_16

    .line 588
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v17

    and-int v17, v17, v10

    if-eqz v17, :cond_15

    .line 589
    move-object/from16 v17, v14

    .local v17, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 590
    .local v18, "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1$iv":I
    move-object/from16 v19, v2

    .end local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .local v19, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    move-object/from16 v2, v17

    .end local v17    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "it$iv":Landroidx/compose/ui/Modifier$Node;
    if-eq v2, v9, :cond_4

    move/from16 v17, v7

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v21, v2

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 591
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v17

    if-eqz v23, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    .line 590
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-nez v17, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v33, v3

    goto/16 :goto_13

    .line 592
    :cond_4
    :goto_4
    move/from16 v17, v6

    .restart local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v21, v2

    .restart local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 591
    .restart local v22    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v17

    if-eqz v23, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    .line 592
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v17, :cond_14

    .line 593
    move/from16 v17, v6

    .restart local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v21, v2

    .local v21, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 594
    .local v22, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v23, 0x0

    .line 595
    .local v23, "stack$iv$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .local v24, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v24, v21

    move-object/from16 v35, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v35

    .line 596
    .local v2, "node$iv$iv":Ljava/lang/Object;
    .local v24, "it$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_13

    .line 597
    move-object/from16 v25, v4

    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v25, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v4, v2, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v4, :cond_7

    .line 598
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .local v4, "it":Landroidx/compose/ui/focus/FocusEventModifierNode;
    const/16 v26, 0x0

    .line 371
    .local v26, "$i$a$-visitSelfAndAncestors-5BbP62I-FocusTargetNode$dispatchFocusCallbacks$1":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v5

    if-eq v3, v5, :cond_6

    .line 373
    goto :goto_7

    .line 375
    :cond_6
    invoke-interface {v4, v1}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    .line 376
    nop

    .line 598
    .end local v4    # "it":Landroidx/compose/ui/focus/FocusEventModifierNode;
    .end local v26    # "$i$a$-visitSelfAndAncestors-5BbP62I-FocusTargetNode$dispatchFocusCallbacks$1":I
    :goto_7
    move-object/from16 v33, v3

    const/4 v1, 0x1

    goto/16 :goto_e

    .line 599
    :cond_7
    move/from16 v4, v17

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v5, v2

    .local v5, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 591
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v4

    if-eqz v27, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 599
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_8
    if-eqz v4, :cond_12

    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_12

    .line 604
    const/4 v4, 0x0

    .line 605
    .local v4, "count$iv$iv":I
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .local v5, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v26, 0x0

    .line 606
    .local v26, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    .line 607
    .local v27, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    if-eqz v27, :cond_10

    .line 608
    move-object/from16 v28, v27

    .local v28, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 609
    .local v29, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v30, v17

    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v31, v28

    .local v31, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 591
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v30

    if-eqz v33, :cond_9

    const/16 v30, 0x1

    goto :goto_a

    :cond_9
    const/16 v30, 0x0

    .line 609
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_a
    if-eqz v30, :cond_f

    .line 610
    add-int/lit8 v4, v4, 0x1

    .line 611
    const/4 v1, 0x1

    if-ne v4, v1, :cond_a

    .line 612
    move-object/from16 v2, v28

    move-object/from16 v33, v3

    move-object/from16 v1, v28

    goto :goto_d

    .line 616
    :cond_a
    if-nez v23, :cond_b

    const/4 v1, 0x0

    .line 617
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 618
    move/from16 v30, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v30, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v31, 0x0

    .line 619
    .local v31, "$i$f$MutableVector":I
    move-object/from16 v32, v2

    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v32, "node$iv$iv":Ljava/lang/Object;
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v33, v3

    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v33, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v34, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v34, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 617
    .end local v31    # "$i$f$MutableVector":I
    .end local v34    # "capacity$iv$iv$iv$iv":I
    goto :goto_b

    .line 616
    .end local v30    # "$i$f$mutableVectorOf":I
    .end local v32    # "node$iv$iv":Ljava/lang/Object;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_b
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    const/4 v1, 0x0

    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v32    # "node$iv$iv":Ljava/lang/Object;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object/from16 v2, v23

    :goto_b
    nop

    .line 620
    .end local v23    # "stack$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, v32

    .line 621
    .local v3, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_d

    .line 622
    if-eqz v2, :cond_c

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v32, v20

    .line 625
    :cond_d
    if-eqz v2, :cond_e

    move-object/from16 v1, v28

    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v1, v28

    .line 628
    .end local v3    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    move-object/from16 v23, v2

    move-object/from16 v2, v32

    goto :goto_d

    .line 609
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "node$iv$iv":Ljava/lang/Object;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    .local v3, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v23    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_f
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v1, v28

    .line 628
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_d
    nop

    .line 608
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 629
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    move-object/from16 v1, p2

    move-object/from16 v3, v33

    goto :goto_9

    .line 631
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_10
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    .line 632
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v26    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v27    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "node$iv$iv":Ljava/lang/Object;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v1, 0x1

    if-ne v4, v1, :cond_11

    .line 634
    move-object/from16 v5, p1

    move-object/from16 v1, p2

    move-object/from16 v4, v25

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    goto/16 :goto_6

    .line 632
    :cond_11
    move-object/from16 v2, v32

    goto :goto_e

    .line 599
    .end local v4    # "count$iv$iv":I
    .end local v32    # "node$iv$iv":Ljava/lang/Object;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_12
    move-object/from16 v33, v3

    const/4 v1, 0x1

    .line 637
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_e
    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    move-object/from16 v4, v25

    move-object/from16 v3, v33

    goto/16 :goto_6

    .line 639
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v4, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move-object/from16 v33, v3

    move-object/from16 v25, v4

    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_f

    .line 592
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v23    # "stack$iv$iv":Ljava/lang/Object;
    .end local v24    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v2, "it$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_14
    move-object/from16 v24, v2

    move-object/from16 v33, v3

    move-object/from16 v25, v4

    .line 640
    .end local v2    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_f
    nop

    .line 589
    .end local v18    # "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1$iv":I
    .end local v24    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_10

    .line 588
    .end local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v2, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_15
    move-object/from16 v19, v2

    move-object/from16 v33, v3

    move-object/from16 v25, v4

    .line 641
    .end local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_10
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v4, v25

    move-object/from16 v3, v33

    goto/16 :goto_2

    .line 587
    .end local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_16
    move-object/from16 v19, v2

    move-object/from16 v33, v3

    move-object/from16 v25, v4

    .end local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_11

    .line 586
    .end local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_17
    move-object/from16 v19, v2

    move-object/from16 v33, v3

    move-object/from16 v25, v4

    .line 644
    .end local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_11
    invoke-virtual {v15}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v15

    .line 645
    if-eqz v15, :cond_18

    invoke-virtual {v15}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_12

    :cond_18
    const/4 v1, 0x0

    :goto_12
    move-object v14, v1

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v4, v25

    move-object/from16 v3, v33

    .end local v16    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 647
    .end local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v33, v3

    move-object/from16 v25, v4

    .line 648
    .end local v2    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "mask$iv$iv":I
    .end local v11    # "includeSelf$iv$iv":Z
    .end local v12    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "$i$f$visitAncestors":I
    .end local v14    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v19    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    nop

    .line 377
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v7    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .end local v8    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v9    # "self$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_13
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusTargetNode;->onDispatchEventsCompleted:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1a

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_1a
    return-void
.end method

.method public final fetchCustomEnter-aToIllA$ui(ILkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    .local v0, "$i$f$fetchCustomEnter-aToIllA$ui":I
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 316
    nop

    .line 317
    move v1, p1

    .local v1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v3, 0x0

    .line 549
    .local v3, "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v5

    .line 550
    .local v5, "focusProperties$iv":Landroidx/compose/ui/focus/FocusProperties;
    new-instance v6, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 551
    .local v6, "scope$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v7

    .line 552
    .local v7, "focusOwner$iv":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v7}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v8

    .line 553
    .local v8, "activeNodeBefore$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/focus/FocusEnterExitScope;

    move-object v10, v5

    .local v9, "it":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .local v10, "$this$fetchCustomEnter_aToIllA_u24lambda_u240":Landroidx/compose/ui/focus/FocusProperties;
    const/4 v11, 0x0

    .line 317
    .local v11, "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomEnter$1":I
    invoke-interface {v10}, Landroidx/compose/ui/focus/FocusProperties;->getOnEnter()Lkotlin/jvm/functions/Function1;

    move-result-object v12

    invoke-interface {v12, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    nop

    .line 554
    .end local v9    # "it":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .end local v10    # "$this$fetchCustomEnter_aToIllA_u24lambda_u240":Landroidx/compose/ui/focus/FocusProperties;
    .end local v11    # "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomEnter$1":I
    invoke-interface {v7}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v9

    .line 555
    .local v9, "activeNodeAfter$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v6}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 556
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v10

    invoke-interface {p2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 557
    :cond_0
    if-eq v8, v9, :cond_1

    if-eqz v9, :cond_1

    .line 558
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v10

    invoke-interface {p2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_1
    :goto_0
    nop

    .line 319
    .end local v1    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v3    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v5    # "focusProperties$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v6    # "scope$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v7    # "focusOwner$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v8    # "activeNodeBefore$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v9    # "activeNodeAfter$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-static {p0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 320
    goto :goto_1

    .line 319
    :catchall_0
    move-exception v1

    invoke-static {p0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    throw v1

    .line 322
    :cond_2
    :goto_1
    return-void
.end method

.method public final fetchCustomExit-aToIllA$ui(ILkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 338
    .local v0, "$i$f$fetchCustomExit-aToIllA$ui":I
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 339
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 340
    nop

    .line 341
    move v1, p1

    .local v1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v3, 0x0

    .line 561
    .local v3, "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v5

    .line 562
    .local v5, "focusProperties$iv":Landroidx/compose/ui/focus/FocusProperties;
    new-instance v6, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 563
    .local v6, "scope$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v7

    .line 564
    .local v7, "focusOwner$iv":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v7}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v8

    .line 565
    .local v8, "activeNodeBefore$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/focus/FocusEnterExitScope;

    move-object v10, v5

    .local v9, "it":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .local v10, "$this$fetchCustomExit_aToIllA_u24lambda_u240":Landroidx/compose/ui/focus/FocusProperties;
    const/4 v11, 0x0

    .line 341
    .local v11, "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomExit$1":I
    invoke-interface {v10}, Landroidx/compose/ui/focus/FocusProperties;->getOnExit()Lkotlin/jvm/functions/Function1;

    move-result-object v12

    invoke-interface {v12, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    nop

    .line 566
    .end local v9    # "it":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .end local v10    # "$this$fetchCustomExit_aToIllA_u24lambda_u240":Landroidx/compose/ui/focus/FocusProperties;
    .end local v11    # "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomExit$1":I
    invoke-interface {v7}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v9

    .line 567
    .local v9, "activeNodeAfter$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v6}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 568
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v10

    invoke-interface {p2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    :cond_0
    if-eq v8, v9, :cond_1

    if-eqz v9, :cond_1

    .line 570
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v10

    invoke-interface {p2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_1
    :goto_0
    nop

    .line 343
    .end local v1    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v3    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v5    # "focusProperties$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v6    # "scope$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v7    # "focusOwner$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v8    # "activeNodeBefore$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v9    # "activeNodeAfter$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-static {p0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 344
    goto :goto_1

    .line 343
    :catchall_0
    move-exception v1

    invoke-static {p0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    throw v1

    .line 346
    :cond_2
    :goto_1
    return-void
.end method

.method public final fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;
    .locals 33

    .line 245
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    .line 246
    .local v0, "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusability-LCbbffg()I

    move-result v1

    move-object/from16 v2, p0

    check-cast v2, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {v1, v2}, Landroidx/compose/ui/focus/Focusability;->canFocus-impl$ui(ILandroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusPropertiesImpl;->setCanFocus(Z)V

    .line 247
    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x0

    .line 473
    .local v2, "$i$f$getFocusProperties-OLwlOKw":I
    const/16 v3, 0x800

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 247
    .end local v2    # "$i$f$getFocusProperties-OLwlOKw":I
    const/4 v3, 0x0

    .line 474
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 247
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    const/4 v4, 0x0

    .line 475
    .local v4, "$i$f$visitSelfAndAncestors-5BbP62I":I
    invoke-interface {v1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 476
    .local v5, "self$iv":Landroidx/compose/ui/Modifier$Node;
    or-int v6, v2, v3

    .local v6, "mask$iv$iv":I
    const/4 v7, 0x1

    .local v7, "includeSelf$iv$iv":Z
    move-object v8, v1

    .local v8, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 477
    .local v9, "$i$f$visitAncestors":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 478
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_0

    .line 479
    const/4 v12, 0x0

    .line 477
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 479
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v12, "visitAncestors called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 481
    :cond_0
    nop

    .line 482
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 483
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 484
    .local v11, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v11, :cond_17

    .line 485
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 486
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_15

    .line 487
    :goto_1
    if-eqz v10, :cond_14

    .line 488
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_13

    .line 489
    move-object v13, v10

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 490
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1$iv":I
    if-eq v13, v5, :cond_3

    move/from16 v16, v3

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v13

    .local v17, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 491
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    .line 490
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-nez v16, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v21, v0

    goto/16 :goto_11

    .line 492
    :cond_3
    :goto_3
    move/from16 v16, v2

    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v13

    .restart local v17    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 491
    .restart local v18    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 492
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v16, :cond_12

    .line 493
    move/from16 v16, v2

    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v13

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 494
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 495
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move-object/from16 v15, v20

    .line 496
    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v15, "node$iv$iv":Ljava/lang/Object;
    :goto_5
    if-eqz v15, :cond_11

    .line 497
    move-object/from16 v21, v0

    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .local v21, "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    instance-of v0, v15, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v0, :cond_5

    .line 498
    move-object v0, v15

    check-cast v0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .local v0, "it":Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
    const/16 v22, 0x0

    .line 248
    .local v22, "$i$a$-visitSelfAndAncestors-5BbP62I-FocusTargetNode$fetchFocusProperties$1":I
    move-object/from16 v23, v1

    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v23, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 249
    nop

    .line 498
    .end local v0    # "it":Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
    .end local v22    # "$i$a$-visitSelfAndAncestors-5BbP62I-FocusTargetNode$fetchFocusProperties$1":I
    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 499
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_5
    move-object/from16 v23, v1

    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v0, v16

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v15

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 491
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v0

    if-eqz v24, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 499
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v0, :cond_f

    instance-of v0, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_f

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "count$iv$iv":I
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 506
    .local v22, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 507
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    if-eqz v24, :cond_e

    .line 508
    move-object/from16 v25, v24

    .local v25, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 509
    .local v26, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v27, v16

    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v25

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 491
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v27

    if-eqz v30, :cond_7

    const/16 v27, 0x1

    goto :goto_8

    :cond_7
    const/16 v27, 0x0

    .line 509
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_8
    if-eqz v27, :cond_d

    .line 510
    add-int/lit8 v0, v0, 0x1

    .line 511
    move-object/from16 v27, v1

    const/4 v1, 0x1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_8

    .line 512
    move-object/from16 v15, v25

    move/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v2, v25

    const/4 v3, 0x0

    goto :goto_b

    .line 516
    :cond_8
    if-nez v19, :cond_9

    const/4 v1, 0x0

    .line 517
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 518
    move/from16 v28, v0

    .end local v0    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 519
    .local v29, "$i$f$MutableVector":I
    move/from16 v30, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v30, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v31, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v31, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v3

    const/4 v3, 0x0

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .local v32, "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 517
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v29    # "$i$f$MutableVector":I
    goto :goto_9

    .line 516
    .end local v28    # "count$iv$iv":I
    .end local v30    # "$i$f$mutableVectorOf":I
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .local v0, "count$iv$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_9
    move/from16 v28, v0

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v3, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v28    # "count$iv$iv":I
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    move-object/from16 v1, v19

    :goto_9
    nop

    .line 520
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v0, v15

    .line 521
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_b

    .line 522
    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_a
    const/4 v2, 0x0

    move-object v15, v2

    .line 525
    :cond_b
    if-eqz v1, :cond_c

    move-object/from16 v2, v25

    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v2, v25

    .line 528
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    move-object/from16 v19, v1

    move/from16 v0, v28

    goto :goto_b

    .line 509
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v28    # "count$iv$iv":I
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v2, v25

    const/4 v3, 0x0

    .line 528
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :goto_b
    nop

    .line 508
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 529
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move-object/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    goto :goto_7

    .line 531
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_e
    move-object/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v3, 0x0

    .line 532
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .end local v22    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 534
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_5

    .line 499
    .end local v0    # "count$iv$iv":I
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_f
    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 537
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_10
    :goto_c
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_5

    .line 539
    .end local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .local v0, "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .local v1, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_11
    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    goto :goto_d

    .line 492
    .end local v15    # "node$iv$iv":Ljava/lang/Object;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .end local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .line 540
    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :goto_d
    nop

    .line 489
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1$iv":I
    goto :goto_e

    .line 488
    .end local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_13
    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .line 541
    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :goto_e
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_1

    .line 487
    .end local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_14
    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    goto :goto_f

    .line 486
    .end local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_15
    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .line 544
    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :goto_f
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 545
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    move-object v10, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v32

    .end local v12    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 547
    .end local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .restart local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :cond_17
    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .line 548
    .end local v0    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "includeSelf$iv$iv":Z
    .end local v8    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitAncestors":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v21    # "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .restart local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    nop

    .line 250
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v5    # "self$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0$iv":I
    :goto_11
    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/ui/focus/FocusProperties;

    return-object v0
.end method

.method public final fetchFocusRect$ui(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 9
    .param p1, "relativeCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 264
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 266
    .local v0, "customRect":Landroidx/compose/ui/geometry/Rect;
    sget-object v1, Landroidx/compose/ui/focus/FocusProperties;->Companion:Landroidx/compose/ui/focus/FocusProperties$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusProperties$Companion;->getUnsetFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 267
    if-nez p1, :cond_0

    return-object v0

    .line 269
    :cond_0
    nop

    .line 270
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .end local p1    # "relativeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v2, "relativeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide v3

    .line 269
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    return-object p1

    .line 274
    .end local v2    # "relativeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local p1    # "relativeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    move-object v2, p1

    .line 276
    .end local p1    # "relativeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v2    # "relativeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    if-eqz v2, :cond_2

    .line 274
    nop

    .line 276
    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v2, p1, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 274
    if-eqz p1, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 274
    :goto_0
    return-object p1
.end method

.method public final getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 1

    .line 158
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->findNearestBeyondBoundsLayoutAncestor(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFocusState()Landroidx/compose/ui/focus/FocusState;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    return-object v0
.end method

.method public getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 34

    .line 79
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    return-object v1

    .line 80
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    .line 81
    .local v1, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    return-object v2

    .line 82
    .local v2, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_1
    if-ne v0, v2, :cond_3

    .line 83
    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusOwner;->isFocusCaptured()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    goto :goto_0

    :cond_2
    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    :goto_0
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    goto/16 :goto_f

    .line 85
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 86
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v4, 0x0

    .line 399
    .local v4, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v5, 0x400

    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 86
    .end local v4    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 400
    .local v3, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 402
    const/4 v5, 0x0

    .line 400
    .local v5, "includeSelf$iv":Z
    const/4 v6, 0x0

    .line 404
    .local v6, "$i$f$visitAncestors-Y-YKmho":I
    move v7, v5

    .local v7, "includeSelf$iv$iv":Z
    move v8, v4

    .local v8, "mask$iv$iv":I
    move-object v9, v3

    .local v9, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v10, 0x0

    .line 405
    .local v10, "$i$f$visitAncestors":I
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    .local v11, "value$iv$iv$iv":Z
    const/4 v12, 0x0

    .line 406
    .local v12, "$i$f$checkPrecondition":I
    if-nez v11, :cond_4

    .line 407
    const/4 v13, 0x0

    .line 405
    .local v13, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 407
    .end local v13    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v13, "visitAncestors called on an unattached node"

    invoke-static {v13}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 409
    :cond_4
    nop

    .line 410
    .end local v11    # "value$iv$iv$iv":Z
    .end local v12    # "$i$f$checkPrecondition":I
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 411
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    .line 412
    .local v12, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v12, :cond_17

    .line 413
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 414
    .local v13, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v14

    and-int/2addr v14, v8

    if-eqz v14, :cond_15

    .line 415
    :goto_2
    if-eqz v11, :cond_14

    .line 416
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v8

    if-eqz v14, :cond_13

    .line 417
    move-object v14, v11

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 404
    .local v15, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move/from16 v16, v4

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 418
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 419
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move-object/from16 v33, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v33

    .line 420
    .local v1, "node$iv$iv":Ljava/lang/Object;
    .local v20, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    :goto_3
    if-eqz v1, :cond_12

    .line 421
    move-object/from16 v21, v2

    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v21, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    instance-of v2, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v2, :cond_6

    .line 422
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v2, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v22, 0x0

    .line 87
    .local v22, "$i$a$-visitAncestors-Y-YKmho$default-FocusTargetNode$focusState$1":I
    if-ne v0, v2, :cond_5

    sget-object v23, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    return-object v23

    .line 88
    :cond_5
    nop

    .line 422
    .end local v2    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v22    # "$i$a$-visitAncestors-Y-YKmho$default-FocusTargetNode$focusState$1":I
    goto/16 :goto_a

    .line 423
    :cond_6
    move/from16 v2, v16

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v22, v1

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 424
    .local v23, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v2

    const/4 v0, 0x1

    if-eqz v24, :cond_7

    move v2, v0

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    .line 423
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v2, :cond_11

    instance-of v2, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_11

    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, "count$iv$iv":I
    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 427
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 428
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v24, :cond_f

    .line 429
    move-object/from16 v25, v24

    .local v25, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 430
    .local v26, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v27, v16

    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v25

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 424
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v27

    if-eqz v30, :cond_8

    move/from16 v27, v0

    goto :goto_6

    :cond_8
    const/16 v27, 0x0

    .line 430
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v27, :cond_e

    .line 431
    add-int/lit8 v2, v2, 0x1

    .line 432
    if-ne v2, v0, :cond_9

    .line 433
    move-object/from16 v1, v25

    move-object/from16 v0, v25

    goto :goto_9

    .line 437
    :cond_9
    if-nez v19, :cond_a

    const/16 v27, 0x0

    .line 438
    .local v27, "$i$f$mutableVectorOf":I
    nop

    .line 439
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 440
    .local v29, "$i$f$MutableVector":I
    move-object/from16 v30, v1

    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .local v30, "node$iv$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v31, v2

    .end local v2    # "count$iv$iv":I
    .local v31, "count$iv$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v32, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 438
    .end local v29    # "$i$f$MutableVector":I
    .end local v32    # "capacity$iv$iv$iv$iv":I
    goto :goto_7

    .line 437
    .end local v27    # "$i$f$mutableVectorOf":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .end local v31    # "count$iv$iv":I
    .restart local v1    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "count$iv$iv":I
    :cond_a
    move-object/from16 v30, v1

    move/from16 v31, v2

    const/4 v0, 0x0

    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "count$iv$iv":I
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v31    # "count$iv$iv":I
    move-object/from16 v1, v19

    :goto_7
    nop

    .line 441
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v30

    .line 442
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_c

    .line 443
    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_b
    const/16 v19, 0x0

    move-object/from16 v30, v19

    .line 446
    :cond_c
    if-eqz v1, :cond_d

    move-object/from16 v0, v25

    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v0, v25

    .line 449
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v19, v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    goto :goto_9

    .line 430
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .end local v31    # "count$iv$iv":I
    .local v1, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .restart local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v30, v1

    move-object/from16 v0, v25

    .line 449
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    nop

    .line 429
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 450
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    const/4 v0, 0x1

    goto :goto_5

    .line 452
    :cond_f
    move-object/from16 v30, v1

    .line 453
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v2, v0, :cond_10

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move-object/from16 v1, v30

    goto/16 :goto_3

    .line 453
    :cond_10
    move-object/from16 v1, v30

    .line 458
    .end local v2    # "count$iv$iv":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "node$iv$iv":Ljava/lang/Object;
    :cond_11
    :goto_a
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    goto/16 :goto_3

    .line 460
    .end local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v2, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_12
    move-object/from16 v21, v2

    .line 404
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    nop

    .line 417
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_b

    .line 416
    .end local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v1, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_13
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 461
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    goto/16 :goto_2

    .line 415
    .end local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_14
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_c

    .line 414
    .end local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_15
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 464
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    .line 465
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_d
    move-object v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    .end local v13    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 467
    .end local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_17
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 404
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v7    # "includeSelf$iv$iv":Z
    .end local v8    # "mask$iv$iv":I
    .end local v9    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "$i$f$visitAncestors":I
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_e

    .line 85
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "includeSelf$iv":Z
    .end local v6    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_18
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 90
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v2    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v20    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v21    # "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_e
    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 82
    :goto_f
    return-object v3
.end method

.method public getFocusability-LCbbffg()I
    .locals 1

    .line 129
    iget v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    return v0
.end method

.method public final getPreviouslyFocusedChildHash()I
    .locals 1

    .line 155
    iget v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->previouslyFocusedChildHash:I

    return v0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->shouldAutoInvalidate:Z

    return v0
.end method

.method public final invalidateFocus$ui()V
    .locals 3

    .line 349
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 358
    :pswitch_0
    goto :goto_1

    .line 355
    :pswitch_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 356
    .local v0, "focusProperties":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    new-instance v2, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    invoke-direct {v2, v0, p0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/focus/FocusTargetNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 357
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "focusProperties"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/focus/FocusProperties;

    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus(Z)V

    .line 364
    .end local v0    # "focusProperties":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isInteropViewHost()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    return v0
.end method

.method public onDetach()V
    .locals 5

    .line 182
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 223
    :pswitch_0
    goto :goto_0

    .line 217
    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    .line 218
    .local v0, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v4, v4, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_2

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 219
    invoke-interface {v0, v3, v3}, Landroidx/compose/ui/focus/FocusOwner;->requestOwnerFocus-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z

    .line 223
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidationForOwner()V

    .end local v0    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    goto :goto_0

    .line 188
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    .line 189
    .restart local v0    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
    nop

    .line 193
    sget-object v4, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v4

    .line 189
    invoke-interface {v0, v2, v2, v1, v4}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus-I7lrPNg(ZZZI)Z

    .line 196
    iget-boolean v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    if-eqz v1, :cond_1

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 203
    invoke-interface {v0, v3, v3}, Landroidx/compose/ui/focus/FocusOwner;->requestOwnerFocus-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z

    .line 214
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidationForOwner()V

    .line 229
    .end local v0    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    :cond_2
    :goto_0
    iput-object v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;->committedFocusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 230
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onObservedReadsChanged()V
    .locals 0

    .line 161
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui()V

    .line 162
    return-void
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 234
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isInitialFocusOnFocusableAvailable:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusOwner;->focusTargetAvailable()V

    .line 237
    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v1

    .line 171
    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v2, v1}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus-I7lrPNg(ZZZI)Z

    .line 178
    :cond_0
    return-void
.end method

.method public synthetic requestFocus()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use the version accepting FocusDirection"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.requestFocus()"
            imports = {}
        .end subannotation
    .end annotation

    .line 100
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    move-result v0

    return v0
.end method

.method public requestFocus-3ESFkO8(I)Z
    .locals 4
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 104
    const-string v0, "FocusTransactions:requestFocus"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 468
    .local v1, "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 469
    nop

    .line 470
    const/4 v2, 0x0

    .line 106
    .local v2, "$i$a$-trace-FocusTargetNode$requestFocus$1":I
    :try_start_0
    sget-boolean v3, Landroidx/compose/ui/ComposeUiFlags;->isRequestFocusOnNonFocusableFocusTargetEnabled:Z

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;->assignFocus-3ESFkO8(I)Z

    move-result v3

    goto :goto_0

    .line 110
    :cond_0
    new-instance v3, Landroidx/compose/ui/focus/FocusTargetNode$requestFocus$1$1;

    invoke-direct {v3, p1}, Landroidx/compose/ui/focus/FocusTargetNode$requestFocus$1$1;-><init>(I)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v3

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;->assignFocus-3ESFkO8(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 106
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "$i$a$-trace-FocusTargetNode$requestFocus$1":I
    :goto_0
    nop

    .line 472
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v3

    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method public setFocusability-josRg5g(I)V
    .locals 3
    .param p1, "$v$c$androidx-compose-ui-focus-Focusability$-value$0"    # I

    .line 131
    iget v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/Focusability;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    .line 133
    nop

    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 136
    iget v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/Focusability;->canFocus-impl$ui(ILandroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isOptimizedFocusEventDispatchEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0, v1, v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    .line 142
    .local v0, "previousActive":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusOwner;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 143
    if-eqz v0, :cond_1

    .line 144
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    .line 145
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v2, Landroidx/compose/ui/focus/FocusState;

    .line 143
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    goto :goto_0

    .line 149
    .end local v0    # "previousActive":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_0
    invoke-static {p0, v1, v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method public final setPreviouslyFocusedChildHash(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 155
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->previouslyFocusedChildHash:I

    return-void
.end method
