.class public final Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "TextFieldCoreModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldCoreModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldCoreModifier.kt\nandroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 5 Rect.kt\nandroidx/compose/ui/geometry/Rect\n+ 6 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n*L\n1#1,684:1\n1#2:685\n646#3:686\n635#3:687\n233#4:688\n57#5:689\n85#6,5:690\n*S KotlinDebug\n*F\n+ 1 TextFieldCoreModifier.kt\nandroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode\n*L\n544#1:686\n544#1:687\n558#1:688\n579#1:689\n221#1:690,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006Ba\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010/\u001a\u000200H\u0016J`\u00101\u001a\u0002002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ#\u00102\u001a\u000203*\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000c\u0010;\u001a\u000200*\u00020<H\u0016J#\u0010=\u001a\u000203*\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008>\u0010:J#\u0010?\u001a\u000203*\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008@\u0010:J\'\u0010A\u001a\u00020)2\u0006\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020)2\u0006\u0010D\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ3\u0010G\u001a\u000200*\u00020H2\u0006\u0010I\u001a\u00020)2\u0006\u0010J\u001a\u00020)2\u0006\u0010B\u001a\u00020%2\u0006\u0010K\u001a\u00020LH\u0002\u00a2\u0006\u0004\u0008M\u0010NJ#\u0010O\u001a\u000200*\u00020P2\u0006\u0010Q\u001a\u00020%2\u0006\u0010R\u001a\u00020SH\u0002\u00a2\u0006\u0004\u0008T\u0010UJ(\u0010V\u001a\u000200*\u00020P2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020%0X2\u0006\u0010R\u001a\u00020SH\u0002J\u0014\u0010Z\u001a\u000200*\u00020P2\u0006\u0010R\u001a\u00020SH\u0002J\u000c\u0010[\u001a\u000200*\u00020PH\u0002J\u0008\u0010\\\u001a\u000200H\u0002J\u0010\u0010]\u001a\u0002002\u0006\u0010^\u001a\u00020_H\u0016J\u000c\u0010`\u001a\u000200*\u00020aH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006b"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "isFocused",
        "",
        "isDragHovered",
        "textLayoutState",
        "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
        "textFieldState",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "textFieldSelectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "writeable",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "toolbarRequester",
        "Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;",
        "platformSelectionBehaviors",
        "Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;",
        "<init>",
        "(ZZLandroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;)V",
        "cursorAnimation",
        "Landroidx/compose/foundation/text/input/internal/CursorAnimationState;",
        "showCursor",
        "getShowCursor",
        "()Z",
        "changeObserverJob",
        "Lkotlinx/coroutines/Job;",
        "previousSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "previousCursorRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "previousTextLayoutSize",
        "",
        "previousContainerSize",
        "textFieldMagnifierNode",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;",
        "textContextMenuToolbarHandlerNode",
        "Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;",
        "onAttach",
        "",
        "updateNode",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "measureVerticalScroll",
        "measureVerticalScroll-3p2s80s",
        "measureHorizontalScroll",
        "measureHorizontalScroll-3p2s80s",
        "calculateOffsetToFollow",
        "currSelection",
        "currContainerSize",
        "currTextLayoutSize",
        "calculateOffsetToFollow-8ffj60Q",
        "(JII)I",
        "updateScrollState",
        "Landroidx/compose/ui/unit/Density;",
        "containerSize",
        "textLayoutSize",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "updateScrollState-tIlFzwE",
        "(Landroidx/compose/ui/unit/Density;IIJLandroidx/compose/ui/unit/LayoutDirection;)V",
        "drawSelection",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "selection",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "drawSelection-Sb-Bc2M",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/text/TextLayoutResult;)V",
        "drawHighlight",
        "highlight",
        "Lkotlin/Pair;",
        "Landroidx/compose/foundation/text/input/TextHighlightType;",
        "drawText",
        "drawCursor",
        "startCursorJob",
        "onGloballyPositioned",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field private changeObserverJob:Lkotlinx/coroutines/Job;

.field private cursorAnimation:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

.field private cursorBrush:Landroidx/compose/ui/graphics/Brush;

.field private isDragHovered:Z

.field private isFocused:Z

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

.field private previousContainerSize:I

.field private previousCursorRect:Landroidx/compose/ui/geometry/Rect;

.field private previousSelection:Landroidx/compose/ui/text/TextRange;

.field private previousTextLayoutSize:I

.field private scrollState:Landroidx/compose/foundation/ScrollState;

.field private final textContextMenuToolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

.field private final textFieldMagnifierNode:Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

.field private textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field private textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field private textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

.field private toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

.field private writeable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->$stable:I

    return-void
.end method

.method public constructor <init>(ZZLandroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;)V
    .locals 16
    .param p1, "isFocused"    # Z
    .param p2, "isDragHovered"    # Z
    .param p3, "textLayoutState"    # Landroidx/compose/foundation/text/input/internal/TextLayoutState;
    .param p4, "textFieldState"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p5, "textFieldSelectionState"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p6, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p7, "writeable"    # Z
    .param p8, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p9, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p10, "toolbarRequester"    # Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;
    .param p11, "platformSelectionBehaviors"    # Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 135
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 137
    move/from16 v1, p1

    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 138
    move/from16 v2, p2

    iput-boolean v2, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isDragHovered:Z

    .line 139
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    .line 140
    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 141
    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 142
    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 143
    move/from16 v7, p7

    iput-boolean v7, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->writeable:Z

    .line 144
    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 145
    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 146
    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 147
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 190
    new-instance v12, Landroidx/compose/ui/geometry/Rect;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-direct {v12, v13, v13, v13, v13}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 195
    nop

    .line 197
    iget-object v12, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 198
    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 199
    iget-object v14, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    .line 200
    iget-boolean v15, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    if-nez v15, :cond_1

    iget-boolean v15, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isDragHovered:Z

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v15, 0x1

    .line 196
    :goto_1
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/foundation/text/input/internal/selection/AndroidTextFieldMagnifier_androidKt;->textFieldMagnifierNode(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Z)Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/node/DelegatableNode;

    .line 195
    invoke-virtual {v0, v12}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    .line 205
    nop

    .line 206
    new-instance v12, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 207
    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 205
    new-instance v14, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1;

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2;

    invoke-direct {v1, v0, v15}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v15, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)V

    .line 206
    invoke-direct {v12, v13, v14, v1, v15}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v12, Landroidx/compose/ui/node/DelegatableNode;

    .line 205
    invoke-virtual {v0, v12}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    iput-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textContextMenuToolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 135
    return-void
.end method

.method public static final synthetic access$getCursorAnimation$p(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorAnimation:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    return-object v0
.end method

.method public static final synthetic access$getPlatformSelectionBehaviors$p(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    return-object v0
.end method

.method public static final synthetic access$getScrollState$p(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/ScrollState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    return-object v0
.end method

.method public static final synthetic access$getTextFieldSelectionState$p(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    return-object v0
.end method

.method public static final synthetic access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public static final synthetic access$getTextLayoutState$p(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text/input/internal/TextLayoutState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    return-object v0
.end method

.method private final calculateOffsetToFollow-8ffj60Q(JII)I
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-currSelection$0"    # J
    .param p3, "currContainerSize"    # I
    .param p4, "currTextLayoutSize"    # I

    .line 382
    nop

    .line 383
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousSelection:Landroidx/compose/ui/text/TextRange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    goto :goto_3

    .line 384
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousSelection:Landroidx/compose/ui/text/TextRange;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    goto :goto_3

    .line 385
    :cond_3
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousTextLayoutSize:I

    if-ne p4, v0, :cond_5

    .line 386
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousContainerSize:I

    if-eq p3, v0, :cond_4

    goto :goto_2

    .line 387
    :cond_4
    const/4 v0, -0x1

    goto :goto_3

    .line 386
    :cond_5
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    .line 382
    :goto_3
    return v0
.end method

.method private final drawCursor(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 17
    .param p1, "$this$drawCursor"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorAnimation:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->getCursorAlpha()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v12, v1

    .line 570
    .local v12, "cursorAlphaValue":F
    cmpg-float v1, v12, v2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 572
    :cond_2
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 575
    .local v1, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 576
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTopCenter-F1C5BW0()J

    move-result-wide v5

    .line 577
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v7

    .line 579
    move-object v2, v1

    .local v2, "this_$iv":Landroidx/compose/ui/geometry/Rect;
    const/4 v3, 0x0

    .line 689
    .local v3, "$i$f$getWidth":I
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v9

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    .line 579
    .end local v2    # "this_$iv":Landroidx/compose/ui/geometry/Rect;
    .end local v3    # "$i$f$getWidth":I
    nop

    .line 574
    nop

    .line 575
    nop

    .line 576
    nop

    .line 577
    nop

    .line 579
    nop

    .line 574
    nop

    .line 578
    nop

    .line 574
    const/16 v15, 0x1b0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-1RTmtNc$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 581
    return-void

    .line 570
    .end local v1    # "cursorRect":Landroidx/compose/ui/geometry/Rect;
    :cond_3
    :goto_2
    return-void
.end method

.method private final drawHighlight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lkotlin/Pair;Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 18
    .param p1, "$this$drawHighlight"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p2, "highlight"    # Lkotlin/Pair;
    .param p3, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Pair<",
            "Landroidx/compose/foundation/text/input/TextHighlightType;",
            "Landroidx/compose/ui/text/TextRange;",
            ">;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ")V"
        }
    .end annotation

    .line 531
    invoke-virtual/range {p2 .. p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/TextHighlightType;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextHighlightType;->unbox-impl()I

    move-result v0

    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    .line 533
    .local v1, "range":J
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 535
    :cond_0
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v3

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v4

    move-object/from16 v5, p3

    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/Path;

    move-result-object v7

    .line 537
    .local v7, "highlightPath":Landroidx/compose/ui/graphics/Path;
    sget-object v3, Landroidx/compose/foundation/text/input/TextHighlightType;->Companion:Landroidx/compose/foundation/text/input/TextHighlightType$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextHighlightType$Companion;->getHandwritingDeletePreview-s-xJuwY()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/TextHighlightType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    invoke-virtual {v5}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v8

    .line 541
    .local v8, "brush":Landroidx/compose/ui/graphics/Brush;
    if-eqz v8, :cond_1

    .line 542
    const/16 v13, 0x38

    const/4 v14, 0x0

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    move-object v3, v8

    .end local v8    # "brush":Landroidx/compose/ui/graphics/Brush;
    .local v3, "brush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_2

    .line 544
    .end local v3    # "brush":Landroidx/compose/ui/graphics/Brush;
    .restart local v8    # "brush":Landroidx/compose/ui/graphics/Brush;
    :cond_1
    move-object v3, v8

    .end local v8    # "brush":Landroidx/compose/ui/graphics/Brush;
    .restart local v3    # "brush":Landroidx/compose/ui/graphics/Brush;
    invoke-virtual {v5}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v8

    .local v8, "$v$c$androidx-compose-ui-graphics-Color$-$this$takeOrElse$0$iv":J
    const/4 v4, 0x0

    .line 686
    .local v4, "$i$f$takeOrElse-DxMtmZc":I
    move-wide v10, v8

    .local v10, "$v$c$androidx-compose-ui-graphics-Color$-$this$isSpecified$0$iv$iv":J
    const/4 v6, 0x0

    .line 687
    .local v6, "$i$f$isSpecified-8_81llA":I
    const-wide/16 v12, 0x10

    cmp-long v12, v10, v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    .line 686
    .end local v6    # "$i$f$isSpecified-8_81llA":I
    .end local v10    # "$v$c$androidx-compose-ui-graphics-Color$-$this$isSpecified$0$iv$iv":J
    :goto_0
    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 544
    .local v6, "$i$a$-takeOrElse-DxMtmZc-TextFieldCoreModifierNode$drawHighlight$textColor$1":I
    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    .line 686
    .end local v6    # "$i$a$-takeOrElse-DxMtmZc-TextFieldCoreModifierNode$drawHighlight$textColor$1":I
    move-wide v8, v10

    .line 544
    .end local v4    # "$i$f$takeOrElse-DxMtmZc":I
    .end local v8    # "$v$c$androidx-compose-ui-graphics-Color$-$this$takeOrElse$0$iv":J
    :goto_1
    move-wide v10, v8

    .line 545
    .local v10, "textColor":J
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v4

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v12, v4, v6

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v8

    .line 546
    move-wide/from16 v16, v10

    .end local v10    # "textColor":J
    .local v8, "highlightBackgroundColor":J
    .local v16, "textColor":J
    const/16 v14, 0x3c

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .end local v3    # "brush":Landroidx/compose/ui/graphics/Brush;
    .end local v8    # "highlightBackgroundColor":J
    .end local v16    # "textColor":J
    goto :goto_2

    .line 551
    :cond_4
    move-object/from16 v3, p0

    check-cast v3, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v3, v4}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v8

    .line 552
    .restart local v8    # "highlightBackgroundColor":J
    const/16 v14, 0x3c

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 554
    .end local v8    # "highlightBackgroundColor":J
    :goto_2
    return-void
.end method

.method private final drawSelection-Sb-Bc2M(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/text/TextLayoutResult;)V
    .locals 13
    .param p1, "$this$drawSelection_u2dSb_u2dBc2M"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p2, "$v$c$androidx-compose-ui-text-TextRange$-selection$0"    # J
    .param p4, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;

    .line 518
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 519
    .local v0, "start":I
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    .line 520
    .local v1, "end":I
    if-eq v0, v1, :cond_0

    .line 521
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v2, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v5

    .line 522
    .local v5, "selectionBackgroundColor":J
    move-object/from16 v2, p4

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    .line 523
    .local v4, "selectionPath":Landroidx/compose/ui/graphics/Path;
    const/16 v11, 0x3c

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_0

    .line 520
    .end local v4    # "selectionPath":Landroidx/compose/ui/graphics/Path;
    .end local v5    # "selectionBackgroundColor":J
    :cond_0
    move-object/from16 v2, p4

    .line 525
    :goto_0
    return-void
.end method

.method private final drawText(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 5
    .param p1, "$this$drawText"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p2, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;

    .line 558
    move-object v0, p1

    .local v0, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v1, 0x0

    .line 688
    .local v1, "$i$f$drawIntoCanvas":I
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    .local v2, "canvas":Landroidx/compose/ui/graphics/Canvas;
    const/4 v3, 0x0

    .line 558
    .local v3, "$i$a$-drawIntoCanvas-TextFieldCoreModifierNode$drawText$1":I
    sget-object v4, Landroidx/compose/ui/text/TextPainter;->INSTANCE:Landroidx/compose/ui/text/TextPainter;

    invoke-virtual {v4, v2, p2}, Landroidx/compose/ui/text/TextPainter;->paint(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 688
    .end local v2    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v3    # "$i$a$-drawIntoCanvas-TextFieldCoreModifierNode$drawText$1":I
    nop

    .line 559
    .end local v0    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v1    # "$i$f$drawIntoCanvas":I
    return-void
.end method

.method private final getShowCursor()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->writeable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isDragHovered:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierKt;->access$isSpecified(Landroidx/compose/ui/graphics/Brush;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final measureHorizontalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10
    .param p1, "$this$measureHorizontalScroll_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 359
    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v0, p3

    .end local p3    # "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0":J
    .local v0, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0":J
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p3

    .line 360
    .local p3, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 362
    .local v4, "width":I
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    new-instance v7, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, p3, p1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    .end local p1    # "$this$measureHorizontalScroll_u2d3p2s80s":Landroidx/compose/ui/layout/MeasureScope;
    .local v3, "$this$measureHorizontalScroll_u2d3p2s80s":Landroidx/compose/ui/layout/MeasureScope;
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method static final measureHorizontalScroll_3p2s80s$lambda$0(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 10
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .param p1, "$width"    # I
    .param p2, "$placeable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "$this_measureHorizontalScroll"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p4, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 365
    move-object v1, p4

    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 366
    nop

    .line 367
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    .line 368
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    .line 369
    invoke-interface {p3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    .line 365
    move-object v0, p0

    move v2, p1

    .end local p0    # "this$0":Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .end local p1    # "$width":I
    .local v0, "this$0":Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .local v2, "$width":I
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->updateScrollState-tIlFzwE(Landroidx/compose/ui/unit/Density;IIJLandroidx/compose/ui/unit/LayoutDirection;)V

    .line 372
    iget-object p0, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result p0

    neg-int v5, p0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    move-object v3, p4

    .end local p2    # "$placeable":Landroidx/compose/ui/layout/Placeable;
    .end local p4    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v3, "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v4, "$placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 373
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final measureVerticalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 12
    .param p1, "$this$measureVerticalScroll_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 335
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-wide v0, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 336
    .local v2, "childConstraints":J
    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 338
    .local v0, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 340
    .local v7, "height":I
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    new-instance v9, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, v7, v0, p1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method

.method static final measureVerticalScroll_3p2s80s$lambda$0(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 10
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .param p1, "$height"    # I
    .param p2, "$placeable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "$this_measureVerticalScroll"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p4, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 343
    move-object v1, p4

    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 344
    nop

    .line 345
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 346
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    .line 347
    invoke-interface {p3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    .line 343
    move-object v0, p0

    move v2, p1

    .end local p0    # "this$0":Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .end local p1    # "$height":I
    .local v0, "this$0":Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .local v2, "$height":I
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->updateScrollState-tIlFzwE(Landroidx/compose/ui/unit/Density;IIJLandroidx/compose/ui/unit/LayoutDirection;)V

    .line 350
    iget-object p0, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result p0

    neg-int v6, p0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    move-object v3, p4

    .end local p2    # "$placeable":Landroidx/compose/ui/layout/Placeable;
    .end local p4    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v3, "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v4, "$placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 351
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startCursorJob()V
    .locals 7

    .line 589
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorAnimation:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalCursorBlinkEnabled()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;-><init>(Z)V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorAnimation:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 591
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 593
    :cond_0
    nop

    .line 594
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$startCursorJob$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$startCursorJob$1;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 593
    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->changeObserverJob:Lkotlinx/coroutines/Job;

    .line 625
    return-void
.end method

.method static final textContextMenuToolbarHandlerNode$lambda$0(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;
    .param p1, "destinationCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 219
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDerivedVisibleContentBounds$foundation()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 218
    :cond_0
    nop

    .line 221
    .local v0, "rootBounds":Landroidx/compose/ui/geometry/Rect;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 690
    .local v2, "$i$f$checkPreconditionNotNull":I
    if-eqz v1, :cond_1

    .line 694
    nop

    .line 221
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$checkPreconditionNotNull":I
    nop

    .line 220
    nop

    .line 223
    .local v1, "localCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    nop

    .line 224
    nop

    .line 225
    nop

    .line 222
    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerModifierKt;->translateRootToDestination(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 226
    return-object v2

    .line 691
    .local v1, "value$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$checkPreconditionNotNull":I
    :cond_1
    const-string/jumbo v3, "Required value was null."

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final updateScrollState-tIlFzwE(Landroidx/compose/ui/unit/Density;IIJLandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 27
    .param p1, "$this$updateScrollState_u2dtIlFzwE"    # Landroidx/compose/ui/unit/Density;
    .param p2, "containerSize"    # I
    .param p3, "textLayoutSize"    # I
    .param p4, "$v$c$androidx-compose-ui-text-TextRange$-currSelection$0"    # J
    .param p6, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 409
    move-object/from16 v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    iget-object v0, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/ScrollState;->setViewportSize$foundation(I)V

    .line 412
    sub-int v8, v7, v6

    .line 413
    .local v8, "difference":I
    iget-object v0, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/ScrollState;->setMaxValue$foundation(I)V

    .line 416
    move-wide/from16 v9, p4

    invoke-direct {v1, v9, v10, v6, v7}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->calculateOffsetToFollow-8ffj60Q(JII)I

    move-result v11

    .line 419
    .local v11, "offsetToFollow":I
    if-ltz v11, :cond_10

    invoke-direct {v1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v14, p1

    move-object/from16 v13, p6

    goto/16 :goto_a

    .line 421
    :cond_0
    iget-object v0, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v12, v0

    .line 424
    .local v12, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    nop

    .line 425
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {v12}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Lkotlin/ranges/ClosedRange;

    invoke-static {v11, v0}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result v0

    .line 424
    invoke-virtual {v12, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    .line 423
    nop

    .line 428
    .local v4, "rawCursorRect":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 429
    nop

    .line 430
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v13, p6

    if-ne v13, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 431
    :goto_0
    nop

    .line 428
    move-object/from16 v14, p1

    invoke-static {v14, v4, v0, v7}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierKt;->access$getCursorRectInScroller(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/geometry/Rect;ZI)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 427
    move-object v15, v0

    .line 435
    .local v15, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    iget-object v5, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    cmpg-float v0, v0, v5

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 436
    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    iget-object v5, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    cmpg-float v0, v0, v5

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    .line 437
    iget v0, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousTextLayoutSize:I

    if-eq v7, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 434
    :goto_4
    nop

    .line 440
    .local v0, "shouldBringIntoView":Z
    if-nez v0, :cond_8

    iget v5, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousContainerSize:I

    if-eq v6, v5, :cond_7

    goto :goto_5

    :cond_7
    move v3, v0

    goto/16 :goto_9

    .line 441
    :cond_8
    :goto_5
    iget-object v5, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v2, :cond_9

    const/4 v3, 0x1

    :cond_9
    move/from16 v16, v3

    .line 442
    .local v16, "vertical":Z
    if-eqz v16, :cond_a

    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    goto :goto_6

    :cond_a
    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    :goto_6
    move/from16 v17, v2

    .line 443
    .local v17, "cursorStart":F
    if-eqz v16, :cond_b

    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    goto :goto_7

    :cond_b
    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v2

    :goto_7
    move/from16 v18, v2

    .line 445
    .local v18, "cursorEnd":F
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v2}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v2

    .line 446
    .local v2, "startVisibleBound":I
    add-int v3, v2, v6

    .line 448
    .local v3, "endVisibleBound":I
    nop

    .line 460
    int-to-float v5, v3

    cmpl-float v5, v18, v5

    if-lez v5, :cond_c

    int-to-float v5, v3

    sub-float v5, v18, v5

    move/from16 v19, v0

    goto :goto_8

    .line 473
    :cond_c
    int-to-float v5, v2

    cmpg-float v5, v17, v5

    if-gez v5, :cond_d

    sub-float v5, v18, v17

    move/from16 v19, v0

    .end local v0    # "shouldBringIntoView":Z
    .local v19, "shouldBringIntoView":Z
    int-to-float v0, v6

    cmpl-float v0, v5, v0

    if-lez v0, :cond_e

    .line 474
    int-to-float v0, v3

    sub-float v5, v18, v0

    goto :goto_8

    .line 473
    .end local v19    # "shouldBringIntoView":Z
    .restart local v0    # "shouldBringIntoView":Z
    :cond_d
    move/from16 v19, v0

    .line 488
    .end local v0    # "shouldBringIntoView":Z
    .restart local v19    # "shouldBringIntoView":Z
    :cond_e
    int-to-float v0, v2

    cmpg-float v0, v17, v0

    if-gez v0, :cond_f

    sub-float v0, v18, v17

    int-to-float v5, v6

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_f

    .line 489
    int-to-float v0, v2

    sub-float v5, v17, v0

    goto :goto_8

    .line 492
    :cond_f
    const/4 v5, 0x0

    .line 448
    :goto_8
    nop

    .line 447
    nop

    .line 495
    .local v5, "offsetDifference":F
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    iput-object v0, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousSelection:Landroidx/compose/ui/text/TextRange;

    .line 496
    iput-object v15, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 497
    iput v6, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousContainerSize:I

    .line 498
    iput v7, v1, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->previousTextLayoutSize:I

    .line 503
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v20

    sget-object v22, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$updateScrollState$1;

    move/from16 v21, v2

    move v2, v5

    .end local v5    # "offsetDifference":F
    .local v2, "offsetDifference":F
    .local v21, "startVisibleBound":I
    const/4 v5, 0x0

    move/from16 v26, v3

    move/from16 v3, v19

    move/from16 v19, v21

    .end local v21    # "startVisibleBound":I
    .local v3, "shouldBringIntoView":Z
    .local v19, "startVisibleBound":I
    .local v26, "endVisibleBound":I
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$updateScrollState$1;-><init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;FZLandroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/jvm/functions/Function2;

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v25}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 514
    .end local v2    # "offsetDifference":F
    .end local v16    # "vertical":Z
    .end local v17    # "cursorStart":F
    .end local v18    # "cursorEnd":F
    .end local v19    # "startVisibleBound":I
    .end local v26    # "endVisibleBound":I
    :goto_9
    return-void

    .line 419
    .end local v3    # "shouldBringIntoView":Z
    .end local v4    # "rawCursorRect":Landroidx/compose/ui/geometry/Rect;
    .end local v12    # "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v15    # "cursorRect":Landroidx/compose/ui/geometry/Rect;
    :cond_10
    move-object/from16 v14, p1

    move-object/from16 v13, p6

    :goto_a
    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 633
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    .line 685
    .local v0, "$this$applySemantics_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;
    const/4 v1, 0x0

    .line 633
    .local v1, "$i$a$-with-TextFieldCoreModifierNode$applySemantics$1":I
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 634
    .end local v0    # "$this$applySemantics_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;
    .end local v1    # "$i$a$-with-TextFieldCoreModifierNode$applySemantics$1":I
    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 5
    .param p1, "$this$draw"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 310
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 311
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    .line 312
    .local v0, "value":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 314
    .local v1, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getHighlight()Lkotlin/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 685
    .local v2, "it":Lkotlin/Pair;
    const/4 v3, 0x0

    .line 314
    .local v3, "$i$a$-let-TextFieldCoreModifierNode$draw$1":I
    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v4, v2, v1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->drawHighlight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lkotlin/Pair;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 315
    .end local v2    # "it":Lkotlin/Pair;
    .end local v3    # "$i$a$-let-TextFieldCoreModifierNode$draw$1":I
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->drawText(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 317
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->shouldShowSelection()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->drawCursor(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->shouldShowSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->drawSelection-Sb-Bc2M(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/text/TextLayoutResult;)V

    .line 324
    :cond_3
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v2, v1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->drawText(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 327
    :cond_4
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    .line 685
    .local v2, "$this$draw_u24lambda_u241":Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;
    const/4 v3, 0x0

    .line 327
    .local v3, "$i$a$-with-TextFieldCoreModifierNode$draw$2":I
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 328
    .end local v2    # "$this$draw_u24lambda_u241":Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;
    .end local v3    # "$i$a$-with-TextFieldCoreModifierNode$draw$2":I
    return-void
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 303
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->measureVerticalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->measureHorizontalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 235
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->startCursorJob()V

    .line 238
    :cond_0
    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 628
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->setCoreNodeCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 629
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;->onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 630
    return-void
.end method

.method public final updateNode(ZZLandroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;)V
    .locals 17
    .param p1, "isFocused"    # Z
    .param p2, "isDragHovered"    # Z
    .param p3, "textLayoutState"    # Landroidx/compose/foundation/text/input/internal/TextLayoutState;
    .param p4, "textFieldState"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p5, "textFieldSelectionState"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p6, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p7, "writeable"    # Z
    .param p8, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p9, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p10, "toolbarRequester"    # Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;
    .param p11, "platformSelectionBehaviors"    # Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 254
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v8

    .line 255
    .local v8, "previousShowCursor":Z
    iget-boolean v9, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 256
    .local v9, "wasFocused":Z
    iget-object v10, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 257
    .local v10, "previousTextFieldState":Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    iget-object v11, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    .line 258
    .local v11, "previousTextLayoutState":Landroidx/compose/foundation/text/input/internal/TextLayoutState;
    iget-object v12, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 259
    .local v12, "previousTextFieldSelectionState":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 261
    .local v13, "previousScrollState":Landroidx/compose/foundation/ScrollState;
    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 262
    iput-boolean v2, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->isDragHovered:Z

    .line 263
    iput-object v3, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    .line 264
    iput-object v4, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 265
    iput-object v5, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 266
    move-object/from16 v14, p6

    iput-object v14, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 267
    move/from16 v15, p7

    iput-boolean v15, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->writeable:Z

    .line 268
    iput-object v6, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 269
    move-object/from16 v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 270
    iput-object v7, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 271
    move-object/from16 v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 273
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 273
    :goto_1
    invoke-virtual {v1, v4, v5, v3, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldMagnifierNode;->update(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Z)V

    .line 280
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->textContextMenuToolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    invoke-virtual {v1, v7}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->update(Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;)V

    .line 282
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->changeObserverJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v7, 0x1

    invoke-static {v1, v2, v7, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 284
    :cond_2
    iput-object v2, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->changeObserverJob:Lkotlinx/coroutines/Job;

    .line 285
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->cursorAnimation:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cancelAndHide()V

    goto :goto_2

    .line 286
    :cond_3
    if-eqz v9, :cond_4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v8, :cond_5

    .line 289
    :cond_4
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->startCursorJob()V

    .line 292
    :cond_5
    :goto_2
    nop

    .line 293
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 294
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 295
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 298
    :cond_6
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 300
    :cond_7
    return-void
.end method
