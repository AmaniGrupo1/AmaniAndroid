.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
.super Ljava/lang/Object;
.source "LazyGridMeasuredItem.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 6 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n*L\n1#1,259:1\n255#1:273\n255#1:276\n255#1:283\n35#2,5:260\n30#3:265\n30#3:267\n80#4:266\n80#4:268\n80#4:270\n80#4:272\n80#4:275\n80#4:278\n80#4:285\n80#4:287\n32#5:269\n32#5:271\n32#5:274\n32#5:277\n32#5:284\n32#5:286\n97#6,4:279\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem\n*L\n173#1:273\n178#1:276\n224#1:283\n78#1:260,5\n87#1:265\n89#1:267\n87#1:266\n89#1:268\n150#1:270\n152#1:272\n173#1:275\n178#1:278\n224#1:285\n255#1:287\n150#1:269\n152#1:271\n173#1:274\n178#1:277\n224#1:284\n255#1:286\n186#1:279,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0095\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0012\u00103\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0017\u0010>\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008?\u0010@J(\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u0004H\u0016J6\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u0004J\u000e\u0010K\u001a\u00020F2\u0006\u00100\u001a\u00020\u0004J\u0016\u0010L\u001a\u00020F2\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u0008J\u0016\u0010O\u001a\u00020F2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u0008J(\u0010W\u001a\u00020\u0014*\u00020\u00142\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040YH\u0082\u0008\u00a2\u0006\u0004\u0008Z\u0010[R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\"R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001fR\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010$R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010!R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u00020\u0019X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008&\u0010\'R\u0014\u0010\u001a\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001fR\u0014\u0010\u001b\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001fR\u0011\u0010*\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR\u0014\u0010,\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001fR\u0014\u0010.\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u001fR\u000e\u00100\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u00104\u001a\u000205X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u00086\u0010\'R \u00108\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u0014@RX\u0096\u000e\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u00089\u0010\'R\u001e\u0010:\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\u001fR\u001e\u0010<\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u001fR\u001a\u0010A\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\"\"\u0004\u0008C\u0010DR\u0018\u0010S\u001a\u00020\u0004*\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0018\u0010*\u001a\u00020\u0004*\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010V\u00a8\u0006\\"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
        "index",
        "",
        "key",
        "",
        "isVertical",
        "",
        "crossAxisSize",
        "mainAxisSpacing",
        "reverseLayout",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "beforeContentPadding",
        "afterContentPadding",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "visualOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "contentType",
        "animator",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "lane",
        "span",
        "<init>",
        "(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getIndex",
        "()I",
        "getKey",
        "()Ljava/lang/Object;",
        "()Z",
        "getCrossAxisSize",
        "J",
        "getContentType",
        "getConstraints-msEJaDk",
        "()J",
        "getLane",
        "getSpan",
        "mainAxisSize",
        "getMainAxisSize",
        "mainAxisSizeWithSpacings",
        "getMainAxisSizeWithSpacings",
        "placeablesCount",
        "getPlaceablesCount",
        "mainAxisLayoutSize",
        "minMainAxisOffset",
        "maxMainAxisOffset",
        "getParentData",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "value",
        "offset",
        "getOffset-nOcc-ac",
        "row",
        "getRow",
        "column",
        "getColumn",
        "getOffset",
        "getOffset-Bjo55l4",
        "(I)J",
        "nonScrollableItem",
        "getNonScrollableItem",
        "setNonScrollableItem",
        "(Z)V",
        "position",
        "",
        "mainAxisOffset",
        "crossAxisOffset",
        "layoutWidth",
        "layoutHeight",
        "updateMainAxisLayoutSize",
        "applyScrollDelta",
        "delta",
        "updateAnimations",
        "place",
        "scope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "isLookingAhead",
        "mainAxis",
        "getMainAxis--gyyYBs",
        "(J)I",
        "(Landroidx/compose/ui/layout/Placeable;)I",
        "copy",
        "mainAxisMap",
        "Lkotlin/Function1;",
        "copy-4Tuh3kE",
        "(JLkotlin/jvm/functions/Function1;)J",
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

.field private final animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final beforeContentPadding:I

.field private column:I

.field private final constraints:J

.field private final contentType:Ljava/lang/Object;

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;

.field private final lane:I

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mainAxisLayoutSize:I

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private maxMainAxisOffset:I

.field private minMainAxisOffset:I

.field private nonScrollableItem:Z

.field private offset:J

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseLayout:Z

.field private row:I

.field private final size:J

.field private final span:I

.field private final visualOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->$stable:I

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JII)V
    .locals 25
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "isVertical"    # Z
    .param p4, "crossAxisSize"    # I
    .param p5, "mainAxisSpacing"    # I
    .param p6, "reverseLayout"    # Z
    .param p7, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p8, "beforeContentPadding"    # I
    .param p9, "afterContentPadding"    # I
    .param p10, "placeables"    # Ljava/util/List;
    .param p11, "visualOffset"    # J
    .param p13, "contentType"    # Ljava/lang/Object;
    .param p14, "animator"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .param p15, "constraints"    # J
    .param p17, "lane"    # I
    .param p18, "span"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "ZIIZ",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;J",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;JII)V"
        }
    .end annotation

    .line 35
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    move/from16 v1, p1

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 37
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    .line 38
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    .line 43
    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    .line 45
    move/from16 v5, p6

    iput-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->reverseLayout:Z

    .line 46
    move-object/from16 v6, p7

    iput-object v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 47
    move/from16 v7, p8

    iput v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->beforeContentPadding:I

    .line 48
    move/from16 v8, p9

    iput v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    .line 49
    move-object/from16 v9, p10

    iput-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    .line 54
    move-wide/from16 v10, p11

    iput-wide v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    .line 55
    move-object/from16 v12, p13

    iput-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->contentType:Ljava/lang/Object;

    .line 56
    move-object/from16 v13, p14

    iput-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 57
    move-wide/from16 v14, p15

    iput-wide v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->constraints:J

    .line 58
    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->lane:I

    .line 59
    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->span:I

    .line 70
    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 76
    nop

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "maxMainAxis":I
    move/from16 v16, v1

    .end local v1    # "maxMainAxis":I
    .local v16, "maxMainAxis":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 260
    .local v17, "$i$f$fastForEach":I
    const/16 v18, 0x0

    .local v18, "index$iv":I
    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Collection;

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v3, v16

    move/from16 v4, v18

    .end local v16    # "maxMainAxis":I
    .end local v18    # "index$iv":I
    .local v3, "maxMainAxis":I
    .local v4, "index$iv":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 261
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 262
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/layout/Placeable;

    .local v18, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v19, 0x0

    .line 79
    .local v19, "$i$a$-fastForEach-LazyGridMeasuredItem$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v20

    goto :goto_1

    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v20

    :goto_1
    move-object/from16 v21, v1

    move/from16 v1, v20

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v21, "$this$fastForEach$iv":Ljava/util/List;
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 80
    nop

    .line 262
    .end local v18    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v19    # "$i$a$-fastForEach-LazyGridMeasuredItem$1":I
    nop

    .line 260
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v21

    goto :goto_0

    .end local v21    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_1
    move-object/from16 v21, v1

    .line 264
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "index$iv":I
    .restart local v21    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 81
    .end local v17    # "$i$f$fastForEach":I
    .end local v21    # "$this$fastForEach$iv":Ljava/util/List;
    iput v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    .line 82
    add-int v1, v3, p5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 83
    .end local v3    # "maxMainAxis":I
    nop

    .line 86
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    const-wide v16, 0xffffffffL

    .local v1, "width$iv":I
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    .local v2, "height$iv":I
    const/4 v3, 0x0

    .line 265
    .local v3, "$i$f$IntSize":I
    move/from16 v18, v2

    .local v18, "val2$iv$iv":I
    move/from16 v19, v1

    .local v19, "val1$iv$iv":I
    const/16 v20, 0x0

    .line 266
    .local v20, "$i$f$packInts":I
    move/from16 v22, v2

    move/from16 v4, v19

    const/16 v21, 0x20

    .end local v1    # "width$iv":I
    .end local v2    # "height$iv":I
    .local v4, "val1$iv$iv":I
    .local v19, "width$iv":I
    .local v22, "height$iv":I
    int-to-long v1, v4

    shl-long v1, v1, v21

    move-wide/from16 v23, v1

    move/from16 v1, v18

    move/from16 v18, v3

    .end local v3    # "$i$f$IntSize":I
    .local v1, "val2$iv$iv":I
    .local v18, "$i$f$IntSize":I
    int-to-long v2, v1

    and-long v2, v2, v16

    or-long v1, v23, v2

    .line 265
    .end local v1    # "val2$iv$iv":I
    .end local v4    # "val1$iv$iv":I
    .end local v20    # "$i$f$packInts":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v1

    .end local v18    # "$i$f$IntSize":I
    .end local v19    # "width$iv":I
    .end local v22    # "height$iv":I
    goto :goto_2

    .line 89
    :cond_2
    const-wide v16, 0xffffffffL

    const/16 v21, 0x20

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    .local v1, "width$iv":I
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    .restart local v2    # "height$iv":I
    const/4 v3, 0x0

    .line 267
    .restart local v3    # "$i$f$IntSize":I
    move v4, v2

    .local v4, "val2$iv$iv":I
    move/from16 v18, v1

    .local v18, "val1$iv$iv":I
    const/16 v19, 0x0

    .line 268
    .local v19, "$i$f$packInts":I
    move/from16 v20, v1

    move/from16 v22, v3

    move/from16 v18, v2

    .end local v2    # "height$iv":I
    .end local v3    # "$i$f$IntSize":I
    .local v1, "val1$iv$iv":I
    .local v18, "height$iv":I
    .local v20, "width$iv":I
    .local v22, "$i$f$IntSize":I
    int-to-long v2, v1

    shl-long v2, v2, v21

    move/from16 v21, v1

    move-wide/from16 v23, v2

    .end local v1    # "val1$iv$iv":I
    .local v21, "val1$iv$iv":I
    int-to-long v1, v4

    and-long v1, v1, v16

    or-long v1, v23, v1

    .line 267
    .end local v4    # "val2$iv$iv":I
    .end local v19    # "$i$f$packInts":I
    .end local v21    # "val1$iv$iv":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v1

    .line 86
    .end local v18    # "height$iv":I
    .end local v20    # "width$iv":I
    .end local v22    # "$i$f$IntSize":I
    :goto_2
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    .line 91
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 94
    const/4 v1, -0x1

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    .line 97
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    .line 35
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;-><init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JII)V

    return-void
.end method

.method private final copy-4Tuh3kE(JLkotlin/jvm/functions/Function1;)J
    .locals 14
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0"    # J
    .param p3, "mainAxisMap"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 255
    .local v1, "$i$f$copy-4Tuh3kE":I
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    .local v2, "x$iv":I
    .local v3, "y$iv":I
    :goto_1
    const/4 v4, 0x0

    .line 286
    .local v4, "$i$f$IntOffset":I
    move v5, v3

    .local v5, "val2$iv$iv":I
    move v6, v2

    .local v6, "val1$iv$iv":I
    const/4 v7, 0x0

    .line 287
    .local v7, "$i$f$packInts":I
    int-to-long v8, v6

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long v5, v8, v10

    .line 286
    .end local v5    # "val2$iv$iv":I
    .end local v6    # "val1$iv$iv":I
    .end local v7    # "$i$f$packInts":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v2

    .line 255
    .end local v2    # "x$iv":I
    .end local v3    # "y$iv":I
    .end local v4    # "$i$f$IntOffset":I
    return-wide v2
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-$this$mainAxis$0"    # J

    .line 249
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1
    .param p1, "$this$mainAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    .line 252
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public final applyScrollDelta(IZ)V
    .locals 22
    .param p1, "delta"    # I
    .param p2, "updateAnimations"    # Z

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getNonScrollableItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v1

    .local v1, "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0$iv":J
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v4, 0x0

    .line 273
    .local v4, "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    .local v5, "it":I
    const/4 v6, 0x0

    .line 173
    .local v6, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    add-int v5, v5, p1

    .line 273
    .end local v5    # "it":I
    .end local v6    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    :goto_0
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    .local v6, "it":I
    const/4 v7, 0x0

    .line 173
    .local v7, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    add-int v6, v6, p1

    .line 273
    .end local v6    # "it":I
    .end local v7    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    .local v5, "x$iv$iv":I
    .local v6, "y$iv$iv":I
    :goto_1
    const/4 v7, 0x0

    .line 274
    .local v7, "$i$f$IntOffset":I
    move v8, v6

    .local v8, "val2$iv$iv$iv":I
    move v9, v5

    .local v9, "val1$iv$iv$iv":I
    const/4 v10, 0x0

    .line 275
    .local v10, "$i$f$packInts":I
    int-to-long v11, v9

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    int-to-long v14, v8

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long v8, v11, v14

    .line 274
    .end local v8    # "val2$iv$iv$iv":I
    .end local v9    # "val1$iv$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v5

    .line 273
    .end local v5    # "x$iv$iv":I
    .end local v6    # "y$iv$iv":I
    .end local v7    # "$i$f$IntOffset":I
    nop

    .line 173
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0$iv":J
    .end local v3    # "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v4    # "$i$f$copy-4Tuh3kE":I
    iput-wide v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 174
    if-eqz p2, :cond_6

    .line 175
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 176
    .local v4, "$i$a$-repeat-LazyGridMeasuredItem$applyScrollDelta$2":I
    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v5

    .line 177
    .local v5, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    if-eqz v5, :cond_5

    .line 178
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v6

    .local v6, "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0$iv":J
    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v9, 0x0

    .line 276
    .local v9, "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    goto :goto_3

    :cond_3
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    .local v10, "mainAxis":I
    const/4 v11, 0x0

    .line 178
    .local v11, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    add-int v10, v10, p1

    .end local v10    # "mainAxis":I
    .end local v11    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 276
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    :goto_3
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v11

    .local v11, "mainAxis":I
    const/4 v12, 0x0

    .line 178
    .local v12, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    add-int v11, v11, p1

    .end local v11    # "mainAxis":I
    .end local v12    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 276
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_4

    :cond_4
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v11

    .local v10, "x$iv$iv":I
    .local v11, "y$iv$iv":I
    :goto_4
    const/4 v12, 0x0

    .line 277
    .local v12, "$i$f$IntOffset":I
    move v14, v11

    .local v14, "val2$iv$iv$iv":I
    move v15, v10

    .local v15, "val1$iv$iv$iv":I
    const/16 v18, 0x0

    .line 278
    .local v18, "$i$f$packInts":I
    move/from16 v19, v1

    int-to-long v0, v15

    shl-long/2addr v0, v13

    move-wide/from16 v20, v0

    int-to-long v0, v14

    and-long v0, v0, v16

    or-long v0, v20, v0

    .line 277
    .end local v14    # "val2$iv$iv$iv":I
    .end local v15    # "val1$iv$iv$iv":I
    .end local v18    # "$i$f$packInts":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    .line 276
    .end local v10    # "x$iv$iv":I
    .end local v11    # "y$iv$iv":I
    .end local v12    # "$i$f$IntOffset":I
    nop

    .line 178
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0$iv":J
    .end local v8    # "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v9    # "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v5, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_5

    .line 177
    :cond_5
    move/from16 v19, v1

    .line 180
    :goto_5
    nop

    .line 175
    .end local v3    # "index":I
    .end local v4    # "$i$a$-repeat-LazyGridMeasuredItem$applyScrollDelta$2":I
    .end local v5    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    goto :goto_2

    .line 182
    :cond_6
    return-void
.end method

.method public getColumn()I
    .locals 1

    .line 97
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    return v0
.end method

.method public getConstraints-msEJaDk()J
    .locals 2

    .line 57
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->constraints:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->contentType:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 43
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 36
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLane()I
    .locals 1

    .line 58
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->lane:I

    return v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 62
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    return v0
.end method

.method public getMainAxisSizeWithSpacings()I
    .locals 1

    .line 65
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    return v0
.end method

.method public getNonScrollableItem()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    return v0
.end method

.method public getOffset-Bjo55l4(I)J
    .locals 2
    .param p1, "index"    # I

    .line 100
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset-nOcc-ac()J
    .locals 2

    .line 91
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    return-wide v0
.end method

.method public getParentData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceablesCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 94
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    return v0
.end method

.method public getSize-YbymL2g()J
    .locals 2

    .line 85
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    return-wide v0
.end method

.method public getSpan()I
    .locals 1

    .line 59
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->span:I

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    return v0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V
    .locals 31
    .param p1, "scope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p2, "isLookingAhead"    # Z

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .local v1, "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v9, 0x0

    .line 186
    .local v9, "$i$a$-with-LazyGridMeasuredItem$place$1":I
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 279
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_1

    .line 280
    const/4 v5, 0x0

    .line 186
    .local v5, "$i$a$-requirePrecondition-LazyGridMeasuredItem$place$1$1":I
    nop

    .line 280
    .end local v5    # "$i$a$-requirePrecondition-LazyGridMeasuredItem$place$1$1":I
    const-string/jumbo v5, "position() should be called first"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 282
    :cond_1
    nop

    .line 187
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v10

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_f

    move v12, v11

    .local v12, "index":I
    const/4 v13, 0x0

    .line 188
    .local v13, "$i$a$-repeat-LazyGridMeasuredItem$place$1$2":I
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 189
    .local v2, "placeable":Landroidx/compose/ui/layout/Placeable;
    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    invoke-direct {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    sub-int v14, v3, v4

    .line 190
    .local v14, "minOffset":I
    iget v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 191
    .local v15, "maxOffset":I
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v3

    .line 192
    .local v3, "offset":J
    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v5

    .line 193
    .local v5, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/4 v6, 0x0

    .line 194
    .local v6, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    if-eqz v5, :cond_7

    .line 195
    if-eqz p2, :cond_2

    .line 197
    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setLookaheadOffset--gyyYBs(J)V

    move-object/from16 v16, v1

    move/from16 v17, v9

    move/from16 v18, v10

    goto :goto_3

    .line 200
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getLookaheadOffset-nOcc-ac()J

    move-result-wide v7

    sget-object v16, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v9    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    .local v17, "$i$a$-with-LazyGridMeasuredItem$place$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 201
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getLookaheadOffset-nOcc-ac()J

    move-result-wide v7

    goto :goto_2

    .line 203
    :cond_3
    move-wide v7, v3

    .line 200
    :goto_2
    nop

    .line 199
    nop

    .line 205
    .local v7, "targetOffset":J
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getPlacementDelta-nOcc-ac()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v9

    .line 208
    .local v9, "animatedOffset":J
    nop

    .line 209
    move-object/from16 v16, v1

    .end local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v16, "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v1

    if-gt v1, v14, :cond_4

    .line 210
    invoke-direct {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v1

    if-le v1, v14, :cond_5

    .line 211
    :cond_4
    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v1

    if-lt v1, v15, :cond_6

    .line 212
    invoke-direct {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v1

    if-lt v1, v15, :cond_6

    .line 214
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->cancelPlacementAnimation()V

    .line 216
    :cond_6
    move-wide v3, v9

    .line 218
    .end local v7    # "targetOffset":J
    .end local v9    # "animatedOffset":J
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    .end local v6    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v1, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    goto :goto_4

    .line 220
    .end local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v17    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    .local v1, "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v6    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v9, "$i$a$-with-LazyGridMeasuredItem$place$1":I
    :cond_7
    move-object/from16 v16, v1

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v9    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    .restart local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v17    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    const/4 v1, 0x0

    .line 222
    .end local v6    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v1, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    :goto_4
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->reverseLayout:Z

    if-eqz v6, :cond_a

    .line 224
    move-wide v6, v3

    .local v6, "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0$iv":J
    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v9, 0x0

    .line 283
    .local v9, "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    move-object/from16 v20, v1

    goto :goto_5

    :cond_8
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    .local v10, "mainAxisOffset":I
    const/16 v19, 0x0

    .line 225
    .local v19, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    move-object/from16 v20, v1

    .end local v1    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v20, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v1, v10

    invoke-direct {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v21

    sub-int v1, v1, v21

    move v10, v1

    .line 283
    .end local v10    # "mainAxisOffset":I
    .end local v19    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    .local v1, "mainAxisOffset":I
    const/16 v19, 0x0

    .line 225
    .restart local v19    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    move/from16 v21, v1

    .end local v1    # "mainAxisOffset":I
    .local v21, "mainAxisOffset":I
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int v1, v1, v21

    invoke-direct {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v22

    sub-int v1, v1, v22

    .line 283
    .end local v19    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    .end local v21    # "mainAxisOffset":I
    goto :goto_6

    :cond_9
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    .local v1, "y$iv$iv":I
    .local v10, "x$iv$iv":I
    :goto_6
    const/16 v19, 0x0

    .line 284
    .local v19, "$i$f$IntOffset":I
    move/from16 v21, v1

    .local v21, "val2$iv$iv$iv":I
    move/from16 v22, v10

    .local v22, "val1$iv$iv$iv":I
    move/from16 v23, v21

    .end local v21    # "val2$iv$iv$iv":I
    .local v23, "val2$iv$iv$iv":I
    const/16 v21, 0x0

    .line 285
    .local v21, "$i$f$packInts":I
    move/from16 v24, v1

    move-wide/from16 v25, v3

    move/from16 v1, v22

    move-object/from16 v22, v2

    .end local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "offset":J
    .local v1, "val1$iv$iv$iv":I
    .local v22, "placeable":Landroidx/compose/ui/layout/Placeable;
    .local v24, "y$iv$iv":I
    .local v25, "offset":J
    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    move-wide/from16 v27, v2

    move/from16 v4, v23

    move/from16 v23, v1

    .end local v1    # "val1$iv$iv$iv":I
    .local v4, "val2$iv$iv$iv":I
    .local v23, "val1$iv$iv$iv":I
    int-to-long v1, v4

    const-wide v29, 0xffffffffL

    and-long v1, v1, v29

    or-long v1, v27, v1

    .line 284
    .end local v4    # "val2$iv$iv$iv":I
    .end local v21    # "$i$f$packInts":I
    .end local v23    # "val1$iv$iv$iv":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v1

    .line 283
    .end local v10    # "x$iv$iv":I
    .end local v19    # "$i$f$IntOffset":I
    .end local v24    # "y$iv$iv":I
    nop

    .line 223
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntOffset$-$this$copy$0$iv":J
    .end local v8    # "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v9    # "$i$f$copy-4Tuh3kE":I
    move-wide v3, v1

    .end local v25    # "offset":J
    .restart local v3    # "offset":J
    goto :goto_7

    .line 222
    .end local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .end local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .local v1, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .restart local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    :cond_a
    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-wide/from16 v25, v3

    .line 228
    .end local v1    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .end local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .restart local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    :goto_7
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v3

    .line 229
    if-nez p2, :cond_b

    .line 230
    if-eqz v5, :cond_b

    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setFinalOffset--gyyYBs(J)V

    .line 232
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 233
    if-eqz v20, :cond_c

    .line 234
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v9, v5

    move-object/from16 v1, v16

    move-object/from16 v5, v20

    move-object/from16 v2, v22

    .end local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .end local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .local v1, "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .local v5, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v9, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/graphics/layer/GraphicsLayer;FILjava/lang/Object;)V

    .end local v5    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .restart local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    goto :goto_8

    .line 236
    .end local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v5, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    :cond_c
    move-object v9, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    .end local v5    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_8

    .line 239
    .end local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v5    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    :cond_d
    move-object v9, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    .end local v5    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v16    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    if-eqz v20, :cond_e

    .line 240
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, v20

    .end local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v5, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/graphics/layer/GraphicsLayer;FILjava/lang/Object;)V

    .end local v5    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .restart local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    goto :goto_8

    .line 242
    :cond_e
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 245
    :goto_8
    nop

    .line 187
    .end local v2    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "offset":J
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v12    # "index":I
    .end local v13    # "$i$a$-repeat-LazyGridMeasuredItem$place$1$2":I
    .end local v14    # "minOffset":I
    .end local v15    # "maxOffset":I
    .end local v20    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    move/from16 v10, v18

    goto/16 :goto_1

    .line 246
    .end local v17    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    .local v9, "$i$a$-with-LazyGridMeasuredItem$place$1":I
    :cond_f
    nop

    .line 185
    .end local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v9    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    nop

    .line 246
    return-void
.end method

.method public position(IIII)V
    .locals 7
    .param p1, "mainAxisOffset"    # I
    .param p2, "crossAxisOffset"    # I
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 114
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "mainAxisOffset":I
    .end local p2    # "crossAxisOffset":I
    .end local p3    # "layoutWidth":I
    .end local p4    # "layoutHeight":I
    .local v1, "mainAxisOffset":I
    .local v2, "crossAxisOffset":I
    .local v3, "layoutWidth":I
    .local v4, "layoutHeight":I
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIIIII)V

    .line 122
    return-void
.end method

.method public final position(IIIIII)V
    .locals 16
    .param p1, "mainAxisOffset"    # I
    .param p2, "crossAxisOffset"    # I
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I
    .param p5, "row"    # I
    .param p6, "column"    # I

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, p4

    goto :goto_0

    :cond_0
    move/from16 v1, p3

    :goto_0
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 140
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v1, p3

    goto :goto_1

    :cond_1
    move/from16 v1, p4

    .line 143
    .local v1, "crossAxisLayoutSize":I
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v3, :cond_2

    .line 144
    sub-int v2, v1, p2

    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    sub-int/2addr v2, v3

    goto :goto_2

    .line 146
    :cond_2
    move/from16 v2, p2

    .line 143
    :goto_2
    nop

    .line 142
    nop

    .line 148
    .local v2, "crossAxisOffset":I
    nop

    .line 149
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v3

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    if-eqz v3, :cond_3

    .line 150
    move/from16 v3, p1

    .local v3, "y$iv":I
    move v7, v2

    .local v7, "x$iv":I
    const/4 v8, 0x0

    .line 269
    .local v8, "$i$f$IntOffset":I
    move v9, v3

    .local v9, "val2$iv$iv":I
    move v10, v7

    .local v10, "val1$iv$iv":I
    const/4 v11, 0x0

    .line 270
    .local v11, "$i$f$packInts":I
    int-to-long v12, v10

    shl-long/2addr v12, v6

    int-to-long v14, v9

    and-long/2addr v4, v14

    or-long/2addr v4, v12

    .line 269
    .end local v9    # "val2$iv$iv":I
    .end local v10    # "val1$iv$iv":I
    .end local v11    # "$i$f$packInts":I
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v3

    .end local v3    # "y$iv":I
    .end local v7    # "x$iv":I
    .end local v8    # "$i$f$IntOffset":I
    goto :goto_3

    .line 152
    :cond_3
    move v3, v2

    .restart local v3    # "y$iv":I
    move/from16 v7, p1

    .restart local v7    # "x$iv":I
    const/4 v8, 0x0

    .line 271
    .restart local v8    # "$i$f$IntOffset":I
    move v9, v3

    .restart local v9    # "val2$iv$iv":I
    move v10, v7

    .restart local v10    # "val1$iv$iv":I
    const/4 v11, 0x0

    .line 272
    .restart local v11    # "$i$f$packInts":I
    int-to-long v12, v10

    shl-long/2addr v12, v6

    int-to-long v14, v9

    and-long/2addr v4, v14

    or-long/2addr v4, v12

    .line 271
    .end local v9    # "val2$iv$iv":I
    .end local v10    # "val1$iv$iv":I
    .end local v11    # "$i$f$packInts":I
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v4

    move-wide v3, v4

    .line 148
    .end local v3    # "y$iv":I
    .end local v7    # "x$iv":I
    .end local v8    # "$i$f$IntOffset":I
    :goto_3
    iput-wide v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 154
    move/from16 v3, p5

    iput v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    .line 155
    move/from16 v4, p6

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    .line 156
    iget v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->beforeContentPadding:I

    neg-int v5, v5

    iput v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    .line 157
    iget v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 158
    return-void
.end method

.method public setNonScrollableItem(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 106
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    return-void
.end method

.method public final updateMainAxisLayoutSize(I)V
    .locals 1
    .param p1, "mainAxisLayoutSize"    # I

    .line 165
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 166
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 167
    return-void
.end method
