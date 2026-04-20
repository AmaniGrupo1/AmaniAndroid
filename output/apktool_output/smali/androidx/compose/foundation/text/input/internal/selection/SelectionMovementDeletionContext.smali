.class public final Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextPreparedSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,587:1\n127#1,11:595\n127#1,11:606\n127#1,11:617\n127#1,11:628\n131#1,7:639\n197#1,5:646\n131#1,5:651\n202#1,15:656\n137#1:671\n197#1,5:672\n131#1,5:677\n202#1,15:682\n137#1:697\n197#1,5:698\n131#1,5:703\n202#1,15:708\n137#1:723\n197#1,5:724\n131#1,5:729\n202#1,15:734\n137#1:749\n197#1,5:750\n131#1,5:755\n202#1,15:760\n137#1:775\n197#1,5:776\n131#1,5:781\n202#1,15:786\n137#1:801\n197#1,5:802\n131#1,5:807\n202#1,15:812\n137#1:827\n197#1,5:828\n131#1,5:833\n202#1,15:838\n137#1:853\n197#1,5:854\n131#1,5:859\n202#1,15:864\n137#1:879\n201#1:880\n131#1,5:881\n202#1,15:886\n137#1:901\n201#1:902\n131#1,5:903\n202#1,15:908\n137#1:923\n197#1,5:924\n131#1,5:929\n202#1,15:934\n137#1:949\n197#1,5:950\n131#1,5:955\n202#1,15:960\n137#1:975\n201#1:976\n131#1,5:977\n202#1,15:982\n137#1:997\n201#1:998\n131#1,5:999\n202#1,15:1004\n137#1:1019\n131#1,7:1020\n131#1,7:1027\n613#2,7:588\n30#3:1034\n53#4,3:1035\n*S KotlinDebug\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext\n*L\n140#1:595,11\n142#1:606,11\n159#1:617,11\n172#1:628,11\n201#1:639,7\n218#1:646,5\n218#1:651,5\n218#1:656,15\n218#1:671\n222#1:672,5\n222#1:677,5\n222#1:682,15\n222#1:697\n224#1:698,5\n224#1:703,5\n224#1:708,15\n224#1:723\n226#1:724,5\n226#1:729,5\n226#1:734,15\n226#1:749\n228#1:750,5\n228#1:755,5\n228#1:760,15\n228#1:775\n244#1:776,5\n244#1:781,5\n244#1:786,15\n244#1:801\n248#1:802,5\n248#1:807,5\n248#1:812,15\n248#1:827\n252#1:828,5\n252#1:833,5\n252#1:838,15\n252#1:853\n260#1:854,5\n260#1:859,5\n260#1:864,15\n260#1:879\n271#1:880\n271#1:881,5\n271#1:886,15\n271#1:901\n277#1:902\n277#1:903,5\n277#1:908,15\n277#1:923\n296#1:924,5\n296#1:929,5\n296#1:934,15\n296#1:949\n300#1:950,5\n300#1:955,5\n300#1:960,15\n300#1:975\n305#1:976\n305#1:977,5\n305#1:982,15\n305#1:997\n308#1:998\n308#1:999,5\n308#1:1004,15\n308#1:1019\n312#1:1020,7\n317#1:1027,7\n107#1:588,7\n422#1:1034\n422#1:1035,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008#\u0008\u0001\u0018\u0000 Y2\u00020\u0001:\u0001YB1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ,\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010&\u001a\u00020\u00072\u0017\u0010\'\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020)0(\u00a2\u0006\u0002\u0008*H\u0082\u0008J\u0006\u0010+\u001a\u00020\u0000J\u0006\u0010,\u001a\u00020\u0000J\u0006\u0010-\u001a\u00020\u0000J\u0006\u0010.\u001a\u00020\u0000J\u001f\u0010/\u001a\u00020\u00002\u0017\u00100\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020)0(\u00a2\u0006\u0002\u0008*J\u001f\u00101\u001a\u00020\u00002\u0017\u00100\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020)0(\u00a2\u0006\u0002\u0008*J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u000203J!\u00105\u001a\u00020\u00002\u0008\u0008\u0002\u0010&\u001a\u00020\u00072\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020307H\u0082\u0008J\u0006\u00108\u001a\u00020\u0000J\u0006\u00109\u001a\u00020\u0000J\u0006\u0010:\u001a\u00020\u0000J\u0006\u0010;\u001a\u00020\u0000J\u0006\u0010<\u001a\u00020\u0000J\u0006\u0010=\u001a\u00020\u0000J\u0006\u0010>\u001a\u00020\u0000J\u0006\u0010?\u001a\u00020\u0000J\u0006\u0010@\u001a\u00020\u0000J\u0006\u0010A\u001a\u00020\u0000J\u0006\u0010B\u001a\u00020\u0000J\u0006\u0010C\u001a\u00020\u0000J\u0006\u0010D\u001a\u00020\u0000J\u0006\u0010E\u001a\u00020\u0000J\u0006\u0010F\u001a\u00020\u0000J\u0006\u0010G\u001a\u00020\u0000J\u0006\u0010H\u001a\u00020\u0000J\u0006\u0010I\u001a\u00020\u0000J\u0006\u0010J\u001a\u00020\u0000J\u0006\u0010K\u001a\u00020\u0000J\u0006\u0010L\u001a\u00020\u0000J\u0008\u0010M\u001a\u00020\u0007H\u0002J\u0017\u0010N\u001a\u000203*\u00020\u00052\u0008\u0008\u0002\u0010O\u001a\u000203H\u0082\u0010J\u0017\u0010P\u001a\u000203*\u00020\u00052\u0008\u0008\u0002\u0010O\u001a\u000203H\u0082\u0010J\u0016\u0010Q\u001a\u000203*\u00020\u00052\u0008\u0008\u0002\u0010O\u001a\u000203H\u0002J\u0016\u0010R\u001a\u000203*\u00020\u00052\u0008\u0008\u0002\u0010O\u001a\u000203H\u0002J\u0014\u0010S\u001a\u000203*\u00020\u00052\u0006\u0010T\u001a\u000203H\u0002J\u0010\u0010U\u001a\u0002032\u0006\u0010V\u001a\u000203H\u0002J\u0010\u0010W\u001a\u0002032\u0006\u0010X\u001a\u000203H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;",
        "",
        "state",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "isFromSoftKeyboard",
        "",
        "visibleTextLayoutHeight",
        "",
        "textPreparedSelectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;",
        "<init>",
        "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V",
        "initialValue",
        "Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "getInitialValue",
        "()Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "initialWedgeAffinity",
        "Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;",
        "getInitialWedgeAffinity",
        "()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "getSelection-d9O1mEE",
        "()J",
        "setSelection-5zc-tL8",
        "(J)V",
        "J",
        "wedgeAffinity",
        "Landroidx/compose/foundation/text/input/internal/WedgeAffinity;",
        "getWedgeAffinity",
        "()Landroidx/compose/foundation/text/input/internal/WedgeAffinity;",
        "setWedgeAffinity",
        "(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V",
        "text",
        "",
        "applyIfNotEmpty",
        "resetCachedX",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "selectAll",
        "deselect",
        "moveCursorLeftByChar",
        "moveCursorRightByChar",
        "collapseLeftOr",
        "or",
        "collapseRightOr",
        "getPrecedingCharacterIndex",
        "",
        "getNextCharacterIndex",
        "moveCursorTo",
        "proposedCursorMovement",
        "Lkotlin/Function0;",
        "moveCursorPrevByCodePointOrEmoji",
        "moveCursorPrevByChar",
        "moveCursorNextByChar",
        "moveCursorToHome",
        "moveCursorToEnd",
        "moveCursorLeftByWord",
        "moveCursorRightByWord",
        "moveCursorNextByWord",
        "moveCursorPrevByWord",
        "moveCursorPrevByParagraph",
        "moveCursorNextByParagraph",
        "moveCursorUpByLine",
        "moveCursorDownByLine",
        "moveCursorToLineLeftSide",
        "moveCursorToLineRightSide",
        "moveCursorToLineStart",
        "moveCursorToLineEnd",
        "moveCursorUpByPage",
        "moveCursorDownByPage",
        "selectMovement",
        "deleteMovement",
        "isLtr",
        "getNextWordOffsetForLayout",
        "currentOffset",
        "getPrevWordOffsetForLayout",
        "getLineStartByOffsetForLayout",
        "getLineEndByOffsetForLayout",
        "jumpByLinesOffset",
        "linesAmount",
        "jumpByPagesOffset",
        "pagesAmount",
        "charOffset",
        "offset",
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

.field public static final Companion:Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext$Companion;

.field public static final NoCharacterFound:I = -0x1


# instance fields
.field private final initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

.field private final initialWedgeAffinity:Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

.field private final isFromSoftKeyboard:Z

.field private selection:J

.field private final state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field private final text:Ljava/lang/String;

.field private final textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

.field private final visibleTextLayoutHeight:F

.field private wedgeAffinity:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->Companion:Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V
    .locals 7
    .param p1, "state"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p3, "isFromSoftKeyboard"    # Z
    .param p4, "visibleTextLayoutHeight"    # F
    .param p5, "textPreparedSelectionState"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 91
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 92
    iput-boolean p3, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isFromSoftKeyboard:Z

    .line 93
    iput p4, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->visibleTextLayoutHeight:F

    .line 94
    iput-object p5, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    .line 106
    nop

    .line 107
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v1, 0x0

    .line 588
    .local v1, "$i$f$withoutReadObservation":I
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 589
    .local v2, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 590
    .local v3, "observer$iv":Lkotlin/jvm/functions/Function1;
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    .line 591
    .local v4, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 592
    const/4 v5, 0x0

    .line 108
    .local v5, "$i$a$-withoutReadObservation-SelectionMovementDeletionContext$1":I
    :try_start_0
    iget-object v6, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v6

    iput-object v6, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    .line 109
    iget-object v6, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v6

    iput-object v6, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialWedgeAffinity:Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    .line 110
    nop

    .end local v5    # "$i$a$-withoutReadObservation-SelectionMovementDeletionContext$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    nop

    .line 594
    invoke-virtual {v0, v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 592
    nop

    .line 111
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v1    # "$i$f$withoutReadObservation":I
    .end local v2    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 114
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 119
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    .line 89
    return-void

    .line 594
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v1    # "$i$f$withoutReadObservation":I
    .restart local v2    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v5

    invoke-virtual {v0, v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v5
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .line 89
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public static final synthetic access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .line 89
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .line 89
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    return-object v0
.end method

.method private final applyIfNotEmpty(ZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 2
    .param p1, "resetCachedX"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$applyIfNotEmpty":I
    if-eqz p1, :cond_0

    .line 132
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 134
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    return-object p0
.end method

.method static synthetic applyIfNotEmpty$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .param p1, "resetCachedX"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 127
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 128
    const/4 p1, 0x1

    .line 127
    :cond_0
    const/4 p3, 0x0

    .line 131
    .local p3, "$i$f$applyIfNotEmpty":I
    if-eqz p1, :cond_1

    .line 132
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 134
    :cond_1
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_3

    .line 135
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3
    return-object p0
.end method

.method private final charOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 454
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    return v0
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 2
    .param p1, "$this$getLineEndByOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 376
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 377
    .local v0, "currentLine":I
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v1

    return v1
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 373
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 374
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p2

    .line 373
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 2
    .param p1, "$this$getLineStartByOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 369
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 370
    .local v0, "currentLine":I
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v1

    return v1
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 366
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 367
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p2

    .line 366
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3
    .param p1, "$this$getNextWordOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 340
    nop

    .line 341
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 342
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->length()I

    move-result v0

    return v0

    .line 344
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 345
    .local v0, "currentWord":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    .line 346
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    .line 345
    return v2
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 338
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 339
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 338
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3
    .param p1, "$this$getPrevWordOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 354
    nop

    .line 355
    :goto_0
    if-gtz p2, :cond_0

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 359
    .local v0, "currentWord":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 360
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 362
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    .line 359
    return v2
.end method

.method static synthetic getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 352
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 353
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 352
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final isLtr()Z
    .locals 4

    .line 334
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 335
    .local v0, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    :cond_0
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 334
    .end local v0    # "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    :cond_2
    :goto_1
    return v1
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 20
    .param p1, "$this$jumpByLinesOffset"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "linesAmount"    # I

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    .line 397
    .local v2, "currentOffset":I
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->setCachedX(F)V

    .line 401
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v3

    add-int v3, v3, p2

    .line 402
    .local v3, "targetLine":I
    nop

    .line 403
    if-gez v3, :cond_1

    .line 404
    const/high16 v4, -0x80000000

    return v4

    .line 406
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 407
    const v4, 0x7fffffff

    return v4

    .line 411
    :cond_2
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v4

    const/4 v5, 0x1

    int-to-float v6, v5

    sub-float/2addr v4, v6

    .line 413
    .local v4, "y":F
    iget-object v6, v0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v6

    move v7, v6

    .local v7, "it":F
    const/4 v8, 0x0

    .line 414
    .local v8, "$i$a$-also-SelectionMovementDeletionContext$jumpByLinesOffset$x$1":I
    nop

    .line 415
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v9

    cmpl-float v9, v7, v9

    if-gez v9, :cond_4

    .line 416
    :cond_3
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_5

    .line 418
    :cond_4
    invoke-virtual {v1, v3, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v5

    return v5

    .line 420
    :cond_5
    nop

    .line 413
    .end local v7    # "it":F
    .end local v8    # "$i$a$-also-SelectionMovementDeletionContext$jumpByLinesOffset$x$1":I
    nop

    .line 412
    nop

    .line 422
    .local v6, "x":F
    move v5, v4

    .local v5, "y$iv":F
    move v7, v6

    .local v7, "x$iv":F
    const/4 v8, 0x0

    .line 1034
    .local v8, "$i$f$Offset":I
    move v9, v5

    .local v9, "val2$iv$iv":F
    move v10, v7

    .local v10, "val1$iv$iv":F
    const/4 v11, 0x0

    .line 1035
    .local v11, "$i$f$packFloats":I
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 1036
    .local v12, "v1$iv$iv":J
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 1037
    .local v14, "v2$iv$iv":J
    const/16 v16, 0x20

    shl-long v16, v12, v16

    const-wide v18, 0xffffffffL

    and-long v18, v14, v18

    or-long v9, v16, v18

    .line 1034
    .end local v9    # "val2$iv$iv":F
    .end local v10    # "val1$iv$iv":F
    .end local v11    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    .line 422
    .end local v5    # "y$iv":F
    .end local v7    # "x$iv":F
    .end local v8    # "$i$f$Offset":I
    invoke-virtual {v1, v7, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    return v5
.end method

.method private final jumpByPagesOffset(I)I
    .locals 9
    .param p1, "pagesAmount"    # I

    .line 434
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 435
    .local v0, "currentOffset":I
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->visibleTextLayoutHeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 438
    .local v1, "currentPos":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 439
    nop

    .line 440
    iget v2, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->visibleTextLayoutHeight:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 437
    nop

    .line 443
    .local v2, "newPos":Landroidx/compose/ui/geometry/Rect;
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v3

    .line 444
    .local v3, "topLine":I
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v4

    .line 445
    .local v4, "lineSeparator":F
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    .line 450
    iget-object v6, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 445
    if-lez v5, :cond_1

    .line 447
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottomLeft-F1C5BW0()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    .line 445
    :goto_0
    return v5

    .line 435
    .end local v1    # "currentPos":Landroidx/compose/ui/geometry/Rect;
    .end local v2    # "newPos":Landroidx/compose/ui/geometry/Rect;
    .end local v3    # "topLine":I
    .end local v4    # "lineSeparator":F
    :cond_2
    :goto_1
    return v0
.end method

.method private final moveCursorTo(ZLkotlin/jvm/functions/Function0;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 12
    .param p1, "resetCachedX"    # Z
    .param p2, "proposedCursorMovement"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    .local v0, "$i$f$moveCursorTo":I
    move v1, p1

    .local v1, "resetCachedX$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v3, 0x0

    .line 639
    .local v3, "$i$f$applyIfNotEmpty":I
    if-eqz v1, :cond_0

    .line 640
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 642
    :cond_0
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    .line 643
    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v4, "$this$moveCursorTo_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 202
    .local v5, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    .line 205
    .local v6, "oldCursor":I
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 206
    nop

    .line 207
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 204
    invoke-static {v7, v6, v8}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v7

    .line 203
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v9

    .local v9, "newCursor":I
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v7

    .line 210
    .local v7, "newWedgeAffinity":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v9, v6, :cond_2

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 211
    :cond_2
    invoke-static {v9}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 213
    :cond_3
    if-eqz v7, :cond_4

    .line 214
    invoke-virtual {v4, v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 216
    :cond_4
    nop

    .line 643
    .end local v4    # "$this$moveCursorTo_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1":I
    .end local v6    # "oldCursor":I
    .end local v7    # "newWedgeAffinity":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v9    # "newCursor":I
    nop

    .line 645
    :cond_5
    nop

    .line 216
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v3    # "$i$f$applyIfNotEmpty":I
    return-object v2
.end method

.method static synthetic moveCursorTo$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 10
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .param p1, "resetCachedX"    # Z
    .param p2, "proposedCursorMovement"    # Lkotlin/jvm/functions/Function0;

    .line 197
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 198
    const/4 p1, 0x1

    .line 197
    :cond_0
    const/4 p3, 0x0

    .line 201
    .local p3, "$i$f$moveCursorTo":I
    move v0, p1

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v2, 0x0

    .line 639
    .local v2, "$i$f$applyIfNotEmpty":I
    if-eqz v0, :cond_1

    .line 640
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 642
    :cond_1
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_6

    .line 643
    move-object p4, v1

    .local p4, "$this$moveCursorTo_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1":I
    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    .line 205
    .local v4, "oldCursor":I
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 206
    nop

    .line 207
    invoke-static {p4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v6

    .line 204
    invoke-static {v5, v4, v6}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v5

    .line 203
    invoke-static {v5, v6}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v7

    .local v7, "newCursor":I
    invoke-static {v5, v6}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v5

    .line 210
    .local v5, "newWedgeAffinity":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v7, v4, :cond_3

    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    if-nez v6, :cond_4

    .line 211
    :cond_3
    invoke-static {v7}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v8

    invoke-virtual {p4, v8, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 213
    :cond_4
    if-eqz v5, :cond_5

    .line 214
    invoke-virtual {p4, v5}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 216
    :cond_5
    nop

    .line 643
    .end local v3    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1":I
    .end local v4    # "oldCursor":I
    .end local v5    # "newWedgeAffinity":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v7    # "newCursor":I
    .end local p4    # "$this$moveCursorTo_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 645
    :cond_6
    nop

    .line 216
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method


# virtual methods
.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 8
    .param p1, "or"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;"
        }
    .end annotation

    .line 159
    move-object v0, p0

    .line 617
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 618
    const/4 v1, 0x1

    .line 617
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 621
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 622
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 624
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 625
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v3, "$this$collapseLeftOr_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v4, 0x0

    .line 160
    .local v4, "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$collapseLeftOr$1":I
    iget-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_1
    invoke-direct {v3}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v5

    .line 166
    iget-wide v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 163
    if-eqz v5, :cond_2

    .line 164
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    goto :goto_1

    .line 166
    :cond_2
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 169
    :goto_1
    nop

    .line 625
    .end local v3    # "$this$collapseLeftOr_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v4    # "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$collapseLeftOr$1":I
    nop

    .line 627
    :cond_3
    nop

    .line 169
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 8
    .param p1, "or"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;"
        }
    .end annotation

    .line 172
    move-object v0, p0

    .line 628
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 629
    const/4 v1, 0x1

    .line 628
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 632
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 633
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 635
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 636
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v3, "$this$collapseRightOr_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v4, 0x0

    .line 173
    .local v4, "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$collapseRightOr$1":I
    iget-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 176
    :cond_1
    invoke-direct {v3}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v5

    .line 179
    iget-wide v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 176
    if-eqz v5, :cond_2

    .line 177
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 182
    :goto_1
    nop

    .line 636
    .end local v3    # "$this$collapseRightOr_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v4    # "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$collapseRightOr$1":I
    nop

    .line 638
    :cond_3
    nop

    .line 182
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v0
.end method

.method public final deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 15

    .line 317
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v2, 0x0

    .line 1027
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 1030
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 1031
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v3, "$this$deleteMovement_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 318
    .local v5, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$deleteMovement$1":I
    iget-object v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    .line 321
    iget-object v7, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 318
    if-nez v6, :cond_1

    .line 319
    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->deleteSelectedText()V

    goto :goto_1

    .line 321
    :cond_1
    nop

    .line 322
    const-string v6, ""

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    .line 323
    iget-object v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v6

    iget-wide v9, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    invoke-static {v6, v9}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v9

    .line 321
    nop

    .line 324
    iget-boolean v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isFromSoftKeyboard:Z

    .line 321
    xor-int/lit8 v12, v6, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    .line 328
    :goto_1
    iget-object v4, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v6

    iput-wide v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 330
    sget-object v4, Landroidx/compose/foundation/text/input/internal/WedgeAffinity;->Start:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    iput-object v4, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->wedgeAffinity:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    .line 331
    nop

    .line 1031
    .end local v3    # "$this$deleteMovement_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$deleteMovement$1":I
    nop

    .line 1033
    :cond_2
    nop

    .line 331
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final deselect()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 7

    .line 142
    move-object v0, p0

    .line 606
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 607
    const/4 v1, 0x1

    .line 606
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 610
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 611
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 613
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 614
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v3, "$this$deselect_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v4, 0x0

    .line 142
    .local v4, "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$deselect$1":I
    iget-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 614
    .end local v3    # "$this$deselect_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v4    # "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$deselect$1":I
    nop

    .line 616
    :cond_1
    nop

    .line 142
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v0
.end method

.method public final getInitialValue()Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    return-object v0
.end method

.method public final getInitialWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialWedgeAffinity:Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    return-object v0
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    .line 191
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    .line 185
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 114
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    return-wide v0
.end method

.method public final getWedgeAffinity()Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->wedgeAffinity:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    return-object v0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 15

    .line 275
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 277
    .local v0, "target":I
    :goto_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .local v1, "resetCachedX$iv":Z
    :goto_1
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 902
    .local v5, "$i$f$moveCursorTo":I
    move v6, v1

    .local v6, "resetCachedX$iv$iv":Z
    move-object v7, v4

    .local v7, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v8, 0x0

    .line 903
    .local v8, "$i$f$applyIfNotEmpty":I
    if-eqz v6, :cond_2

    .line 904
    invoke-static {v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 906
    :cond_2
    invoke-static {v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    .line 907
    move-object v2, v7

    check-cast v2, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v2, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v3, 0x0

    .line 908
    .local v3, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    .line 911
    .local v9, "oldCursor$iv":I
    const/4 v10, 0x0

    .line 278
    .local v10, "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorDownByLine$1":I
    iget-object v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v0, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v10

    .line 911
    .end local v10    # "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorDownByLine$1":I
    nop

    .line 912
    nop

    .line 913
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v11

    .line 910
    invoke-static {v10, v9, v11}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v10

    .line 909
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v12

    .local v12, "newCursor$iv":I
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v10

    .line 916
    .local v10, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v12, v9, :cond_4

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 917
    :cond_4
    invoke-static {v12}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 919
    :cond_5
    if-eqz v10, :cond_6

    .line 920
    invoke-virtual {v2, v10}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 922
    :cond_6
    nop

    .line 907
    .end local v2    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v3    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v9    # "oldCursor$iv":I
    .end local v10    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v12    # "newCursor$iv":I
    nop

    .line 923
    :cond_7
    nop

    .line 922
    .end local v6    # "resetCachedX$iv$iv":Z
    .end local v7    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v8    # "$i$f$applyIfNotEmpty":I
    nop

    .line 277
    .end local v1    # "resetCachedX$iv":Z
    .end local v4    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$moveCursorTo":I
    return-object v7
.end method

.method public final moveCursorDownByPage()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 13

    .line 308
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v2, 0x0

    .line 998
    .local v2, "$i$f$moveCursorTo":I
    move v3, v0

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 999
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 1002
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 1003
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v8, 0x0

    .line 1004
    .local v8, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    .line 1007
    .local v9, "oldCursor$iv":I
    const/4 v10, 0x0

    .line 308
    .local v10, "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorDownByPage$1":I
    invoke-direct {p0, v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->jumpByPagesOffset(I)I

    move-result v7

    .line 1007
    .end local v10    # "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorDownByPage$1":I
    nop

    .line 1008
    nop

    .line 1009
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 1006
    invoke-static {v7, v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v10

    .line 1005
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v7

    .local v7, "newCursor$iv":I
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v10

    .line 1012
    .local v10, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v7, v9, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1013
    :cond_1
    invoke-static {v7}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 1015
    :cond_2
    if-eqz v10, :cond_3

    .line 1016
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 1018
    :cond_3
    nop

    .line 1003
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "newCursor$iv":I
    .end local v8    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v9    # "oldCursor$iv":I
    .end local v10    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    nop

    .line 1019
    :cond_4
    nop

    .line 1018
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 308
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorLeftByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1

    .line 145
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1

    .line 231
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0
.end method

.method public final moveCursorNextByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 224
    move-object v0, p0

    .line 698
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 699
    const/4 v1, 0x1

    .line 698
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 702
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 703
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 704
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 706
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 707
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 708
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 711
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 224
    .local v9, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorNextByChar$1":I
    iget-object v10, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v9

    .line 711
    .end local v9    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorNextByChar$1":I
    nop

    .line 712
    nop

    .line 713
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 710
    invoke-static {v9, v8, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 709
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 716
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 717
    :cond_1
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 719
    :cond_2
    if-eqz v9, :cond_3

    .line 720
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 722
    :cond_3
    nop

    .line 707
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 723
    :cond_4
    nop

    .line 722
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 224
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 260
    move-object v0, p0

    .line 854
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 855
    const/4 v1, 0x1

    .line 854
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 858
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 859
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 860
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 862
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    .line 863
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 864
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 867
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 261
    .local v9, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorNextByParagraph$1":I
    iget-object v10, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    check-cast v10, Ljava/lang/CharSequence;

    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 262
    .local v10, "paragraphEnd":I
    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v11

    if-ne v10, v11, :cond_1

    iget-object v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 263
    iget-object v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    check-cast v11, Ljava/lang/CharSequence;

    add-int/lit8 v12, v10, 0x1

    invoke-static {v11, v12}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 265
    :cond_1
    nop

    .line 867
    .end local v9    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorNextByParagraph$1":I
    .end local v10    # "paragraphEnd":I
    nop

    .line 868
    nop

    .line 869
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v9

    .line 866
    invoke-static {v10, v8, v9}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 865
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 872
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_3

    .line 873
    :cond_2
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 875
    :cond_3
    if-eqz v9, :cond_4

    .line 876
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 878
    :cond_4
    nop

    .line 863
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 879
    :cond_5
    nop

    .line 878
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 266
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 244
    move-object v0, p0

    .line 776
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 777
    const/4 v1, 0x1

    .line 776
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 780
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 781
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 782
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 784
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_5

    .line 785
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v9, 0x0

    .line 786
    .local v9, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    .line 789
    .local v10, "oldCursor$iv":I
    const/4 v11, 0x0

    .line 245
    .local v11, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorNextByWord$1":I
    iget-object v12, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v12, :cond_1

    const/4 v13, 0x0

    invoke-static {p0, v12, v8, v7, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 789
    .end local v11    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorNextByWord$1":I
    :goto_1
    nop

    .line 790
    nop

    .line 791
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 788
    invoke-static {v7, v10, v8}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v7

    .line 787
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v7

    .line 794
    .local v7, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v10, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 795
    :cond_2
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 797
    :cond_3
    if-eqz v7, :cond_4

    .line 798
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 800
    :cond_4
    nop

    .line 785
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v9    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v10    # "oldCursor$iv":I
    .end local v11    # "newCursor$iv":I
    nop

    .line 801
    :cond_5
    nop

    .line 800
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 246
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorPrevByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 222
    move-object v0, p0

    .line 672
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 673
    const/4 v1, 0x1

    .line 672
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 676
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 677
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 678
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 680
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 681
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 682
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 685
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 222
    .local v9, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByChar$1":I
    iget-object v10, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v9

    .line 685
    .end local v9    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByChar$1":I
    nop

    .line 686
    nop

    .line 687
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 684
    invoke-static {v9, v8, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 683
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 690
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 691
    :cond_1
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 693
    :cond_2
    if-eqz v9, :cond_3

    .line 694
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 696
    :cond_3
    nop

    .line 681
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 697
    :cond_4
    nop

    .line 696
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 222
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorPrevByCodePointOrEmoji()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 218
    move-object v0, p0

    .line 646
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 647
    const/4 v1, 0x1

    .line 646
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 650
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 651
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 652
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 654
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 655
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 656
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 659
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 219
    .local v9, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByCodePointOrEmoji$1":I
    iget-object v10, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v10, v11, v12}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findCodePointOrEmojiStartBefore(Ljava/lang/String;II)I

    move-result v9

    .line 659
    .end local v9    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByCodePointOrEmoji$1":I
    nop

    .line 660
    nop

    .line 661
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 658
    invoke-static {v9, v8, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 657
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 664
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 665
    :cond_1
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 667
    :cond_2
    if-eqz v9, :cond_3

    .line 668
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 670
    :cond_3
    nop

    .line 655
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 671
    :cond_4
    nop

    .line 670
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 220
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 252
    move-object v0, p0

    .line 828
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 829
    const/4 v1, 0x1

    .line 828
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 832
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 833
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 834
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 836
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    .line 837
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 838
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 841
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 253
    .local v9, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByParagraph$1":I
    iget-object v10, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    check-cast v10, Ljava/lang/CharSequence;

    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 254
    .local v10, "paragraphStart":I
    iget-wide v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v11

    if-ne v10, v11, :cond_1

    if-eqz v10, :cond_1

    .line 255
    iget-object v11, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    check-cast v11, Ljava/lang/CharSequence;

    add-int/lit8 v12, v10, -0x1

    invoke-static {v11, v12}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 257
    :cond_1
    nop

    .line 841
    .end local v9    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByParagraph$1":I
    .end local v10    # "paragraphStart":I
    nop

    .line 842
    nop

    .line 843
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v9

    .line 840
    invoke-static {v10, v8, v9}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 839
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 846
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_3

    .line 847
    :cond_2
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 849
    :cond_3
    if-eqz v9, :cond_4

    .line 850
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 852
    :cond_4
    nop

    .line 837
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 853
    :cond_5
    nop

    .line 852
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 258
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 248
    move-object v0, p0

    .line 802
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 803
    const/4 v1, 0x1

    .line 802
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 806
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 807
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 808
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 810
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_5

    .line 811
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v9, 0x0

    .line 812
    .local v9, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    .line 815
    .local v10, "oldCursor$iv":I
    const/4 v11, 0x0

    .line 249
    .local v11, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByWord$1":I
    iget-object v12, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v12, :cond_1

    const/4 v13, 0x0

    invoke-static {p0, v12, v8, v7, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v8

    .line 815
    .end local v11    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorPrevByWord$1":I
    :cond_1
    nop

    .line 816
    nop

    .line 817
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v7

    .line 814
    invoke-static {v8, v10, v7}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v7

    .line 813
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v7

    .line 820
    .local v7, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v10, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 821
    :cond_2
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 823
    :cond_3
    if-eqz v7, :cond_4

    .line 824
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 826
    :cond_4
    nop

    .line 811
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v9    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v10    # "oldCursor$iv":I
    .end local v11    # "newCursor$iv":I
    nop

    .line 827
    :cond_5
    nop

    .line 826
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 250
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorRightByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1

    .line 152
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1

    .line 238
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 228
    move-object v0, p0

    .line 750
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 751
    const/4 v1, 0x1

    .line 750
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 754
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 755
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 756
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 758
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 759
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 760
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 763
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 228
    .local v9, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToEnd$1":I
    iget-object v10, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 763
    .end local v9    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToEnd$1":I
    nop

    .line 764
    nop

    .line 765
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 762
    invoke-static {v9, v8, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 761
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 768
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 769
    :cond_1
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 771
    :cond_2
    if-eqz v9, :cond_3

    .line 772
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 774
    :cond_3
    nop

    .line 759
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 775
    :cond_4
    nop

    .line 774
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 228
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 13

    .line 226
    move-object v0, p0

    .line 724
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 725
    const/4 v1, 0x1

    .line 724
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 728
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 729
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 730
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 732
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    if-eqz v6, :cond_4

    .line 733
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v8, 0x0

    .line 734
    .local v8, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    .line 737
    .local v9, "oldCursor$iv":I
    const/4 v10, 0x0

    .line 226
    .local v10, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToHome$1":I
    nop

    .line 737
    .end local v10    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToHome$1":I
    nop

    .line 738
    nop

    .line 739
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 736
    invoke-static {v7, v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v10

    .line 735
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v7

    .local v7, "newCursor$iv":I
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v10

    .line 742
    .local v10, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v7, v9, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v11

    if-nez v11, :cond_2

    .line 743
    :cond_1
    invoke-static {v7}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 745
    :cond_2
    if-eqz v10, :cond_3

    .line 746
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 748
    :cond_3
    nop

    .line 733
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "newCursor$iv":I
    .end local v8    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v9    # "oldCursor$iv":I
    .end local v10    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    nop

    .line 749
    :cond_4
    nop

    .line 748
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 226
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 300
    move-object v0, p0

    .line 950
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 951
    const/4 v1, 0x1

    .line 950
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 954
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 955
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 956
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 958
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_5

    .line 959
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v9, 0x0

    .line 960
    .local v9, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    .line 963
    .local v10, "oldCursor$iv":I
    const/4 v11, 0x0

    .line 301
    .local v11, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToLineEnd$1":I
    iget-object v12, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v12, :cond_1

    const/4 v13, 0x0

    invoke-static {p0, v12, v8, v7, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 963
    .end local v11    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToLineEnd$1":I
    :goto_1
    nop

    .line 964
    nop

    .line 965
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 962
    invoke-static {v7, v10, v8}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v7

    .line 961
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v7

    .line 968
    .local v7, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v10, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 969
    :cond_2
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 971
    :cond_3
    if-eqz v7, :cond_4

    .line 972
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 974
    :cond_4
    nop

    .line 959
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v9    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v10    # "oldCursor$iv":I
    .end local v11    # "newCursor$iv":I
    nop

    .line 975
    :cond_5
    nop

    .line 974
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 302
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1

    .line 283
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 1

    .line 290
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 296
    move-object v0, p0

    .line 924
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 925
    const/4 v1, 0x1

    .line 924
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 928
    .local v2, "$i$f$moveCursorTo":I
    move v3, v1

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 929
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 930
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 932
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_5

    .line 933
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v9, 0x0

    .line 934
    .local v9, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    .line 937
    .local v10, "oldCursor$iv":I
    const/4 v11, 0x0

    .line 297
    .local v11, "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToLineStart$1":I
    iget-object v12, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v12, :cond_1

    const/4 v13, 0x0

    invoke-static {p0, v12, v8, v7, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v8

    .line 937
    .end local v11    # "$i$a$-moveCursorTo$default-SelectionMovementDeletionContext$moveCursorToLineStart$1":I
    :cond_1
    nop

    .line 938
    nop

    .line 939
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v7

    .line 936
    invoke-static {v8, v10, v7}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v7

    .line 935
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v7, v8}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v7

    .line 942
    .local v7, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v10, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 943
    :cond_2
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 945
    :cond_3
    if-eqz v7, :cond_4

    .line 946
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 948
    :cond_4
    nop

    .line 933
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v9    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v10    # "oldCursor$iv":I
    .end local v11    # "newCursor$iv":I
    nop

    .line 949
    :cond_5
    nop

    .line 948
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 298
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 269
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 271
    .local v0, "target":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .local v1, "resetCachedX$iv":Z
    :goto_1
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 880
    .local v5, "$i$f$moveCursorTo":I
    move v6, v1

    .local v6, "resetCachedX$iv$iv":Z
    move-object v7, v4

    .local v7, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v8, 0x0

    .line 881
    .local v8, "$i$f$applyIfNotEmpty":I
    if-eqz v6, :cond_2

    .line 882
    invoke-static {v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 884
    :cond_2
    invoke-static {v7}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    .line 885
    move-object v2, v7

    check-cast v2, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v2, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v9, 0x0

    .line 886
    .local v9, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    .line 889
    .local v10, "oldCursor$iv":I
    const/4 v11, 0x0

    .line 271
    .local v11, "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorUpByLine$1":I
    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 889
    .end local v11    # "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorUpByLine$1":I
    nop

    .line 890
    nop

    .line 891
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v11

    .line 888
    invoke-static {v3, v10, v11}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v11

    .line 887
    invoke-static {v11, v12}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v3

    .local v3, "newCursor$iv":I
    invoke-static {v11, v12}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v11

    .line 894
    .local v11, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v3, v10, :cond_4

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v12

    if-nez v12, :cond_5

    .line 895
    :cond_4
    invoke-static {v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 897
    :cond_5
    if-eqz v11, :cond_6

    .line 898
    invoke-virtual {v2, v11}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 900
    :cond_6
    nop

    .line 885
    .end local v2    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v3    # "newCursor$iv":I
    .end local v9    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v10    # "oldCursor$iv":I
    .end local v11    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    nop

    .line 901
    :cond_7
    nop

    .line 900
    .end local v6    # "resetCachedX$iv$iv":Z
    .end local v7    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v8    # "$i$f$applyIfNotEmpty":I
    nop

    .line 271
    .end local v1    # "resetCachedX$iv":Z
    .end local v4    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$moveCursorTo":I
    return-object v7
.end method

.method public final moveCursorUpByPage()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 14

    .line 305
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v2, 0x0

    .line 976
    .local v2, "$i$f$moveCursorTo":I
    move v3, v0

    .local v3, "resetCachedX$iv$iv":Z
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 977
    .local v5, "$i$f$applyIfNotEmpty":I
    nop

    .line 980
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 981
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v6, "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v7, 0x0

    .line 982
    .local v7, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    .line 985
    .local v8, "oldCursor$iv":I
    const/4 v9, 0x0

    .line 305
    .local v9, "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorUpByPage$1":I
    const/4 v10, -0x1

    invoke-direct {p0, v10}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->jumpByPagesOffset(I)I

    move-result v9

    .line 985
    .end local v9    # "$i$a$-moveCursorTo-SelectionMovementDeletionContext$moveCursorUpByPage$1":I
    nop

    .line 986
    nop

    .line 987
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v10

    .line 984
    invoke-static {v9, v8, v10}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateNextCursorPositionAndWedgeAffinity(IILandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)J

    move-result-wide v9

    .line 983
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component1-impl(J)I

    move-result v11

    .local v11, "newCursor$iv":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/selection/CursorAndWedgeAffinity;->component2-impl(J)Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object v9

    .line 990
    .local v9, "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    if-ne v11, v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 991
    :cond_1
    invoke-static {v11}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setSelection-5zc-tL8(J)V

    .line 993
    :cond_2
    if-eqz v9, :cond_3

    .line 994
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 996
    :cond_3
    nop

    .line 981
    .end local v6    # "$this$moveCursorTo_u24lambda_u240$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v7    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$moveCursorTo$1$iv":I
    .end local v8    # "oldCursor$iv":I
    .end local v9    # "newWedgeAffinity$iv":Landroidx/compose/foundation/text/input/internal/WedgeAffinity;
    .end local v11    # "newCursor$iv":I
    nop

    .line 997
    :cond_4
    nop

    .line 996
    .end local v3    # "resetCachedX$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$f$applyIfNotEmpty":I
    nop

    .line 305
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v2    # "$i$f$moveCursorTo":I
    return-object v4
.end method

.method public final selectAll()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 8

    .line 140
    move-object v0, p0

    .line 595
    .local v0, "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    nop

    .line 596
    const/4 v1, 0x1

    .line 595
    .local v1, "resetCachedX$iv":Z
    const/4 v2, 0x0

    .line 599
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 600
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 602
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 603
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v3, "$this$selectAll_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v5, 0x0

    .line 140
    .local v5, "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$selectAll$1":I
    iget-object v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    iput-wide v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 603
    .end local v3    # "$this$selectAll_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v5    # "$i$a$-applyIfNotEmpty$default-SelectionMovementDeletionContext$selectAll$1":I
    nop

    .line 605
    :cond_1
    nop

    .line 140
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v1    # "resetCachedX$iv":Z
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .locals 8

    .line 312
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v2, 0x0

    .line 1020
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 1023
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 1024
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    .local v3, "$this$selectMovement_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    const/4 v4, 0x0

    .line 313
    .local v4, "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$selectMovement$1":I
    iget-object v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    iget-wide v6, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    .line 314
    nop

    .line 1024
    .end local v3    # "$this$selectMovement_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v4    # "$i$a$-applyIfNotEmpty-SelectionMovementDeletionContext$selectMovement$1":I
    nop

    .line 1026
    :cond_1
    nop

    .line 314
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final setSelection-5zc-tL8(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-<set-?>$0"    # J

    .line 114
    iput-wide p1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selection:J

    return-void
.end method

.method public final setWedgeAffinity(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    .line 116
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->wedgeAffinity:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    return-void
.end method
