.class public abstract Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextPreparedSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text/selection/BaseTextPreparedSelection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,413:1\n74#1,8:414\n74#1,8:422\n74#1,8:430\n74#1,8:438\n74#1,8:446\n74#1,8:454\n74#1,8:462\n74#1,8:470\n74#1,8:478\n74#1,8:486\n74#1,8:494\n74#1,8:502\n74#1,6:510\n81#1:517\n74#1,8:518\n74#1,8:526\n74#1,8:534\n75#1,7:542\n75#1,7:549\n74#1,8:556\n74#1,8:564\n74#1,8:572\n74#1,8:580\n75#1,7:588\n1#2:516\n30#3:595\n53#4,3:596\n*S KotlinDebug\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text/selection/BaseTextPreparedSelection\n*L\n92#1:414,8\n94#1:422,8\n96#1:430,8\n104#1:438,8\n113#1:446,8\n126#1:454,8\n158#1:462,8\n163#1:470,8\n168#1:478,8\n170#1:486,8\n172#1:494,8\n180#1:502,8\n190#1:510,6\n190#1:517\n194#1:518,8\n196#1:526,8\n204#1:534,8\n213#1:542,7\n216#1:549,7\n220#1:556,8\n224#1:564,8\n226#1:572,8\n234#1:580,8\n244#1:588,7\n322#1:595\n322#1:596,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u00083\u0008!\u0018\u0000 c*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002:\u0001cB1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ;\u0010&\u001a\u00028\u0000\"\u0004\u0008\u0001\u0010\'*\u0002H\'2\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0017\u0010*\u001a\u0013\u0012\u0004\u0012\u0002H\'\u0012\u0004\u0012\u00020,0+\u00a2\u0006\u0002\u0008-H\u0084\u0008\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0004J\u0018\u00102\u001a\u00020,2\u0006\u00103\u001a\u0002012\u0006\u00104\u001a\u000201H\u0004J\u000b\u00105\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u00107\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u00108\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u00109\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J$\u0010:\u001a\u00028\u00002\u0017\u0010;\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020,0+\u00a2\u0006\u0002\u0008-\u00a2\u0006\u0002\u0010<J$\u0010=\u001a\u00028\u00002\u0017\u0010;\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020,0+\u00a2\u0006\u0002\u0008-\u00a2\u0006\u0002\u0010<J\u0006\u0010>\u001a\u000201J\u0006\u0010?\u001a\u000201J\u0006\u0010@\u001a\u000201J\r\u0010A\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00106J\r\u0010B\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00106J\u000b\u0010C\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010D\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010E\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010F\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\r\u0010G\u001a\u0004\u0018\u000101\u00a2\u0006\u0002\u0010HJ\r\u0010I\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00106J\r\u0010J\u001a\u0004\u0018\u000101\u00a2\u0006\u0002\u0010HJ\r\u0010K\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00106J\u000b\u0010L\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010M\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010N\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010O\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\r\u0010P\u001a\u0004\u0018\u000101\u00a2\u0006\u0002\u0010HJ\u000b\u0010Q\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\r\u0010R\u001a\u0004\u0018\u000101\u00a2\u0006\u0002\u0010HJ\u000b\u0010S\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010T\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010U\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u000b\u0010V\u001a\u00028\u0000\u00a2\u0006\u0002\u00106J\u0008\u0010W\u001a\u00020)H\u0002J\u0017\u0010X\u001a\u000201*\u00020\u00082\u0008\u0008\u0002\u0010Y\u001a\u000201H\u0082\u0010J\u0017\u0010Z\u001a\u000201*\u00020\u00082\u0008\u0008\u0002\u0010Y\u001a\u000201H\u0082\u0010J\u0016\u0010[\u001a\u000201*\u00020\u00082\u0008\u0008\u0002\u0010Y\u001a\u000201H\u0002J\u0016\u0010\\\u001a\u000201*\u00020\u00082\u0008\u0008\u0002\u0010Y\u001a\u000201H\u0002J\u0014\u0010]\u001a\u000201*\u00020\u00082\u0006\u0010^\u001a\u000201H\u0002J\u0008\u0010_\u001a\u000201H\u0002J\u0008\u0010`\u001a\u000201H\u0002J\u0008\u0010a\u001a\u000201H\u0002J\u0010\u0010b\u001a\u0002012\u0006\u00100\u001a\u000201H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0010\"\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006d"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;",
        "T",
        "",
        "originalText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "originalSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "layoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "state",
        "Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;",
        "<init>",
        "(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getOriginalText",
        "()Landroidx/compose/ui/text/AnnotatedString;",
        "getOriginalSelection-d9O1mEE",
        "()J",
        "J",
        "getLayoutResult",
        "()Landroidx/compose/ui/text/TextLayoutResult;",
        "getOffsetMapping",
        "()Landroidx/compose/ui/text/input/OffsetMapping;",
        "getState",
        "()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;",
        "selection",
        "getSelection-d9O1mEE",
        "setSelection-5zc-tL8",
        "(J)V",
        "annotatedString",
        "getAnnotatedString",
        "setAnnotatedString",
        "(Landroidx/compose/ui/text/AnnotatedString;)V",
        "text",
        "",
        "getText$foundation",
        "()Ljava/lang/String;",
        "apply",
        "U",
        "resetCachedX",
        "",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;",
        "setCursor",
        "offset",
        "",
        "setSelection",
        "start",
        "end",
        "selectAll",
        "()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;",
        "deselect",
        "moveCursorLeft",
        "moveCursorRight",
        "collapseLeftOr",
        "or",
        "(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;",
        "collapseRightOr",
        "getPrecedingCodePointOrEmojiStartIndex",
        "getPrecedingCharacterIndex",
        "getNextCharacterIndex",
        "moveCursorPrev",
        "moveCursorNext",
        "moveCursorToHome",
        "moveCursorToEnd",
        "moveCursorLeftByWord",
        "moveCursorRightByWord",
        "getNextWordOffset",
        "()Ljava/lang/Integer;",
        "moveCursorNextByWord",
        "getPreviousWordOffset",
        "moveCursorPrevByWord",
        "moveCursorPrevByParagraph",
        "moveCursorNextByParagraph",
        "moveCursorUpByLine",
        "moveCursorDownByLine",
        "getLineStartByOffset",
        "moveCursorToLineStart",
        "getLineEndByOffset",
        "moveCursorToLineEnd",
        "moveCursorToLineLeftSide",
        "moveCursorToLineRightSide",
        "selectMovement",
        "isLtr",
        "getNextWordOffsetForLayout",
        "currentOffset",
        "getPrevWordOffset",
        "getLineStartByOffsetForLayout",
        "getLineEndByOffsetForLayout",
        "jumpByLinesOffset",
        "linesAmount",
        "transformedEndOffset",
        "transformedMinOffset",
        "transformedMaxOffset",
        "charOffset",
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

.field public static final Companion:Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

.field public static final NoCharacterFound:I = -0x1


# instance fields
.field private annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field private final layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field private final originalSelection:J

.field private final originalText:Landroidx/compose/ui/text/AnnotatedString;

.field private selection:J

.field private final state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->Companion:Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V
    .locals 2
    .param p1, "originalText"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p2, "originalSelection"    # J
    .param p4, "layoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p5, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p6, "state"    # Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    .line 62
    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    .line 63
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 64
    iput-object p5, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 65
    iput-object p6, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 67
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    iput-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 69
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 60
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    return-void
.end method

.method public static synthetic apply$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "resetCachedX"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 74
    if-nez p5, :cond_4

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    :cond_0
    const/4 p4, 0x0

    .line 75
    .local p4, "$i$f$apply":I
    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_3

    .line 79
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_3
    const-string/jumbo p5, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p5, p1

    check-cast p5, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    return-object p5

    .line 74
    .end local p4    # "$i$f$apply":I
    :cond_4
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p5, "Super calls with default arguments not supported in this target, function: apply"

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private final charOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 339
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    return v0
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3
    .param p1, "$this$getLineEndByOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 289
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 290
    .local v0, "currentLine":I
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v1

    return v1
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 286
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 287
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedMaxOffset()I

    move-result p2

    .line 286
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: getLineEndByOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3
    .param p1, "$this$getLineStartByOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 282
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 283
    .local v0, "currentLine":I
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v1

    return v1
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 279
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 280
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedMinOffset()I

    move-result p2

    .line 279
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: getLineStartByOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 4
    .param p1, "$this$getNextWordOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 253
    nop

    .line 254
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    return v0

    .line 257
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 258
    .local v0, "currentWord":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    .line 259
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v2

    .line 258
    return v2
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 251
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 252
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p2

    .line 251
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: getNextWordOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getPrevWordOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 4
    .param p1, "$this$getPrevWordOffset"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 267
    nop

    .line 268
    :goto_0
    if-gtz p2, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 272
    .local v0, "currentWord":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 273
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v2

    .line 272
    return v2
.end method

.method static synthetic getPrevWordOffset$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 265
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 266
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p2

    .line 265
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrevWordOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: getPrevWordOffset"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isLtr()Z
    .locals 2

    .line 247
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    :goto_0
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 20
    .param p1, "$this$jumpByLinesOffset"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "linesAmount"    # I

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result v2

    .line 296
    .local v2, "currentOffset":I
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->getCachedX()Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_0

    .line 297
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->setCachedX(Ljava/lang/Float;)V

    .line 300
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v3

    add-int v3, v3, p2

    .line 301
    .local v3, "targetLine":I
    nop

    .line 302
    if-gez v3, :cond_1

    .line 303
    const/4 v4, 0x0

    return v4

    .line 305
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 306
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    return v4

    .line 310
    :cond_2
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v4

    const/4 v5, 0x1

    int-to-float v6, v5

    sub-float/2addr v4, v6

    .line 312
    .local v4, "y":F
    iget-object v6, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->getCachedX()Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .local v7, "it":F
    const/4 v8, 0x0

    .line 313
    .local v8, "$i$a$-also-BaseTextPreparedSelection$jumpByLinesOffset$x$1":I
    nop

    .line 314
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v9

    cmpl-float v9, v7, v9

    if-gez v9, :cond_4

    .line 315
    :cond_3
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_5

    .line 317
    :cond_4
    invoke-virtual {v1, v3, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v5

    return v5

    .line 319
    :cond_5
    nop

    .line 312
    .end local v7    # "it":F
    .end local v8    # "$i$a$-also-BaseTextPreparedSelection$jumpByLinesOffset$x$1":I
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 311
    nop

    .line 322
    .local v5, "x":F
    move v6, v4

    .local v6, "y$iv":F
    move v7, v5

    .local v7, "x$iv":F
    const/4 v8, 0x0

    .line 595
    .local v8, "$i$f$Offset":I
    move v9, v6

    .local v9, "val2$iv$iv":F
    move v10, v7

    .local v10, "val1$iv$iv":F
    const/4 v11, 0x0

    .line 596
    .local v11, "$i$f$packFloats":I
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 597
    .local v12, "v1$iv$iv":J
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 598
    .local v14, "v2$iv$iv":J
    const/16 v16, 0x20

    shl-long v16, v12, v16

    const-wide v18, 0xffffffffL

    and-long v18, v14, v18

    or-long v9, v16, v18

    .line 595
    .end local v9    # "val2$iv$iv":F
    .end local v10    # "val1$iv$iv":F
    .end local v11    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    .line 322
    .end local v6    # "y$iv":F
    .end local v7    # "x$iv":F
    .end local v8    # "$i$f$Offset":I
    invoke-virtual {v1, v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v6

    .line 516
    .local v6, "it":I
    const/4 v7, 0x0

    .line 322
    .local v7, "$i$a$-let-BaseTextPreparedSelection$jumpByLinesOffset$newOffset$1":I
    iget-object v8, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v8, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v6

    .line 321
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$jumpByLinesOffset$newOffset$1":I
    nop

    .line 324
    .local v6, "newOffset":I
    return v6
.end method

.method private final moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 163
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 470
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 471
    .local v3, "$i$f$apply":I
    nop

    .line 472
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 474
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 475
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorNext_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 164
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorNext$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextCharacterIndex()I

    move-result v6

    .line 165
    .local v6, "next":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 166
    :cond_1
    nop

    .line 475
    .end local v4    # "$this$moveCursorNext_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorNext$1":I
    .end local v6    # "next":I
    nop

    .line 477
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 166
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method private final moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 190
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 510
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 511
    .local v3, "$i$f$apply":I
    nop

    .line 512
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 514
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 515
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorNextByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 190
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorNextByWord$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 516
    .local v6, "it":I
    const/4 v7, 0x0

    .line 190
    .local v7, "$i$a$-let-BaseTextPreparedSelection$moveCursorNextByWord$1$1":I
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 515
    .end local v4    # "$this$moveCursorNextByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorNextByWord$1":I
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$moveCursorNextByWord$1$1":I
    :cond_1
    nop

    .line 517
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 190
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method private final moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 158
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 462
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 463
    .local v3, "$i$f$apply":I
    nop

    .line 464
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 466
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 467
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorPrev_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 159
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorPrev$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v6

    .line 160
    .local v6, "prev":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 161
    :cond_1
    nop

    .line 467
    .end local v4    # "$this$moveCursorPrev_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorPrev$1":I
    .end local v6    # "prev":I
    nop

    .line 469
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 161
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method private final moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 194
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 518
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 519
    .local v3, "$i$f$apply":I
    nop

    .line 520
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 522
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 523
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorPrevByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 194
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorPrevByWord$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 516
    .local v6, "it":I
    const/4 v7, 0x0

    .line 194
    .local v7, "$i$a$-let-BaseTextPreparedSelection$moveCursorPrevByWord$1$1":I
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 523
    .end local v4    # "$this$moveCursorPrevByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorPrevByWord$1":I
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$moveCursorPrevByWord$1$1":I
    :cond_1
    nop

    .line 525
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 194
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method private final transformedEndOffset()I
    .locals 3

    .line 328
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    return v0
.end method

.method private final transformedMaxOffset()I
    .locals 3

    .line 336
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    return v0
.end method

.method private final transformedMinOffset()I
    .locals 3

    .line 332
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final apply(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2
    .param p1, "$this$apply"    # Ljava/lang/Object;
    .param p2, "resetCachedX"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-TU;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$apply":I
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

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

    .line 79
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    return-object v1
.end method

.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 10
    .param p1, "or"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 113
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 446
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 447
    .local v3, "$i$f$apply":I
    nop

    .line 448
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 450
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string/jumbo v5, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    if-eqz v4, :cond_3

    .line 451
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$collapseLeftOr_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$a$-apply$default-BaseTextPreparedSelection$collapseLeftOr$1":I
    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 117
    :cond_1
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v7

    .line 120
    iget-wide v8, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 117
    if-eqz v7, :cond_2

    .line 118
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 123
    :goto_1
    nop

    .line 451
    .end local v4    # "$this$collapseLeftOr_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v6    # "$i$a$-apply$default-BaseTextPreparedSelection$collapseLeftOr$1":I
    nop

    .line 453
    :cond_3
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 123
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 10
    .param p1, "or"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 126
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 454
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 455
    .local v3, "$i$f$apply":I
    nop

    .line 456
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 458
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string/jumbo v5, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    if-eqz v4, :cond_3

    .line 459
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$collapseRightOr_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$a$-apply$default-BaseTextPreparedSelection$collapseRightOr$1":I
    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_1
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v7

    .line 133
    iget-wide v8, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 130
    if-eqz v7, :cond_2

    .line 131
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    goto :goto_1

    .line 133
    :cond_2
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 136
    :goto_1
    nop

    .line 459
    .end local v4    # "$this$collapseRightOr_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v6    # "$i$a$-apply$default-BaseTextPreparedSelection$collapseRightOr$1":I
    nop

    .line 461
    :cond_3
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 136
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final deselect()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 94
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 422
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 423
    .local v3, "$i$f$apply":I
    nop

    .line 424
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 426
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 427
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$deselect_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 94
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$deselect$1":I
    iget-wide v6, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 427
    .end local v4    # "$this$deselect_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$deselect$1":I
    nop

    .line 429
    :cond_1
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 94
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method public final getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    return-object v0
.end method

.method public final getLineEndByOffset()Ljava/lang/Integer;
    .locals 4

    .line 222
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getLineStartByOffset()Ljava/lang/Integer;
    .locals 4

    .line 218
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    .line 156
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getNextWordOffset()Ljava/lang/Integer;
    .locals 4

    .line 188
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    return-object v0
.end method

.method public final getOriginalSelection-d9O1mEE()J
    .locals 2

    .line 62
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    return-wide v0
.end method

.method public final getOriginalText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPrecedingCodePointOrEmojiStartIndex()I
    .locals 3

    .line 144
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    .line 146
    nop

    .line 144
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findCodePointOrEmojiStartBefore(Ljava/lang/String;II)I

    move-result v0

    .line 147
    return v0
.end method

.method public final getPreviousWordOffset()Ljava/lang/Integer;
    .locals 4

    .line 192
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrevWordOffset$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 67
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    return-wide v0
.end method

.method public final getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    return-object v0
.end method

.method public final getText$foundation()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "$this$apply$iv":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v3, 0x0

    .line 549
    .local v3, "$i$f$apply":I
    nop

    .line 552
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 553
    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorDownByLine_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v6, 0x0

    .line 216
    .local v6, "$i$a$-apply-BaseTextPreparedSelection$moveCursorDownByLine$1":I
    iget-object v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v7, :cond_1

    invoke-direct {v4, v7, v5}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v5

    .line 516
    .local v5, "it":I
    const/4 v7, 0x0

    .line 216
    .local v7, "$i$a$-let-BaseTextPreparedSelection$moveCursorDownByLine$1$1":I
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 553
    .end local v4    # "$this$moveCursorDownByLine_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "it":I
    .end local v6    # "$i$a$-apply-BaseTextPreparedSelection$moveCursorDownByLine$1":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$moveCursorDownByLine$1$1":I
    :cond_1
    nop

    .line 555
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 216
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$this$apply$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorLeft()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 430
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 431
    .local v3, "$i$f$apply":I
    nop

    .line 432
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 434
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 435
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorLeft_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 97
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorLeft$1":I
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_1

    .line 100
    :cond_1
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 102
    :goto_1
    nop

    .line 435
    .end local v4    # "$this$moveCursorLeft_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorLeft$1":I
    nop

    .line 437
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 102
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 172
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 494
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 495
    .local v3, "$i$f$apply":I
    nop

    .line 496
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 498
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 499
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorLeftByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 173
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorLeftByWord$1":I
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_1

    .line 176
    :cond_1
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 178
    :goto_1
    nop

    .line 499
    .end local v4    # "$this$moveCursorLeftByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorLeftByWord$1":I
    nop

    .line 501
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 178
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 204
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 534
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 535
    .local v3, "$i$f$apply":I
    nop

    .line 536
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 538
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 539
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorNextByParagraph_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 205
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorNextByParagraph$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 206
    .local v6, "paragraphEnd":I
    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 207
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    add-int/lit8 v8, v6, 0x1

    invoke-static {v7, v8}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 209
    :cond_1
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 210
    nop

    .line 539
    .end local v4    # "$this$moveCursorNextByParagraph_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorNextByParagraph$1":I
    .end local v6    # "paragraphEnd":I
    nop

    .line 541
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 210
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 196
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 526
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 527
    .local v3, "$i$f$apply":I
    nop

    .line 528
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 530
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 531
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorPrevByParagraph_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 197
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorPrevByParagraph$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 198
    .local v6, "paragraphStart":I
    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    if-ne v6, v7, :cond_1

    if-eqz v6, :cond_1

    .line 199
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    add-int/lit8 v8, v6, -0x1

    invoke-static {v7, v8}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 201
    :cond_1
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 202
    nop

    .line 531
    .end local v4    # "$this$moveCursorPrevByParagraph_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorPrevByParagraph$1":I
    .end local v6    # "paragraphStart":I
    nop

    .line 533
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 202
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorRight()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 104
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 438
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 439
    .local v3, "$i$f$apply":I
    nop

    .line 440
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 442
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 443
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorRight_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 105
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorRight$1":I
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_1

    .line 108
    :cond_1
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 110
    :goto_1
    nop

    .line 443
    .end local v4    # "$this$moveCursorRight_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorRight$1":I
    nop

    .line 445
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 110
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 180
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 502
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 503
    .local v3, "$i$f$apply":I
    nop

    .line 504
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 506
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 507
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorRightByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 181
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorRightByWord$1":I
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_1

    .line 184
    :cond_1
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 186
    :goto_1
    nop

    .line 507
    .end local v4    # "$this$moveCursorRightByWord_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorRightByWord$1":I
    nop

    .line 509
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 186
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 170
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 486
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 487
    .local v3, "$i$f$apply":I
    nop

    .line 488
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 490
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 491
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorToEnd_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 170
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToEnd$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 491
    .end local v4    # "$this$moveCursorToEnd_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToEnd$1":I
    nop

    .line 493
    :cond_1
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 170
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 168
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 478
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 479
    .local v3, "$i$f$apply":I
    nop

    .line 480
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 482
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    .line 483
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorToHome_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v6, 0x0

    .line 168
    .local v6, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToHome$1":I
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 483
    .end local v4    # "$this$moveCursorToHome_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v6    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToHome$1":I
    nop

    .line 485
    :cond_1
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 168
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 224
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 564
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 565
    .local v3, "$i$f$apply":I
    nop

    .line 566
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 568
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 569
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorToLineEnd_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 224
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineEnd$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffset()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 516
    .local v6, "it":I
    const/4 v7, 0x0

    .line 224
    .local v7, "$i$a$-let-BaseTextPreparedSelection$moveCursorToLineEnd$1$1":I
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 569
    .end local v4    # "$this$moveCursorToLineEnd_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineEnd$1":I
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$moveCursorToLineEnd$1$1":I
    :cond_1
    nop

    .line 571
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 224
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 226
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 572
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 573
    .local v3, "$i$f$apply":I
    nop

    .line 574
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 576
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 577
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorToLineLeftSide_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 227
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineLeftSide$1":I
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 232
    :goto_1
    nop

    .line 577
    .end local v4    # "$this$moveCursorToLineLeftSide_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineLeftSide$1":I
    nop

    .line 579
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 232
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 234
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 580
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 581
    .local v3, "$i$f$apply":I
    nop

    .line 582
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 584
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 585
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorToLineRightSide_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 235
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineRightSide$1":I
    invoke-direct {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 240
    :goto_1
    nop

    .line 585
    .end local v4    # "$this$moveCursorToLineRightSide_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineRightSide$1":I
    nop

    .line 587
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 240
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 220
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 556
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 557
    .local v3, "$i$f$apply":I
    nop

    .line 558
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 560
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 561
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorToLineStart_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineStart$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffset()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 516
    .local v6, "it":I
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$a$-let-BaseTextPreparedSelection$moveCursorToLineStart$1$1":I
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 561
    .end local v4    # "$this$moveCursorToLineStart_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply$default-BaseTextPreparedSelection$moveCursorToLineStart$1":I
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$moveCursorToLineStart$1$1":I
    :cond_1
    nop

    .line 563
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 220
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "$this$apply$iv":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v3, 0x0

    .line 542
    .local v3, "$i$f$apply":I
    nop

    .line 545
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 546
    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$moveCursorUpByLine_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 213
    .local v5, "$i$a$-apply-BaseTextPreparedSelection$moveCursorUpByLine$1":I
    iget-object v6, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v6, :cond_1

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v6

    .line 516
    .local v6, "it":I
    const/4 v7, 0x0

    .line 213
    .local v7, "$i$a$-let-BaseTextPreparedSelection$moveCursorUpByLine$1$1":I
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 546
    .end local v4    # "$this$moveCursorUpByLine_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply-BaseTextPreparedSelection$moveCursorUpByLine$1":I
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-BaseTextPreparedSelection$moveCursorUpByLine$1$1":I
    :cond_1
    nop

    .line 548
    :cond_2
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 213
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$this$apply$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final selectAll()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/Object;
    move-object v1, p0

    .line 414
    .local v1, "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v2, 0x1

    .local v2, "resetCachedX$iv":Z
    const/4 v3, 0x0

    .line 415
    .local v3, "$i$f$apply":I
    nop

    .line 416
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 418
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    .line 419
    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$selectAll_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v6, 0x0

    .line 92
    .local v6, "$i$a$-apply$default-BaseTextPreparedSelection$selectAll$1":I
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setSelection(II)V

    .line 419
    .end local v4    # "$this$selectAll_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v6    # "$i$a$-apply$default-BaseTextPreparedSelection$selectAll$1":I
    nop

    .line 421
    :cond_1
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 92
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v2    # "resetCachedX$iv":Z
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "$this$apply$iv":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v3, 0x0

    .line 588
    .local v3, "$i$f$apply":I
    nop

    .line 591
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 592
    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .local v4, "$this$selectMovement_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    const/4 v5, 0x0

    .line 244
    .local v5, "$i$a$-apply-BaseTextPreparedSelection$selectMovement$1":I
    iget-wide v6, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v6

    iget-wide v7, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 592
    .end local v4    # "$this$selectMovement_u24lambda_u240":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v5    # "$i$a$-apply-BaseTextPreparedSelection$selectMovement$1":I
    nop

    .line 594
    :cond_1
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 244
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$this$apply$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .end local v3    # "$i$f$apply":I
    return-object v0
.end method

.method public final setAnnotatedString(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/text/AnnotatedString;

    .line 69
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-void
.end method

.method protected final setCursor(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 85
    invoke-virtual {p0, p1, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setSelection(II)V

    .line 86
    return-void
.end method

.method protected final setSelection(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 89
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 90
    return-void
.end method

.method public final setSelection-5zc-tL8(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-<set-?>$0"    # J

    .line 67
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    return-void
.end method
