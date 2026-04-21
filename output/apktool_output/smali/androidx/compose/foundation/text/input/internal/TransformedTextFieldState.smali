.class public final Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
.super Ljava/lang/Object;
.source "TransformedTextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;,
        Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformedTextFieldState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformedTextFieldState.kt\nandroidx/compose/foundation/text/input/internal/TransformedTextFieldState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text/input/TextFieldState\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,754:1\n85#2:755\n117#2,2:756\n270#3,15:758\n270#3,15:773\n270#3,15:788\n270#3,15:803\n270#3,15:818\n276#3,9:833\n276#3,9:842\n270#3,15:851\n270#3,15:866\n270#3,15:881\n1#4:896\n351#5,11:897\n*S KotlinDebug\n*F\n+ 1 TransformedTextFieldState.kt\nandroidx/compose/foundation/text/input/internal/TransformedTextFieldState\n*L\n178#1:755\n178#1:756,2\n202#1:758,15\n209#1:773,15\n216#1:788,15\n224#1:803,15\n228#1:818,15\n249#1:833,9\n268#1:842,9\n287#1:851,15\n294#1:866,15\n323#1:881,15\n460#1:897,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 `2\u00020\u0001:\u0002_`B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010!\u001a\u00020\"2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%J\u0015\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020(\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020(\u00a2\u0006\u0004\u0008-\u0010*J\u001d\u0010.\u001a\u00020\"2\u0006\u0010/\u001a\u0002002\u0006\u0010\'\u001a\u00020(\u00a2\u0006\u0004\u00081\u00102J\u000e\u00103\u001a\u00020\"2\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u00020\"J\u0006\u00107\u001a\u00020\"J1\u00108\u001a\u00020\"2\u0006\u00104\u001a\u0002052\u0006\u00109\u001a\u00020(2\u0008\u0008\u0002\u0010:\u001a\u00020;2\u0008\u0008\u0002\u0010<\u001a\u00020=\u00a2\u0006\u0004\u0008>\u0010?J,\u0010@\u001a\u00020\"2\u0006\u00104\u001a\u0002052\u0008\u0008\u0002\u0010A\u001a\u00020=2\u0008\u0008\u0002\u0010:\u001a\u00020;2\u0008\u0008\u0002\u0010<\u001a\u00020=J\u0006\u0010B\u001a\u00020\"J\u0006\u0010C\u001a\u00020\"J\u0006\u0010D\u001a\u00020\"J\u0006\u0010E\u001a\u00020\"J,\u0010F\u001a\u00020\"2\u0008\u0008\u0002\u0010<\u001a\u00020=2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\"0H\u00a2\u0006\u0002\u0008JH\u0086\u0008J\u000c\u0010K\u001a\u00020\"*\u00020IH\u0002J\u0015\u0010L\u001a\u00020(2\u0006\u0010M\u001a\u00020%\u00a2\u0006\u0004\u0008N\u0010OJ\u0015\u0010L\u001a\u00020(2\u0006\u00109\u001a\u00020(\u00a2\u0006\u0004\u0008P\u0010QJ\u0015\u0010R\u001a\u00020(2\u0006\u0010M\u001a\u00020%\u00a2\u0006\u0004\u0008S\u0010OJ\u0015\u0010R\u001a\u00020(2\u0006\u00109\u001a\u00020(\u00a2\u0006\u0004\u0008T\u0010QJ\u0016\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0086@\u00a2\u0006\u0002\u0010YJ\u0013\u0010Z\u001a\u00020=2\u0008\u0010[\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\\\u001a\u00020%H\u0016J\u0008\u0010]\u001a\u00020^H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0013R+\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00198F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006a"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "",
        "textFieldState",
        "Landroidx/compose/foundation/text/input/TextFieldState;",
        "inputTransformation",
        "Landroidx/compose/foundation/text/input/InputTransformation;",
        "codepointTransformation",
        "Landroidx/compose/foundation/text/input/internal/CodepointTransformation;",
        "outputTransformation",
        "Landroidx/compose/foundation/text/input/OutputTransformation;",
        "<init>",
        "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;)V",
        "outputTransformedText",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;",
        "codepointTransformedText",
        "untransformedText",
        "Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "getUntransformedText",
        "()Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "outputText",
        "getOutputText",
        "visualText",
        "getVisualText",
        "<set-?>",
        "Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;",
        "selectionWedgeAffinity",
        "getSelectionWedgeAffinity",
        "()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;",
        "setSelectionWedgeAffinity",
        "(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)V",
        "selectionWedgeAffinity$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "update",
        "",
        "placeCursorBeforeCharAt",
        "transformedOffset",
        "",
        "selectCharsIn",
        "transformedRange",
        "Landroidx/compose/ui/text/TextRange;",
        "selectCharsIn-5zc-tL8",
        "(J)V",
        "selectUntransformedCharsIn",
        "untransformedRange",
        "selectUntransformedCharsIn-5zc-tL8",
        "highlightCharsIn",
        "type",
        "Landroidx/compose/foundation/text/input/TextHighlightType;",
        "highlightCharsIn-7RAjNK8",
        "(IJ)V",
        "replaceAll",
        "newText",
        "",
        "selectAll",
        "deleteSelectedText",
        "replaceText",
        "range",
        "undoBehavior",
        "Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;",
        "restartImeIfContentChanges",
        "",
        "replaceText-M8tDOmk",
        "(Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;Z)V",
        "replaceSelectedText",
        "clearComposition",
        "collapseSelectionToMax",
        "collapseSelectionToEnd",
        "undo",
        "redo",
        "editUntransformedTextAsUser",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/text/input/TextFieldBuffer;",
        "Lkotlin/ExtensionFunctionType;",
        "updateWedgeAffinity",
        "mapToTransformed",
        "offset",
        "mapToTransformed--jx7JFs",
        "(I)J",
        "mapToTransformed-GEjPoXI",
        "(J)J",
        "mapFromTransformed",
        "mapFromTransformed--jx7JFs",
        "mapFromTransformed-GEjPoXI",
        "collectImeNotifications",
        "",
        "notifyImeListener",
        "Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;",
        "(Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "TransformedText",
        "Companion",
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

.field private static final Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;


# instance fields
.field private final codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

.field private final codepointTransformedText:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;",
            ">;"
        }
    .end annotation
.end field

.field private inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

.field private final outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

.field private final outputTransformedText:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionWedgeAffinity$delegate:Landroidx/compose/runtime/MutableState;

.field private final textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;


# direct methods
.method public static synthetic $r8$lambda$0gOvt5vGmAbtxux9b89F_pmNnXA(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText$lambda$0$0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lMfolSC_2xrepVuFR8qmkwYcnjk(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/OutputTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText$lambda$0$0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/OutputTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;)V
    .locals 4
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text/input/TextFieldState;
    .param p2, "inputTransformation"    # Landroidx/compose/foundation/text/input/InputTransformation;
    .param p3, "codepointTransformation"    # Landroidx/compose/foundation/text/input/internal/CodepointTransformation;
    .param p4, "outputTransformation"    # Landroidx/compose/foundation/text/input/OutputTransformation;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .line 113
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 114
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    .line 115
    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    .line 120
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "transformation":Landroidx/compose/foundation/text/input/OutputTransformation;
    const/4 v2, 0x0

    .line 121
    .local v2, "$i$a$-let-TransformedTextFieldState$outputTransformedText$1":I
    new-instance v3, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/OutputTransformation;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 128
    nop

    .line 120
    .end local v0    # "transformation":Landroidx/compose/foundation/text/input/OutputTransformation;
    .end local v2    # "$i$a$-let-TransformedTextFieldState$outputTransformedText$1":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    if-eqz v0, :cond_1

    .local v0, "transformation":Landroidx/compose/foundation/text/input/internal/CodepointTransformation;
    const/4 v2, 0x0

    .line 133
    .local v2, "$i$a$-let-TransformedTextFieldState$codepointTransformedText$1":I
    new-instance v3, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 141
    nop

    .line 132
    .end local v0    # "transformation":Landroidx/compose/foundation/text/input/internal/CodepointTransformation;
    .end local v2    # "$i$a$-let-TransformedTextFieldState$codepointTransformedText$1":I
    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    .line 178
    new-instance v0, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    sget-object v2, Landroidx/compose/foundation/text/input/internal/WedgeAffinity;->Start:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    invoke-direct {v0, v2}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;-><init>(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectionWedgeAffinity$delegate:Landroidx/compose/runtime/MutableState;

    .line 111
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 111
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 113
    move-object p2, v0

    .line 111
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 114
    move-object p3, v0

    .line 111
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 115
    move-object p4, v0

    .line 111
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;)V

    .line 116
    return-void
.end method

.method public static final synthetic access$getCompanion$p()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;
    .locals 1

    .line 109
    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    return-object v0
.end method

.method public static final synthetic access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 109
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    return-object v0
.end method

.method public static final synthetic access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 109
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    return-object v0
.end method

.method public static final synthetic access$updateWedgeAffinity(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p1, "$receiver"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 109
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->updateWedgeAffinity(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    return-void
.end method

.method private static final calculateTransformedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 1
    .param p0, "untransformedValue"    # Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .param p1, "outputTransformation"    # Landroidx/compose/foundation/text/input/OutputTransformation;
    .param p2, "wedgeAffinity"    # Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    .line 556
    return-object v0
.end method

.method private static final calculateTransformedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 1
    .param p0, "untransformedValue"    # Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .param p1, "codepointTransformation"    # Landroidx/compose/foundation/text/input/internal/CodepointTransformation;
    .param p2, "wedgeAffinity"    # Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    .line 602
    return-object v0
.end method

.method private static final codepointTransformedText$lambda$0$0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 3
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p1, "$transformation"    # Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    .line 134
    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    .line 137
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldState;->getValue$foundation()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    .line 138
    :cond_1
    nop

    .line 139
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v2

    .line 134
    invoke-static {v0, v1, p1, v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method static final collectImeNotifications$lambda$0(Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Z)V
    .locals 2
    .param p0, "$notifyImeListener"    # Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p2, "oldValue"    # Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .param p4, "restartIme"    # Z

    .line 445
    nop

    .line 447
    sget-object p3, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    .line 448
    nop

    .line 449
    iget-object v0, p1, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    .line 450
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v1

    .line 447
    invoke-static {p3, p2, v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object p3

    .line 452
    if-eqz p3, :cond_0

    .line 447
    nop

    .line 452
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p3

    .line 447
    if-eqz p3, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    move-object p3, p2

    .line 453
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    .line 454
    nop

    .line 445
    invoke-interface {p0, p3, v0, p4}, Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;->onChange(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Z)V

    .line 456
    return-void
.end method

.method public static synthetic editUntransformedTextAsUser$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p1, "restartImeIfContentChanges"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 319
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 320
    const/4 p1, 0x1

    .line 319
    :cond_0
    const/4 p3, 0x0

    .line 323
    .local p3, "$i$f$editUntransformedTextAsUser":I
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object p4

    .line 324
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object v0

    .line 325
    nop

    .line 323
    move v1, p1

    .line 881
    .local v0, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .local v1, "restartImeIfContentChanges$iv":Z
    .local p4, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    nop

    .line 884
    sget-object v2, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 881
    .local v2, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v3, 0x0

    .line 887
    .local v3, "$i$f$editAsUser$foundation":I
    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 888
    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v4

    .local v4, "$this$editUntransformedTextAsUser_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v5, 0x0

    .line 327
    .local v5, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$editUntransformedTextAsUser$1":I
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p0, v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$updateWedgeAffinity(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 329
    nop

    .line 888
    .end local v4    # "$this$editUntransformedTextAsUser_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v5    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$editUntransformedTextAsUser$1":I
    nop

    .line 890
    nop

    .line 891
    nop

    .line 892
    nop

    .line 893
    nop

    .line 890
    invoke-static {p4, v0, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 895
    nop

    .line 330
    .end local v0    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v1    # "restartImeIfContentChanges$iv":Z
    .end local v2    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v3    # "$i$f$editAsUser$foundation":I
    .end local p4    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    return-void
.end method

.method private static final mapFromTransformed-xdX6-G0(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J
    .locals 2
    .param p0, "$v$c$androidx-compose-ui-text-TextRange$-range$0"    # J
    .param p2, "mapping"    # Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J

    move-result-wide v0

    .line 683
    return-wide v0
.end method

.method private static final mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J
    .locals 2
    .param p0, "$v$c$androidx-compose-ui-text-TextRange$-range$0"    # J
    .param p2, "mapping"    # Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .param p3, "selectionWedgeAffinity"    # Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapToTransformed-XGyztTk(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide v0

    .line 661
    return-wide v0
.end method

.method private static final outputTransformedText$lambda$0$0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/OutputTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 3
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p1, "$transformation"    # Landroidx/compose/foundation/text/input/OutputTransformation;

    .line 123
    sget-object v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    .line 124
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldState;->getValue$foundation()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    .line 125
    nop

    .line 126
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v2

    .line 123
    invoke-static {v0, v1, p1, v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method public static synthetic replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V
    .locals 0

    .line 262
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 264
    const/4 p2, 0x0

    .line 262
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 265
    sget-object p3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 262
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 266
    const/4 p4, 0x1

    .line 262
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText(Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;Z)V

    return-void
.end method

.method public static synthetic replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V
    .locals 6

    .line 243
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 246
    sget-object p4, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    move-object v4, p4

    goto :goto_0

    .line 243
    :cond_0
    move-object v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 247
    const/4 p5, 0x1

    move v5, p5

    goto :goto_1

    .line 243
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk(Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;Z)V

    return-void
.end method

.method private final updateWedgeAffinity(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    .locals 2
    .param p1, "$this$updateWedgeAffinity"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 337
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->getChangeCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    sget-object v1, Landroidx/compose/foundation/text/input/internal/WedgeAffinity;->Start:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;-><init>(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->setSelectionWedgeAffinity(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)V

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public final collapseSelectionToEnd()V
    .locals 11

    .line 294
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 866
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    nop

    .line 868
    const/4 v2, 0x1

    .line 866
    .local v2, "restartImeIfContentChanges$iv":Z
    nop

    .line 869
    sget-object v3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 866
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 872
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 873
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$collapseSelectionToEnd_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 296
    .local v6, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$collapseSelectionToEnd$1":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v10, v8, v9}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IIILjava/lang/Object;)V

    .line 297
    nop

    .line 873
    .end local v5    # "$this$collapseSelectionToEnd_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$collapseSelectionToEnd$1":I
    nop

    .line 875
    nop

    .line 876
    nop

    .line 877
    nop

    .line 878
    nop

    .line 875
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 880
    nop

    .line 298
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "restartImeIfContentChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final collapseSelectionToMax()V
    .locals 11

    .line 287
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 851
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    nop

    .line 853
    const/4 v2, 0x1

    .line 851
    .local v2, "restartImeIfContentChanges$iv":Z
    nop

    .line 854
    sget-object v3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 851
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 857
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 858
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$collapseSelectionToMax_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 289
    .local v6, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$collapseSelectionToMax$1":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v10, v8, v9}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IIILjava/lang/Object;)V

    .line 290
    nop

    .line 858
    .end local v5    # "$this$collapseSelectionToMax_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$collapseSelectionToMax$1":I
    nop

    .line 860
    nop

    .line 861
    nop

    .line 862
    nop

    .line 863
    nop

    .line 860
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 865
    nop

    .line 291
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "restartImeIfContentChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final collectImeNotifications(Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 439
    iget v3, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$suspendCancellableCoroutine":I
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p1    # "$i$f$suspendCancellableCoroutine":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 443
    .local v3, "this":Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .local p1, "notifyImeListener":Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;
    iget-object v4, v3, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    if-eqz v4, :cond_1

    .line 444
    nop

    .line 442
    new-instance v4, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)V

    move-object p1, v4

    goto :goto_1

    .line 458
    :cond_1
    nop

    .line 443
    .end local p1    # "notifyImeListener":Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;
    :goto_1
    nop

    .line 442
    nop

    .line 460
    .local p1, "transformedNotifyImeListener":Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;
    const/4 v4, 0x0

    .line 897
    .local v4, "$i$f$suspendCancellableCoroutine":I
    iput-object p1, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .local v6, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v7, 0x0

    .line 898
    .local v7, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v6}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 904
    .local v8, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 905
    move-object v5, v8

    check-cast v5, Lkotlinx/coroutines/CancellableContinuation;

    .local v5, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v9, 0x0

    .line 461
    .local v9, "$i$a$-suspendCancellableCoroutine-TransformedTextFieldState$collectImeNotifications$2":I
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroidx/compose/foundation/text/input/TextFieldState;->addNotifyImeListener$foundation(Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;)V

    .line 462
    new-instance v10, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$2$1;

    invoke-direct {v10, v3, p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$collectImeNotifications$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 465
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .end local p1    # "transformedNotifyImeListener":Landroidx/compose/foundation/text/input/TextFieldState$NotifyImeListener;
    nop

    .line 905
    .end local v5    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v9    # "$i$a$-suspendCancellableCoroutine-TransformedTextFieldState$collectImeNotifications$2":I
    nop

    .line 906
    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 897
    .end local v6    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v7    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v8    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_2

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne p1, v2, :cond_3

    .line 439
    return-object v2

    .line 897
    :cond_3
    move p1, v4

    .line 907
    .end local v4    # "$i$f$suspendCancellableCoroutine":I
    .local p1, "$i$f$suspendCancellableCoroutine":I
    :goto_2
    nop

    .line 460
    .end local p1    # "$i$f$suspendCancellableCoroutine":I
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteSelectedText()V
    .locals 11

    .line 228
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .line 229
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 230
    sget-object v2, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->NeverMerge:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 228
    nop

    .line 818
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .local v2, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    nop

    .line 820
    const/4 v3, 0x1

    .line 818
    .local v3, "restartImeIfContentChanges$iv":Z
    const/4 v4, 0x0

    .line 824
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 825
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$deleteSelectedText_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 233
    .local v6, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$deleteSelectedText$1":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    invoke-static {v5, v7, v8}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->delete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 234
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v10, v8, v9}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IIILjava/lang/Object;)V

    .line 235
    invoke-direct {p0, v5}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->updateWedgeAffinity(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 236
    nop

    .line 825
    .end local v5    # "$this$deleteSelectedText_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$deleteSelectedText$1":I
    nop

    .line 827
    nop

    .line 828
    nop

    .line 829
    nop

    .line 830
    nop

    .line 827
    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 832
    nop

    .line 237
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v3    # "restartImeIfContentChanges$iv":Z
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final editUntransformedTextAsUser(ZLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "restartImeIfContentChanges"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/TextFieldBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 323
    .local v0, "$i$f$editUntransformedTextAsUser":I
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v1

    .line 324
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object v2

    .line 325
    nop

    .line 323
    move v3, p1

    .line 881
    .local v1, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .local v2, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .local v3, "restartImeIfContentChanges$iv":Z
    nop

    .line 884
    sget-object v4, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 881
    .local v4, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v5, 0x0

    .line 887
    .local v5, "$i$f$editAsUser$foundation":I
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 888
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v6

    .local v6, "$this$editUntransformedTextAsUser_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v7, 0x0

    .line 327
    .local v7, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$editUntransformedTextAsUser$1":I
    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p0, v6}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$updateWedgeAffinity(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 329
    nop

    .line 888
    .end local v6    # "$this$editUntransformedTextAsUser_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$editUntransformedTextAsUser$1":I
    nop

    .line 890
    nop

    .line 891
    nop

    .line 892
    nop

    .line 893
    nop

    .line 890
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 895
    nop

    .line 330
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v2    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v3    # "restartImeIfContentChanges$iv":Z
    .end local v4    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v5    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 469
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 470
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 471
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iget-object v2, v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 472
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iget-object v2, v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 473
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iget-object v1, v1, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getOutputText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getUntransformedText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    .locals 4

    .line 178
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectionWedgeAffinity$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 755
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    .line 178
    return-object v0
.end method

.method public final getUntransformedText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getValue$foundation()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getOutputText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 477
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->hashCode()I

    move-result v0

    .line 478
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 479
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    .line 480
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final highlightCharsIn-7RAjNK8(IJ)V
    .locals 11
    .param p1, "$v$c$androidx-compose-foundation-text-input-TextHighlightType$-type$0"    # I
    .param p2, "$v$c$androidx-compose-ui-text-TextRange$-transformedRange$0"    # J

    .line 208
    invoke-virtual {p0, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v0

    .line 209
    .local v0, "untransformedRange":J
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .local v2, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 773
    .local v3, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    nop

    .line 775
    const/4 v4, 0x1

    .line 773
    .local v4, "restartImeIfContentChanges$iv":Z
    nop

    .line 776
    sget-object v5, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 773
    .local v5, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v6, 0x0

    .line 779
    .local v6, "$i$f$editAsUser$foundation":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 780
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v7

    .local v7, "$this$highlightCharsIn_7RAjNK8_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v8, 0x0

    .line 210
    .local v8, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$highlightCharsIn$1":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v9

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    invoke-virtual {v7, p1, v9, v10}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setHighlight-K7f2yys$foundation(III)V

    .line 211
    nop

    .line 780
    .end local v7    # "$this$highlightCharsIn_7RAjNK8_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v8    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$highlightCharsIn$1":I
    nop

    .line 782
    nop

    .line 783
    nop

    .line 784
    nop

    .line 785
    nop

    .line 782
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 787
    nop

    .line 212
    .end local v2    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v3    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v4    # "restartImeIfContentChanges$iv":Z
    .end local v5    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v6    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final mapFromTransformed--jx7JFs(I)J
    .locals 7
    .param p1, "offset"    # I

    .line 399
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 400
    .local v0, "presentMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v1

    .line 402
    .local v1, "visualMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->mapFromDest--jx7JFs(I)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v2

    .line 403
    .local v2, "intermediateOffset":J
    :goto_1
    if-eqz v0, :cond_3

    move-object v4, v0

    .line 896
    .local v4, "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    const/4 v5, 0x0

    .line 403
    .local v5, "$i$a$-let-TransformedTextFieldState$mapFromTransformed$1":I
    sget-object v6, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v6, v2, v3, v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J

    move-result-wide v4

    .end local v4    # "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .end local v5    # "$i$a$-let-TransformedTextFieldState$mapFromTransformed$1":I
    goto :goto_2

    .line 404
    :cond_3
    move-wide v4, v2

    .line 403
    :goto_2
    return-wide v4
.end method

.method public final mapFromTransformed-GEjPoXI(J)J
    .locals 7
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-range$0"    # J

    .line 416
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 417
    .local v0, "presentMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v1

    .line 419
    .local v1, "visualMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 896
    .local v2, "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    const/4 v3, 0x0

    .line 419
    .local v3, "$i$a$-let-TransformedTextFieldState$mapFromTransformed$intermediateRange$1":I
    sget-object v4, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v4, p1, p2, v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J

    move-result-wide v2

    .end local v2    # "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .end local v3    # "$i$a$-let-TransformedTextFieldState$mapFromTransformed$intermediateRange$1":I
    goto :goto_1

    :cond_2
    move-wide v2, p1

    .line 420
    .local v2, "intermediateRange":J
    :goto_1
    if-eqz v0, :cond_3

    move-object v4, v0

    .line 896
    .local v4, "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    const/4 v5, 0x0

    .line 420
    .local v5, "$i$a$-let-TransformedTextFieldState$mapFromTransformed$2":I
    sget-object v6, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v6, v2, v3, v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J

    move-result-wide v4

    .end local v4    # "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .end local v5    # "$i$a$-let-TransformedTextFieldState$mapFromTransformed$2":I
    goto :goto_2

    .line 421
    :cond_3
    move-wide v4, v2

    .line 420
    :goto_2
    return-wide v4
.end method

.method public final mapToTransformed--jx7JFs(I)J
    .locals 8
    .param p1, "offset"    # I

    .line 357
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 358
    .local v0, "presentMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v1

    .line 360
    .local v1, "visualMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->mapFromSource--jx7JFs(I)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v2

    .line 361
    .local v2, "intermediateRange":J
    :goto_1
    if-eqz v1, :cond_3

    move-object v4, v1

    .local v4, "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    const/4 v5, 0x0

    .line 362
    .local v5, "$i$a$-let-TransformedTextFieldState$mapToTransformed$1":I
    sget-object v6, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v7

    invoke-static {v6, v2, v3, v4, v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapToTransformed-XGyztTk(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide v4

    .line 361
    .end local v4    # "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .end local v5    # "$i$a$-let-TransformedTextFieldState$mapToTransformed$1":I
    goto :goto_2

    .line 363
    :cond_3
    move-wide v4, v2

    .line 361
    :goto_2
    return-wide v4
.end method

.method public final mapToTransformed-GEjPoXI(J)J
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-range$0"    # J

    .line 375
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 376
    .local v0, "presentMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    move-result-object v1

    .line 380
    .local v1, "visualMapping":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    :cond_1
    if-eqz v0, :cond_2

    move-object v5, v0

    .line 896
    .local v5, "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    const/4 v9, 0x0

    .line 380
    .local v9, "$i$a$-let-TransformedTextFieldState$mapToTransformed$intermediateRange$1":I
    sget-object v2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide v3, p1

    .end local p1    # "$v$c$androidx-compose-ui-text-TextRange$-range$0":J
    .local v3, "$v$c$androidx-compose-ui-text-TextRange$-range$0":J
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;ILjava/lang/Object;)J

    move-result-wide p1

    .end local v5    # "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .end local v9    # "$i$a$-let-TransformedTextFieldState$mapToTransformed$intermediateRange$1":I
    goto :goto_1

    .end local v3    # "$v$c$androidx-compose-ui-text-TextRange$-range$0":J
    .restart local p1    # "$v$c$androidx-compose-ui-text-TextRange$-range$0":J
    :cond_2
    move-wide v3, p1

    .line 381
    .restart local v3    # "$v$c$androidx-compose-ui-text-TextRange$-range$0":J
    .local p1, "intermediateRange":J
    :goto_1
    if-eqz v1, :cond_3

    move-object v2, v1

    .local v2, "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    const/4 v5, 0x0

    .line 382
    .local v5, "$i$a$-let-TransformedTextFieldState$mapToTransformed$2":I
    sget-object v6, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v7

    invoke-static {v6, p1, p2, v2, v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->access$mapToTransformed-XGyztTk(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide v5

    .line 381
    .end local v2    # "it":Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;
    .end local v5    # "$i$a$-let-TransformedTextFieldState$mapToTransformed$2":I
    goto :goto_2

    .line 383
    :cond_3
    move-wide v5, p1

    .line 381
    :goto_2
    return-wide v5
.end method

.method public final placeCursorBeforeCharAt(I)V
    .locals 2
    .param p1, "transformedOffset"    # I

    .line 193
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    .line 194
    return-void
.end method

.method public final redo()V
    .locals 1

    .line 305
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getUndoState()Landroidx/compose/foundation/text/input/UndoState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/UndoState;->redo()V

    .line 306
    return-void
.end method

.method public final replaceAll(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 216
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 788
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    nop

    .line 790
    const/4 v2, 0x1

    .line 788
    .local v2, "restartImeIfContentChanges$iv":Z
    nop

    .line 791
    sget-object v3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 788
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 794
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 795
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$replaceAll_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 217
    .local v6, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$replaceAll$1":I
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->delete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 219
    invoke-direct {p0, v5}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->updateWedgeAffinity(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 220
    nop

    .line 795
    .end local v5    # "$this$replaceAll_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$replaceAll$1":I
    nop

    .line 797
    nop

    .line 798
    nop

    .line 799
    nop

    .line 800
    nop

    .line 797
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 802
    nop

    .line 221
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "restartImeIfContentChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final replaceSelectedText(Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;Z)V
    .locals 13
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "clearComposition"    # Z
    .param p3, "undoBehavior"    # Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .param p4, "restartImeIfContentChanges"    # Z

    .line 268
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .line 269
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 270
    nop

    .line 271
    nop

    .line 268
    nop

    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    move-object/from16 v2, p3

    .local v2, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    move/from16 v3, p4

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .local v3, "restartImeIfContentChanges$iv":Z
    const/4 v4, 0x0

    .line 842
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 843
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$replaceSelectedText_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 273
    .local v6, "$i$a$-editAsUser$foundation-TransformedTextFieldState$replaceSelectedText$1":I
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->commitComposition$foundation()V

    .line 278
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    .line 279
    .local v7, "selection":J
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v10

    invoke-virtual {v5, v9, v10, p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 280
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v9, v10

    .line 281
    .local v9, "cursor":I
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v9, v12, v10, v11}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IIILjava/lang/Object;)V

    .line 282
    invoke-direct {p0, v5}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->updateWedgeAffinity(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 283
    nop

    .line 843
    .end local v5    # "$this$replaceSelectedText_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation-TransformedTextFieldState$replaceSelectedText$1":I
    .end local v7    # "selection":J
    .end local v9    # "cursor":I
    nop

    .line 845
    nop

    .line 846
    nop

    .line 847
    nop

    .line 848
    nop

    .line 845
    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 850
    nop

    .line 284
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v3    # "restartImeIfContentChanges$iv":Z
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final replaceText-M8tDOmk(Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;Z)V
    .locals 17
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "$v$c$androidx-compose-ui-text-TextRange$-range$0"    # J
    .param p4, "undoBehavior"    # Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .param p5, "restartImeIfContentChanges"    # Z

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .line 250
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 249
    nop

    .line 250
    nop

    .line 252
    nop

    .line 251
    nop

    .line 249
    nop

    .local v1, "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .local v2, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    move-object/from16 v3, p4

    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    move/from16 v4, p5

    .local v4, "restartImeIfContentChanges$iv":Z
    const/4 v5, 0x0

    .line 833
    .local v5, "$i$f$editAsUser$foundation":I
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 834
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v6

    .local v6, "$this$replaceText_M8tDOmk_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v7, 0x0

    .line 254
    .local v7, "$i$a$-editAsUser$foundation-TransformedTextFieldState$replaceText$1":I
    move-wide/from16 v8, p2

    invoke-virtual {v0, v8, v9}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v10

    .line 255
    .local v10, "selection":J
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v12

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v13

    move-object/from16 v14, p1

    invoke-virtual {v6, v12, v13, v14}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 256
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v12

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v12, v13

    .line 257
    .local v12, "cursor":I
    const/4 v13, 0x2

    const/4 v15, 0x0

    move/from16 v16, v5

    .end local v5    # "$i$f$editAsUser$foundation":I
    .local v16, "$i$f$editAsUser$foundation":I
    const/4 v5, 0x0

    invoke-static {v6, v12, v5, v13, v15}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IIILjava/lang/Object;)V

    .line 258
    invoke-direct {v0, v6}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->updateWedgeAffinity(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 259
    nop

    .line 834
    .end local v6    # "$this$replaceText_M8tDOmk_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation-TransformedTextFieldState$replaceText$1":I
    .end local v10    # "selection":J
    .end local v12    # "cursor":I
    nop

    .line 836
    nop

    .line 837
    nop

    .line 838
    nop

    .line 839
    nop

    .line 836
    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 841
    nop

    .line 260
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v2    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "restartImeIfContentChanges$iv":Z
    .end local v16    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final selectAll()V
    .locals 9

    .line 224
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 803
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    nop

    .line 805
    const/4 v2, 0x1

    .line 803
    .local v2, "restartImeIfContentChanges$iv":Z
    nop

    .line 806
    sget-object v3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 803
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 809
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 810
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$selectAll_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 224
    .local v6, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$selectAll$1":I
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 810
    .end local v5    # "$this$selectAll_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$selectAll$1":I
    nop

    .line 812
    nop

    .line 813
    nop

    .line 814
    nop

    .line 815
    nop

    .line 812
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 817
    nop

    .line 225
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "restartImeIfContentChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final selectCharsIn-5zc-tL8(J)V
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-transformedRange$0"    # J

    .line 197
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v0

    .line 198
    .local v0, "untransformedRange":J
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectUntransformedCharsIn-5zc-tL8(J)V

    .line 199
    return-void
.end method

.method public final selectUntransformedCharsIn-5zc-tL8(J)V
    .locals 9
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-untransformedRange$0"    # J

    .line 202
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 758
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    nop

    .line 760
    const/4 v2, 0x1

    .line 758
    .local v2, "restartImeIfContentChanges$iv":Z
    nop

    .line 761
    sget-object v3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 758
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 764
    .local v4, "$i$f$editAsUser$foundation":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker$foundation()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 765
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v5

    .local v5, "$this$selectUntransformedCharsIn_5zc_tL8_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x0

    .line 203
    .local v6, "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$selectUntransformedCharsIn$1":I
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v7

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    invoke-static {v5, v7, v8}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->setSelectionCoerced(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 204
    nop

    .line 765
    .end local v5    # "$this$selectUntransformedCharsIn_5zc_tL8_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation$default-TransformedTextFieldState$selectUntransformedCharsIn$1":I
    nop

    .line 767
    nop

    .line 768
    nop

    .line 769
    nop

    .line 770
    nop

    .line 767
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 772
    nop

    .line 205
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text/input/InputTransformation;
    .end local v2    # "restartImeIfContentChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation":I
    return-void
.end method

.method public final setSelectionWedgeAffinity(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    .line 178
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectionWedgeAffinity$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 756
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 757
    nop

    .line 178
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TransformedTextFieldState(textFieldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    nop

    .line 484
    const-string v1, ", outputTransformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    nop

    .line 484
    const-string v1, ", outputTransformedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 487
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->outputTransformedText:Landroidx/compose/runtime/State;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 487
    nop

    .line 484
    const-string v1, ", codepointTransformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    nop

    .line 484
    const-string v1, ", codepointTransformedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->codepointTransformedText:Landroidx/compose/runtime/State;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    nop

    .line 484
    const-string v1, ", outputText=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getOutputText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    nop

    .line 484
    const-string v1, "\", visualText=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    nop

    .line 484
    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    return-object v0
.end method

.method public final undo()V
    .locals 1

    .line 301
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getUndoState()Landroidx/compose/foundation/text/input/UndoState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/UndoState;->undo()V

    .line 302
    return-void
.end method

.method public final update(Landroidx/compose/foundation/text/input/InputTransformation;)V
    .locals 0
    .param p1, "inputTransformation"    # Landroidx/compose/foundation/text/input/InputTransformation;

    .line 189
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    .line 190
    return-void
.end method
