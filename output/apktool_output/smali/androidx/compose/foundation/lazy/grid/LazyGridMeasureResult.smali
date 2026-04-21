.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
.super Ljava/lang/Object;
.source "LazyGridMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasureResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasureResult.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,165:1\n30#2:166\n80#3:167\n35#4,5:168\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasureResult.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult\n*L\n78#1:166\n78#1:167\n135#1:168,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u00f7\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u00123\u0010\u0013\u001a/\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00190\u00180\u0014\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u00060\u0014\u0012\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u0006\u0012\u0006\u0010 \u001a\u00020\u0006\u0012\u0006\u0010!\u001a\u00020\u0006\u0012\u0006\u0010\"\u001a\u00020\u0008\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020\u0006\u0012\u0006\u0010&\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\'\u0010(J\u0018\u0010O\u001a\u0004\u0018\u00010\u00002\u0006\u0010P\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u0008J\t\u0010R\u001a\u00020SH\u0096\u0001R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u000e\u0010\u000b\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00100R\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010.R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010,R>\u0010\u0013\u001a/\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00190\u00180\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R,\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u00060\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u00109R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0014\u0010\u001f\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010,R\u0014\u0010 \u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010,R\u0014\u0010!\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010,R\u0014\u0010\"\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010.R\u0014\u0010#\u001a\u00020$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR\u0014\u0010%\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010,R\u0014\u0010&\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010,R\u0011\u0010E\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010.R\u0014\u0010G\u001a\u00020H8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010JR\u0014\u0010K\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010,R\u0014\u0010M\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010,R\u001e\u0010T\u001a\u000e\u0012\u0004\u0012\u00020V\u0012\u0004\u0012\u00020\u00060UX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010XR\u0012\u0010Y\u001a\u00020\u0006X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010,R\'\u0010[\u001a\u0015\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020S\u0018\u00010\u0014\u00a2\u0006\u0002\u0008]8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008^\u00109R\u0012\u0010_\u001a\u00020\u0006X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010,\u00a8\u0006a"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "firstVisibleLine",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
        "firstVisibleLineScrollOffset",
        "",
        "canScrollForward",
        "",
        "consumedScroll",
        "",
        "measureResult",
        "scrollBackAmount",
        "remeasureNeeded",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "slotsPerLine",
        "prefetchInfoRetriever",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "line",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/unit/Constraints;",
        "lineIndexProvider",
        "itemIndex",
        "visibleItemsInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "viewportStartOffset",
        "viewportEndOffset",
        "totalItemsCount",
        "reverseLayout",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "afterContentPadding",
        "mainAxisItemSpacing",
        "<init>",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V",
        "getFirstVisibleLine",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
        "getFirstVisibleLineScrollOffset",
        "()I",
        "getCanScrollForward",
        "()Z",
        "getConsumedScroll",
        "()F",
        "getScrollBackAmount",
        "getRemeasureNeeded",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "getSlotsPerLine",
        "getPrefetchInfoRetriever",
        "()Lkotlin/jvm/functions/Function1;",
        "getLineIndexProvider",
        "getVisibleItemsInfo",
        "()Ljava/util/List;",
        "getViewportStartOffset",
        "getViewportEndOffset",
        "getTotalItemsCount",
        "getReverseLayout",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "getAfterContentPadding",
        "getMainAxisItemSpacing",
        "canScrollBackward",
        "getCanScrollBackward",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getViewportSize-YbymL2g",
        "()J",
        "beforeContentPadding",
        "getBeforeContentPadding",
        "maxSpan",
        "getMaxSpan",
        "copyWithScrollDeltaWithoutRemeasure",
        "delta",
        "updateAnimations",
        "placeChildren",
        "",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "getAlignmentLines",
        "()Ljava/util/Map;",
        "height",
        "getHeight",
        "rulers",
        "Landroidx/compose/ui/layout/RulerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "getRulers",
        "width",
        "getWidth",
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
.field private final afterContentPadding:I

.field private final canScrollForward:Z

.field private final consumedScroll:F

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final density:Landroidx/compose/ui/unit/Density;

.field private final firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

.field private final firstVisibleLineScrollOffset:I

.field private final lineIndexProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mainAxisItemSpacing:I

.field private final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final prefetchInfoRetriever:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final remeasureNeeded:Z

.field private final reverseLayout:Z

.field private final scrollBackAmount:F

.field private final slotsPerLine:I

.field private final totalItemsCount:I

.field private final viewportEndOffset:I

.field private final viewportStartOffset:I

.field private final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 16
    .param p1, "firstVisibleLine"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .param p2, "firstVisibleLineScrollOffset"    # I
    .param p3, "canScrollForward"    # Z
    .param p4, "consumedScroll"    # F
    .param p5, "measureResult"    # Landroidx/compose/ui/layout/MeasureResult;
    .param p6, "scrollBackAmount"    # F
    .param p7, "remeasureNeeded"    # Z
    .param p8, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p9, "density"    # Landroidx/compose/ui/unit/Density;
    .param p10, "slotsPerLine"    # I
    .param p11, "prefetchInfoRetriever"    # Lkotlin/jvm/functions/Function1;
    .param p12, "lineIndexProvider"    # Lkotlin/jvm/functions/Function1;
    .param p13, "visibleItemsInfo"    # Ljava/util/List;
    .param p14, "viewportStartOffset"    # I
    .param p15, "viewportEndOffset"    # I
    .param p16, "totalItemsCount"    # I
    .param p17, "reverseLayout"    # Z
    .param p18, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p19, "afterContentPadding"    # I
    .param p20, "mainAxisItemSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            "IZF",
            "Landroidx/compose/ui/layout/MeasureResult;",
            "FZ",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;IIIZ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "II)V"
        }
    .end annotation

    .line 29
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 34
    move/from16 v2, p2

    iput v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    .line 36
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    .line 38
    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->consumedScroll:F

    .line 40
    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 42
    move/from16 v6, p6

    iput v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->scrollBackAmount:F

    .line 44
    move/from16 v7, p7

    iput-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    .line 46
    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 48
    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 50
    move/from16 v10, p10

    iput v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    .line 52
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->prefetchInfoRetriever:Lkotlin/jvm/functions/Function1;

    .line 54
    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->lineIndexProvider:Lkotlin/jvm/functions/Function1;

    .line 57
    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 59
    move/from16 v14, p14

    iput v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    .line 61
    move/from16 v15, p15

    iput v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    .line 63
    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    .line 65
    move/from16 v1, p17

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->reverseLayout:Z

    .line 67
    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 69
    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->afterContentPadding:I

    .line 71
    move/from16 v1, p20

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    .line 29
    return-void
.end method


# virtual methods
.method public final copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 36
    .param p1, "delta"    # I
    .param p2, "updateAnimations"    # Z

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 102
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 103
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 104
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v2, :cond_b

    .line 106
    nop

    .line 107
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v2

    .line 106
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    sub-int/2addr v4, v1

    .line 107
    nop

    .line 106
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ge v4, v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-nez v2, :cond_1

    move/from16 v14, p2

    goto/16 :goto_7

    .line 111
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 112
    .local v2, "first":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 113
    .local v4, "last":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getNonScrollableItem()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getNonScrollableItem()Z

    move-result v7

    if-eqz v7, :cond_2

    move/from16 v14, p2

    goto/16 :goto_6

    .line 118
    :cond_2
    if-gez v1, :cond_4

    .line 121
    move-object v7, v2

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v8

    add-int/2addr v7, v8

    .line 122
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportStartOffset()I

    move-result v8

    .line 121
    sub-int/2addr v7, v8

    .line 120
    nop

    .line 124
    .local v7, "deltaToFirstItemChange":I
    move-object v8, v4

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v9

    add-int/2addr v8, v9

    .line 125
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportEndOffset()I

    move-result v9

    .line 124
    sub-int/2addr v8, v9

    .line 123
    nop

    .line 126
    .local v8, "deltaToLastItemChange":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    neg-int v10, v1

    if-le v9, v10, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v6

    .end local v7    # "deltaToFirstItemChange":I
    .end local v8    # "deltaToLastItemChange":I
    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportStartOffset()I

    move-result v7

    move-object v8, v2

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 129
    nop

    .line 131
    .restart local v7    # "deltaToFirstItemChange":I
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportEndOffset()I

    move-result v8

    move-object v9, v4

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 132
    .restart local v8    # "deltaToLastItemChange":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-le v9, v1, :cond_5

    move v7, v5

    goto :goto_1

    :cond_5
    move v7, v6

    .line 118
    .end local v7    # "deltaToFirstItemChange":I
    .end local v8    # "deltaToLastItemChange":I
    :goto_1
    nop

    .line 117
    nop

    .line 134
    .local v7, "canApply":Z
    if-eqz v7, :cond_9

    .line 135
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 168
    .local v8, "$i$f$fastForEach":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    :goto_2
    if-ge v9, v10, :cond_6

    .line 169
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 170
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v12, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v13, 0x0

    .line 135
    .local v13, "$i$a$-fastForEach-LazyGridMeasureResult$copyWithScrollDeltaWithoutRemeasure$1":I
    move/from16 v14, p2

    invoke-virtual {v12, v1, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->applyScrollDelta(IZ)V

    .line 170
    .end local v12    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v13    # "$i$a$-fastForEach-LazyGridMeasureResult$copyWithScrollDeltaWithoutRemeasure$1":I
    nop

    .line 168
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move/from16 v14, p2

    .line 172
    .end local v9    # "index$iv":I
    nop

    .line 137
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 138
    iget v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    sub-int v17, v8, v1

    .line 140
    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    if-nez v8, :cond_8

    .line 141
    if-lez v1, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v18, v6

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v18, v5

    .line 140
    :goto_4
    nop

    .line 142
    int-to-float v5, v1

    .line 143
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->scrollBackAmount:F

    .line 144
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 145
    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    .line 146
    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 147
    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 148
    iget v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    .line 149
    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->prefetchInfoRetriever:Lkotlin/jvm/functions/Function1;

    .line 150
    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->lineIndexProvider:Lkotlin/jvm/functions/Function1;

    .line 151
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v28

    .line 152
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportStartOffset()I

    move-result v29

    .line 153
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportEndOffset()I

    move-result v30

    .line 154
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getTotalItemsCount()I

    move-result v31

    .line 155
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getReverseLayout()Z

    move-result v32

    .line 156
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v33

    .line 157
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getAfterContentPadding()I

    move-result v34

    .line 158
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getMainAxisItemSpacing()I

    move-result v35

    .line 136
    move-object/from16 v27, v15

    new-instance v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 137
    nop

    .line 138
    nop

    .line 140
    nop

    .line 142
    nop

    .line 144
    nop

    .line 143
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 136
    move-object/from16 v16, v3

    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v20, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v26, v13

    invoke-direct/range {v15 .. v35}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    move-object v3, v15

    goto :goto_5

    .line 161
    :cond_9
    move/from16 v14, p2

    .line 134
    :goto_5
    return-object v3

    .line 113
    .end local v7    # "canApply":Z
    :cond_a
    move/from16 v14, p2

    .line 115
    :goto_6
    return-object v3

    .line 104
    .end local v2    # "first":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v4    # "last":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    :cond_b
    move/from16 v14, p2

    goto :goto_7

    .line 103
    :cond_c
    move/from16 v14, p2

    goto :goto_7

    .line 102
    :cond_d
    move/from16 v14, p2

    .line 109
    :goto_7
    return-object v3
.end method

.method public getAfterContentPadding()I
    .locals 1

    .line 69
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->afterContentPadding:I

    return v0
.end method

.method public getAlignmentLines()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeContentPadding()I
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportStartOffset()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final getCanScrollBackward()Z
    .locals 2

    .line 75
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final getCanScrollForward()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    return v0
.end method

.method public final getConsumedScroll()F
    .locals 1

    .line 38
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->consumedScroll:F

    return v0
.end method

.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getFirstVisibleLine()Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    return-object v0
.end method

.method public final getFirstVisibleLineScrollOffset()I
    .locals 1

    .line 34
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getLineIndexProvider()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->lineIndexProvider:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getMainAxisItemSpacing()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    return v0
.end method

.method public getMaxSpan()I
    .locals 1

    .line 84
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    return v0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object v0
.end method

.method public final getPrefetchInfoRetriever()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->prefetchInfoRetriever:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRemeasureNeeded()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->reverseLayout:Z

    return v0
.end method

.method public getRulers()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/RulerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final getScrollBackAmount()F
    .locals 1

    .line 42
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->scrollBackAmount:F

    return v0
.end method

.method public final getSlotsPerLine()I
    .locals 1

    .line 50
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    return v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    .line 63
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    return v0
.end method

.method public getViewportEndOffset()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    return v0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 12

    .line 78
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getWidth()I

    move-result v0

    .local v0, "width$iv":I
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getHeight()I

    move-result v1

    .local v1, "height$iv":I
    const/4 v2, 0x0

    .line 166
    .local v2, "$i$f$IntSize":I
    move v3, v1

    .local v3, "val2$iv$iv":I
    move v4, v0

    .local v4, "val1$iv$iv":I
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$f$packInts":I
    int-to-long v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long v3, v6, v8

    .line 166
    .end local v3    # "val2$iv$iv":I
    .end local v4    # "val1$iv$iv":I
    .end local v5    # "$i$f$packInts":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    .line 78
    .end local v0    # "width$iv":I
    .end local v1    # "height$iv":I
    .end local v2    # "$i$f$IntSize":I
    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 1

    .line 59
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    return v0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    return v0
.end method

.method public placeChildren()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
