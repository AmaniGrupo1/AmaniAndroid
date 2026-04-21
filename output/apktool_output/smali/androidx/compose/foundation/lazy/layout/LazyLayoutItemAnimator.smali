.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "LazyLayoutItemAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutItemAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutItemAnimator.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 9 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 10 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 11 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 12 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n*L\n1#1,580:1\n103#2:581\n35#2,5:582\n104#2:587\n35#2,3:616\n39#2:626\n35#2,5:629\n35#2,5:636\n35#2,5:672\n35#2,5:679\n35#2,3:717\n39#2:726\n32#3:588\n32#3:590\n80#4:589\n80#4:591\n85#4:721\n90#4:723\n80#4:725\n365#5,3:592\n329#5,6:595\n339#5,3:602\n342#5,9:606\n368#5:615\n372#5,3:686\n329#5,6:689\n339#5,3:696\n342#5,2:700\n345#5,6:704\n375#5:710\n1399#6:601\n1270#6:605\n1399#6:651\n1270#6:655\n1399#6:695\n1270#6:699\n1#7:619\n13409#8,2:620\n13409#8,2:622\n13409#8,2:624\n13474#8,3:658\n12574#8,2:661\n13409#8,2:684\n13409#8,2:702\n13474#8,3:711\n13474#8,3:714\n1019#9,2:627\n1010#9,2:634\n1019#9,2:670\n1010#9,2:677\n231#10,3:641\n200#10,7:644\n211#10,3:652\n214#10,2:656\n217#10,6:663\n234#10:669\n54#11:720\n59#11:722\n30#12:724\n*S KotlinDebug\n*F\n+ 1 LazyLayoutItemAnimator.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator\n*L\n89#1:581\n89#1:582,5\n89#1:587\n113#1:616,3\n113#1:626\n189#1:629,5\n199#1:636,5\n289#1:672,5\n314#1:679,5\n426#1:717,3\n426#1:726\n102#1:588\n104#1:590\n102#1:589\n104#1:591\n431#1:721\n432#1:723\n430#1:725\n111#1:592,3\n111#1:595,6\n111#1:602,3\n111#1:606,9\n111#1:615\n361#1:686,3\n361#1:689,6\n361#1:696,3\n361#1:700,2\n361#1:704,6\n361#1:710\n111#1:601\n111#1:605\n210#1:651\n210#1:655\n361#1:695\n361#1:699\n145#1:620,2\n157#1:622,2\n166#1:624,2\n226#1:658,3\n264#1:661,2\n346#1:684,2\n362#1:702,2\n383#1:711,3\n394#1:714,3\n188#1:627,2\n198#1:634,2\n288#1:670,2\n313#1:677,2\n210#1:641,3\n210#1:644,7\n210#1:652,3\n210#1:656,2\n210#1:663,6\n210#1:669\n431#1:720\n432#1:722\n430#1:724\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0001\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0003KLMB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0082\u0001\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u0003H\u0002J\u0006\u0010-\u001a\u00020\u0019J\u0008\u0010.\u001a\u00020\u0019H\u0002J1\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u000c2\u0012\u0008\u0002\u00102\u001a\u000c0\u0008R\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0002\u00a2\u0006\u0002\u00103J\u001f\u00104\u001a\u00020\u00192\u0006\u00100\u001a\u00028\u00002\u0008\u0008\u0002\u00105\u001a\u00020!H\u0002\u00a2\u0006\u0002\u00106J\u0018\u00107\u001a\u0004\u0018\u00010\u00152\u0006\u0010,\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u000cJ\u0019\u00109\u001a\u00020\u000c*\u00020:2\u0006\u00100\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010;R$\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u000e\u0012\u000c0\u0008R\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010<\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u0011\u0010@\u001a\u00020A\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0018\u0010D\u001a\u00020!*\u00028\u00008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u0018\u00101\u001a\u00020\u000c*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0018\u0010I\u001a\u00020\u000c*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010H\u00a8\u0006N"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "T",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
        "",
        "<init>",
        "()V",
        "keyToItemInfoMap",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "firstVisibleIndex",
        "",
        "movingAwayKeys",
        "Landroidx/collection/MutableScatterSet;",
        "movingInFromStartBound",
        "",
        "movingInFromEndBound",
        "movingAwayToStartBound",
        "movingAwayToEndBound",
        "disappearingItems",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;",
        "displayingNode",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "onMeasured",
        "",
        "consumedScroll",
        "layoutWidth",
        "layoutHeight",
        "positionedItems",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;",
        "isVertical",
        "",
        "isLookingAhead",
        "laneCount",
        "hasLookaheadOccurred",
        "layoutMinOffset",
        "layoutMaxOffset",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "graphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "removeInfoForKey",
        "key",
        "reset",
        "releaseAnimations",
        "initializeAnimation",
        "item",
        "mainAxisOffset",
        "itemInfo",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V",
        "startPlacementAnimationsIfNeeded",
        "isMovingAway",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V",
        "getAnimation",
        "placeableIndex",
        "updateAndReturnOffsetFor",
        "",
        "([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I",
        "minSizeToFitDisappearingItems",
        "Landroidx/compose/ui/unit/IntSize;",
        "getMinSizeToFitDisappearingItems-YbymL2g",
        "()J",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "hasAnimations",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z",
        "getMainAxisOffset",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I",
        "crossAxisOffset",
        "getCrossAxisOffset",
        "ItemInfo",
        "DisplayingDisappearingItemsElement",
        "DisplayingDisappearingItemsNode",
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
.field private final disappearingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

.field private firstVisibleIndex:I

.field private keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final keyToItemInfoMap:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "TT;>.ItemInfo;>;"
        }
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final movingAwayKeys:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 57
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    .line 439
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 46
    return-void
.end method

.method public static final synthetic access$getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .param p1, "$receiver"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 46
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getDisappearingItems$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 46
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getDisplayingNode$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Landroidx/compose/ui/node/DrawModifierNode;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 46
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

    return-object v0
.end method

.method public static final synthetic access$setDisplayingNode$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/ui/node/DrawModifierNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/DrawModifierNode;

    .line 46
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

    return-void
.end method

.method private final getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 4
    .param p1, "$this$crossAxisOffset"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 456
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    .line 619
    .local v0, "it":J
    const/4 v2, 0x0

    .line 456
    .local v2, "$i$a$-let-LazyLayoutItemAnimator$crossAxisOffset$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-LazyLayoutItemAnimator$crossAxisOffset$1":I
    :goto_0
    return v3
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z
    .locals 6
    .param p1, "$this$hasAnimations"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 443
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 444
    .local v4, "$i$a$-repeat-LazyLayoutItemAnimator$hasAnimations$1":I
    invoke-interface {p1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v5

    if-eqz v5, :cond_0

    .local v5, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    const/4 v0, 0x0

    .line 446
    .local v0, "$i$a$-let-LazyLayoutItemAnimator$hasAnimations$1$1":I
    const/4 v1, 0x1

    return v1

    .line 448
    .end local v0    # "$i$a$-let-LazyLayoutItemAnimator$hasAnimations$1$1":I
    .end local v5    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    :cond_0
    nop

    .line 443
    .end local v3    # "index":I
    .end local v4    # "$i$a$-repeat-LazyLayoutItemAnimator$hasAnimations$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_1
    return v1
.end method

.method private final getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 4
    .param p1, "$this$mainAxisOffset"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 453
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    .line 619
    .local v0, "it":J
    const/4 v2, 0x0

    .line 453
    .local v2, "$i$a$-let-LazyLayoutItemAnimator$mainAxisOffset$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-LazyLayoutItemAnimator$mainAxisOffset$1":I
    :goto_0
    return v3
.end method

.method private final initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V
    .locals 17
    .param p1, "item"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .param p2, "mainAxisOffset"    # I
    .param p3, "itemInfo"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "TT;>.ItemInfo;)V"
        }
    .end annotation

    .line 373
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v2

    .line 376
    .local v2, "firstPlaceableOffset":J
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v6

    goto :goto_0

    .line 379
    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v6

    .line 376
    :goto_0
    nop

    .line 375
    nop

    .line 383
    .local v6, "targetFirstPlaceableOffset":J
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v4

    .local v4, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 711
    .local v5, "$i$f$forEachIndexed":I
    const/4 v8, 0x0

    .line 712
    .local v8, "index$iv":I
    array-length v9, v4

    :goto_1
    if-ge v1, v9, :cond_2

    aget-object v10, v4, v1

    .local v10, "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v8, 0x1

    .local v8, "placeableIndex":I
    .local v11, "index$iv":I
    move-object v12, v10

    .local v12, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/4 v13, 0x0

    .line 384
    .local v13, "$i$a$-forEachIndexed-LazyLayoutItemAnimator$initializeAnimation$1":I
    if-eqz v12, :cond_1

    .line 386
    invoke-interface {v0, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v14

    invoke-static {v14, v15, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide v14

    .line 385
    nop

    .line 387
    .local v14, "diffToFirstPlaceableOffset":J
    move/from16 v16, v1

    invoke-static {v6, v7, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_2

    .line 384
    .end local v14    # "diffToFirstPlaceableOffset":J
    :cond_1
    move/from16 v16, v1

    .line 389
    :goto_2
    nop

    .line 712
    .end local v8    # "placeableIndex":I
    .end local v12    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v13    # "$i$a$-forEachIndexed-LazyLayoutItemAnimator$initializeAnimation$1":I
    nop

    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p1

    move v8, v11

    goto :goto_1

    .line 713
    .end local v11    # "index$iv":I
    .local v8, "index$iv":I
    :cond_2
    nop

    .line 390
    .end local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v8    # "index$iv":I
    return-void
.end method

.method static synthetic initializeAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;ILjava/lang/Object;)V
    .locals 0

    .line 368
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 371
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 368
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    return-void
.end method

.method private final releaseAnimations()V
    .locals 26

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 361
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    check-cast v1, Landroidx/collection/ScatterMap;

    .local v1, "this_$iv":Landroidx/collection/ScatterMap;
    const/4 v2, 0x0

    .line 686
    .local v2, "$i$f$forEachValue":I
    iget-object v3, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 688
    .local v3, "v$iv":[Ljava/lang/Object;
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v5, 0x0

    .line 689
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/ScatterMap;->metadata:[J

    .line 690
    .local v6, "m$iv$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 692
    .local v7, "lastIndex$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    if-gt v8, v7, :cond_6

    .line 693
    :goto_0
    aget-wide v9, v6, v8

    .line 694
    .local v9, "slot$iv$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v13, 0x0

    .line 695
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 694
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v16

    if-eqz v11, :cond_5

    .line 696
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 697
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 698
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 699
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v17, v14, v17

    const/16 v18, 0x0

    if-gez v17, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    move/from16 v17, v18

    .line 698
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_3

    .line 700
    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 701
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 688
    .local v16, "$i$a$-forEachIndexed-ScatterMap$forEachValue$1$iv":I
    aget-object v17, v3, v15

    check-cast v17, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .local v17, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    const/16 v19, 0x0

    .line 362
    .local v19, "$i$a$-forEachValue-LazyLayoutItemAnimator$releaseAnimations$1":I
    move/from16 v20, v12

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v12

    .local v12, "$this$forEach$iv":[Ljava/lang/Object;
    const/16 v21, 0x0

    .line 702
    .local v21, "$i$f$forEach":I
    move-object/from16 v22, v1

    .end local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .local v22, "this_$iv":Landroidx/collection/ScatterMap;
    array-length v1, v12

    move/from16 v23, v2

    move/from16 v2, v18

    .end local v2    # "$i$f$forEachValue":I
    .local v23, "$i$f$forEachValue":I
    :goto_3
    if-ge v2, v1, :cond_2

    aget-object v18, v12, v2

    .local v18, "element$iv":Ljava/lang/Object;
    move-object/from16 v24, v18

    .local v24, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/16 v25, 0x0

    .line 362
    .local v25, "$i$a$-forEach-LazyLayoutItemAnimator$releaseAnimations$1$1":I
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 702
    .end local v24    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v25    # "$i$a$-forEach-LazyLayoutItemAnimator$releaseAnimations$1$1":I
    :cond_1
    nop

    .end local v18    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 703
    :cond_2
    nop

    .line 363
    .end local v12    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v21    # "$i$f$forEach":I
    nop

    .line 688
    .end local v17    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v19    # "$i$a$-forEachValue-LazyLayoutItemAnimator$releaseAnimations$1":I
    nop

    .line 701
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-ScatterMap$forEachValue$1$iv":I
    goto :goto_4

    .line 698
    .end local v14    # "index$iv$iv":I
    .end local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v23    # "$i$f$forEachValue":I
    .restart local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v2    # "$i$f$forEachValue":I
    :cond_3
    move-object/from16 v22, v1

    move/from16 v23, v2

    move/from16 v20, v12

    .line 704
    .end local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v2    # "$i$f$forEachValue":I
    .restart local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v23    # "$i$f$forEachValue":I
    :goto_4
    shr-long v9, v9, v20

    .line 697
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    goto :goto_1

    .end local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v23    # "$i$f$forEachValue":I
    .restart local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v2    # "$i$f$forEachValue":I
    :cond_4
    move-object/from16 v22, v1

    move/from16 v23, v2

    move/from16 v20, v12

    .line 706
    .end local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v2    # "$i$f$forEachValue":I
    .end local v13    # "j$iv$iv":I
    .restart local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v23    # "$i$f$forEachValue":I
    move/from16 v1, v20

    if-ne v11, v1, :cond_8

    goto :goto_5

    .line 694
    .end local v11    # "bitCount$iv$iv":I
    .end local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v23    # "$i$f$forEachValue":I
    .restart local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v2    # "$i$f$forEachValue":I
    :cond_5
    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 692
    .end local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v2    # "$i$f$forEachValue":I
    .end local v9    # "slot$iv$iv":J
    .restart local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v23    # "$i$f$forEachValue":I
    :goto_5
    if-eq v8, v7, :cond_7

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v22

    move/from16 v2, v23

    goto/16 :goto_0

    .end local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v23    # "$i$f$forEachValue":I
    .restart local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v2    # "$i$f$forEachValue":I
    :cond_6
    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 709
    .end local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v2    # "$i$f$forEachValue":I
    .end local v8    # "i$iv$iv":I
    .restart local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v23    # "$i$f$forEachValue":I
    :cond_7
    nop

    .line 710
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    :cond_8
    nop

    .line 364
    .end local v3    # "v$iv":[Ljava/lang/Object;
    .end local v22    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v23    # "$i$f$forEachValue":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 366
    :cond_9
    return-void
.end method

.method private final removeInfoForKey(Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 684
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/4 v6, 0x0

    .line 346
    .local v6, "$i$a$-forEach-LazyLayoutItemAnimator$removeInfoForKey$1":I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 684
    .end local v5    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v6    # "$i$a$-forEach-LazyLayoutItemAnimator$removeInfoForKey$1":I
    :cond_0
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 685
    :cond_1
    nop

    .line 347
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    :cond_2
    return-void
.end method

.method private final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V
    .locals 18
    .param p1, "item"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .param p2, "isMovingAway"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 394
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v2

    .local v2, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 714
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .line 715
    .local v4, "index$iv":I
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    .local v7, "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v4, 0x1

    .local v4, "placeableIndex":I
    .local v8, "index$iv":I
    move-object v9, v7

    .local v9, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/4 v10, 0x0

    .line 395
    .local v10, "$i$a$-forEachIndexed-LazyLayoutItemAnimator$startPlacementAnimationsIfNeeded$1":I
    if-eqz v9, :cond_2

    .line 396
    move-object/from16 v11, p1

    invoke-interface {v11, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v12

    .line 397
    .local v12, "newTarget":J
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v14

    .line 398
    .local v14, "currentTarget":J
    nop

    .line 399
    sget-object v16, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    move-object/from16 v17, v1

    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v17, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v0

    invoke-static {v14, v15, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    invoke-static {v14, v15, v12, v13}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide v0

    move-object/from16 v16, v2

    move/from16 v2, p2

    .end local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .local v16, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    invoke-virtual {v9, v0, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animatePlacementDelta-ar5cAso(JZ)V

    goto :goto_1

    .line 400
    .end local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    :cond_0
    move-object/from16 v16, v2

    move/from16 v2, p2

    .end local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    goto :goto_1

    .line 399
    .end local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v16, v2

    move/from16 v2, p2

    .line 404
    .end local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    :goto_1
    invoke-virtual {v9, v12, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_2

    .line 395
    .end local v12    # "newTarget":J
    .end local v14    # "currentTarget":J
    .end local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v17    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v11, p1

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move/from16 v2, p2

    .line 406
    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v17    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    :goto_2
    nop

    .line 715
    .end local v4    # "placeableIndex":I
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v10    # "$i$a$-forEachIndexed-LazyLayoutItemAnimator$startPlacementAnimationsIfNeeded$1":I
    nop

    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move v4, v8

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    goto :goto_0

    .line 716
    .end local v8    # "index$iv":I
    .end local v16    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v17    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .local v4, "index$iv":I
    :cond_3
    nop

    .line 407
    .end local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "index$iv":I
    return-void
.end method

.method static synthetic startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V
    .locals 0

    .line 392
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    return-void
.end method

.method private final updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 7
    .param p1, "$this$updateAndReturnOffsetFor"    # [I
    .param p2, "item"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ITT;)I"
        }
    .end annotation

    .line 413
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getLane()I

    move-result v0

    .line 414
    .local v0, "lane":I
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getSpan()I

    move-result v1

    .line 415
    .local v1, "span":I
    const/4 v2, 0x0

    .line 416
    .local v2, "maxOffset":I
    move v3, v0

    .local v3, "i":I
    add-int v4, v0, v1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 417
    aget v5, p1, v3

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v3

    .line 418
    aget v5, p1, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    .end local v3    # "i":I
    :cond_0
    return v2
.end method


# virtual methods
.method public final getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "placeableIndex"    # I

    .line 410
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMinSizeToFitDisappearingItems-YbymL2g()J
    .locals 24

    .line 425
    const-wide/16 v0, 0x0

    .local v0, "size":J
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    .line 426
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 717
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 718
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 719
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .local v8, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/4 v9, 0x0

    .line 427
    .local v9, "$i$a$-fastForEach-LazyLayoutItemAnimator$minSizeToFitDisappearingItems$1":I
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v10

    .line 428
    .local v10, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    if-eqz v10, :cond_0

    .line 429
    nop

    .line 430
    nop

    .line 431
    move-wide v11, v0

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v13, 0x0

    .line 720
    .local v13, "$i$f$getWidth-impl":I
    move-wide v14, v11

    .local v14, "value$iv$iv":J
    const/16 v16, 0x0

    .line 721
    .local v16, "$i$f$unpackInt1":I
    const/16 v17, 0x20

    move-wide/from16 v18, v0

    .end local v0    # "size":J
    .local v18, "size":J
    shr-long v0, v14, v17

    long-to-int v0, v0

    .line 720
    .end local v14    # "value$iv$iv":J
    .end local v16    # "$i$f$unpackInt1":I
    nop

    .line 431
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v13    # "$i$f$getWidth-impl":I
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getSize-YbymL2g()J

    move-result-wide v11

    .restart local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v13, 0x0

    .line 720
    .restart local v13    # "$i$f$getWidth-impl":I
    move-wide v14, v11

    .restart local v14    # "value$iv$iv":J
    const/16 v16, 0x0

    .line 721
    .restart local v16    # "$i$f$unpackInt1":I
    move/from16 v20, v1

    shr-long v1, v14, v17

    long-to-int v1, v1

    .line 720
    .end local v14    # "value$iv$iv":J
    .end local v16    # "$i$f$unpackInt1":I
    nop

    .line 431
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v13    # "$i$f$getWidth-impl":I
    add-int v1, v20, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 432
    move-wide/from16 v1, v18

    .local v1, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 722
    .local v11, "$i$f$getHeight-impl":I
    move-wide v12, v1

    .local v12, "value$iv$iv":J
    const/4 v14, 0x0

    .line 723
    .local v14, "$i$f$unpackInt2":I
    const-wide v15, 0xffffffffL

    move/from16 v20, v0

    move-wide/from16 v21, v1

    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .local v21, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    and-long v0, v12, v15

    long-to-int v0, v0

    .line 722
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackInt2":I
    nop

    .line 432
    .end local v11    # "$i$f$getHeight-impl":I
    .end local v21    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getSize-YbymL2g()J

    move-result-wide v11

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 722
    .local v2, "$i$f$getHeight-impl":I
    move-wide v13, v11

    .local v13, "value$iv$iv":J
    const/16 v21, 0x0

    .line 723
    .local v21, "$i$f$unpackInt2":I
    move/from16 v22, v1

    move/from16 v23, v2

    .end local v2    # "$i$f$getHeight-impl":I
    .local v23, "$i$f$getHeight-impl":I
    and-long v1, v13, v15

    long-to-int v1, v1

    .line 722
    .end local v13    # "value$iv$iv":J
    .end local v21    # "$i$f$unpackInt2":I
    nop

    .line 432
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v23    # "$i$f$getHeight-impl":I
    add-int v1, v22, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 430
    nop

    .local v0, "height$iv":I
    .local v20, "width$iv":I
    const/4 v1, 0x0

    .line 724
    .local v1, "$i$f$IntSize":I
    move v2, v0

    .local v2, "val2$iv$iv":I
    move/from16 v11, v20

    .local v11, "val1$iv$iv":I
    const/4 v12, 0x0

    .line 725
    .local v12, "$i$f$packInts":I
    int-to-long v13, v11

    shl-long v13, v13, v17

    move/from16 v17, v0

    move/from16 v21, v1

    .end local v0    # "height$iv":I
    .end local v1    # "$i$f$IntSize":I
    .local v17, "height$iv":I
    .local v21, "$i$f$IntSize":I
    int-to-long v0, v2

    and-long/2addr v0, v15

    or-long/2addr v0, v13

    .line 724
    .end local v2    # "val2$iv$iv":I
    .end local v11    # "val1$iv$iv":I
    .end local v12    # "$i$f$packInts":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    .line 429
    .end local v17    # "height$iv":I
    .end local v20    # "width$iv":I
    .end local v21    # "$i$f$IntSize":I
    nop

    .end local v18    # "size":J
    .local v0, "size":J
    goto :goto_1

    .line 428
    :cond_0
    move-wide/from16 v18, v0

    .line 435
    :goto_1
    nop

    .line 719
    .end local v8    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v9    # "$i$a$-fastForEach-LazyLayoutItemAnimator$minSizeToFitDisappearingItems$1":I
    .end local v10    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    nop

    .line 717
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v18, v0

    .line 726
    .end local v0    # "size":J
    .end local v5    # "index$iv":I
    .restart local v18    # "size":J
    nop

    .line 436
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    return-wide v18
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 439
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 51
    .param p1, "consumedScroll"    # I
    .param p2, "layoutWidth"    # I
    .param p3, "layoutHeight"    # I
    .param p4, "positionedItems"    # Ljava/util/List;
    .param p5, "keyIndexMap"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .param p6, "itemProvider"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;
    .param p7, "isVertical"    # Z
    .param p8, "isLookingAhead"    # Z
    .param p9, "laneCount"    # I
    .param p10, "hasLookaheadOccurred"    # Z
    .param p11, "layoutMinOffset"    # I
    .param p12, "layoutMaxOffset"    # I
    .param p13, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p14, "graphicsContext"    # Landroidx/compose/ui/graphics/GraphicsContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider<",
            "TT;>;ZZIZII",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            ")V"
        }
    .end annotation

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p9

    iget-object v11, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 87
    .local v11, "previousKeyToIndexMap":Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    iput-object v9, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 89
    move-object/from16 v1, p4

    .local v1, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 581
    .local v2, "$i$f$fastAny":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 582
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_0
    if-ge v5, v12, :cond_1

    .line 583
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 584
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 581
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v14, v16

    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v14, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v18, 0x0

    .line 89
    .local v18, "$i$a$-fastAny-LazyLayoutItemAnimator$onMeasured$hasAnimations$1":I
    invoke-direct {v0, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z

    move-result v14

    .line 581
    .end local v14    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v18    # "$i$a$-fastAny-LazyLayoutItemAnimator$onMeasured$hasAnimations$1":I
    if-eqz v14, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 584
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_0
    nop

    .line 582
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 586
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .line 587
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v1, 0x0

    .line 89
    .end local v1    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_1
    move v12, v1

    .line 90
    .local v12, "hasAnimations":Z
    if-nez v12, :cond_2

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    .line 93
    return-void

    .line 96
    :cond_2
    iget v14, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 97
    .local v14, "previousFirstVisibleIndex":I
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 101
    if-eqz p7, :cond_4

    .line 102
    const/4 v4, 0x0

    .local v4, "x$iv":I
    move/from16 v5, p1

    .local v5, "y$iv":I
    const/4 v15, 0x0

    .line 588
    .local v15, "$i$f$IntOffset":I
    move/from16 v16, v5

    .local v16, "val2$iv$iv":I
    move/from16 v17, v4

    .local v17, "val1$iv$iv":I
    const/16 v18, 0x0

    .line 589
    .local v18, "$i$f$packInts":I
    move/from16 v1, v17

    const/16 v2, 0x20

    const-wide v19, 0xffffffffL

    .end local v4    # "x$iv":I
    .local v1, "val1$iv$iv":I
    .local v17, "x$iv":I
    int-to-long v3, v1

    shl-long v2, v3, v2

    move/from16 v21, v14

    move/from16 v4, v16

    .end local v14    # "previousFirstVisibleIndex":I
    .end local v16    # "val2$iv$iv":I
    .local v4, "val2$iv$iv":I
    .local v21, "previousFirstVisibleIndex":I
    int-to-long v13, v4

    and-long v13, v13, v19

    or-long v1, v2, v13

    .line 588
    .end local v1    # "val1$iv$iv":I
    .end local v4    # "val2$iv$iv":I
    .end local v18    # "$i$f$packInts":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v1

    .end local v5    # "y$iv":I
    .end local v15    # "$i$f$IntOffset":I
    .end local v17    # "x$iv":I
    goto :goto_3

    .line 104
    .end local v21    # "previousFirstVisibleIndex":I
    .restart local v14    # "previousFirstVisibleIndex":I
    :cond_4
    move/from16 v21, v14

    const/16 v2, 0x20

    const-wide v19, 0xffffffffL

    .end local v14    # "previousFirstVisibleIndex":I
    .restart local v21    # "previousFirstVisibleIndex":I
    const/4 v1, 0x0

    .local v1, "y$iv":I
    move/from16 v3, p1

    .local v3, "x$iv":I
    const/4 v4, 0x0

    .line 590
    .local v4, "$i$f$IntOffset":I
    move v5, v1

    .local v5, "val2$iv$iv":I
    move v13, v3

    .local v13, "val1$iv$iv":I
    const/4 v14, 0x0

    .line 591
    .local v14, "$i$f$packInts":I
    move v15, v2

    move/from16 v17, v3

    .end local v3    # "x$iv":I
    .restart local v17    # "x$iv":I
    int-to-long v2, v13

    shl-long/2addr v2, v15

    move v15, v1

    move-wide/from16 v22, v2

    .end local v1    # "y$iv":I
    .local v15, "y$iv":I
    int-to-long v1, v5

    and-long v1, v1, v19

    or-long v1, v22, v1

    .line 590
    .end local v5    # "val2$iv$iv":I
    .end local v13    # "val1$iv$iv":I
    .end local v14    # "$i$f$packInts":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v1

    .line 101
    .end local v4    # "$i$f$IntOffset":I
    .end local v15    # "y$iv":I
    .end local v17    # "x$iv":I
    :goto_3
    nop

    .line 100
    move-wide v13, v1

    .line 109
    .local v13, "scrollOffset":J
    if-nez p8, :cond_6

    if-nez p10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    :goto_5
    move v15, v1

    .line 111
    .local v15, "shouldSetupAnimation":Z
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    check-cast v1, Landroidx/collection/ScatterMap;

    .local v1, "this_$iv":Landroidx/collection/ScatterMap;
    const/4 v2, 0x0

    .line 592
    .local v2, "$i$f$forEachKey":I
    iget-object v3, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 594
    .local v3, "k$iv":[Ljava/lang/Object;
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v5, 0x0

    .line 595
    .local v5, "$i$f$forEachIndexed":I
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/collection/ScatterMap;
    .local v17, "this_$iv":Landroidx/collection/ScatterMap;
    iget-object v1, v4, Landroidx/collection/ScatterMap;->metadata:[J

    .line 596
    .local v1, "m$iv$iv":[J
    move/from16 v18, v2

    .end local v2    # "$i$f$forEachKey":I
    .local v18, "$i$f$forEachKey":I
    array-length v2, v1

    move-object/from16 v19, v3

    .end local v3    # "k$iv":[Ljava/lang/Object;
    .local v19, "k$iv":[Ljava/lang/Object;
    const/4 v3, 0x2

    sub-int/2addr v2, v3

    .line 598
    .local v2, "lastIndex$iv$iv":I
    const/4 v3, 0x0

    .local v3, "i$iv$iv":I
    const-wide/16 v22, 0x80

    const-wide/16 v24, 0xff

    const/16 v26, 0x7

    const-wide v27, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v29, v4

    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v29, "this_$iv$iv":Landroidx/collection/ScatterMap;
    if-gt v3, v2, :cond_b

    .line 599
    :goto_6
    aget-wide v30, v1, v3

    .line 600
    .local v30, "slot$iv$iv":J
    move-wide/from16 v32, v30

    .local v32, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v34, 0x0

    .line 601
    .local v34, "$i$f$maskEmptyOrDeleted":I
    move/from16 v35, v5

    move-wide/from16 v4, v32

    const/16 v36, 0x8

    .end local v5    # "$i$f$forEachIndexed":I
    .end local v32    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v35, "$i$f$forEachIndexed":I
    not-long v6, v4

    shl-long v6, v6, v26

    and-long/2addr v6, v4

    and-long v4, v6, v27

    .line 600
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v34    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v27

    if-eqz v4, :cond_a

    .line 602
    sub-int v4, v3, v2

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    .line 603
    .local v4, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_7
    if-ge v5, v4, :cond_9

    .line 604
    and-long v6, v30, v24

    .local v6, "value$iv$iv$iv":J
    const/16 v32, 0x0

    .line 605
    .local v32, "$i$f$isFull":I
    cmp-long v33, v6, v22

    if-gez v33, :cond_7

    const/4 v6, 0x1

    goto :goto_8

    :cond_7
    const/4 v6, 0x0

    .line 604
    .end local v6    # "value$iv$iv$iv":J
    .end local v32    # "$i$f$isFull":I
    :goto_8
    if-eqz v6, :cond_8

    .line 606
    shl-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v5

    .line 607
    .local v6, "index$iv$iv":I
    move v7, v6

    .local v7, "index$iv":I
    const/16 v32, 0x0

    .line 594
    .local v32, "$i$a$-forEachIndexed-ScatterMap$forEachKey$1$iv":I
    move-object/from16 v33, v1

    .end local v1    # "m$iv$iv":[J
    .local v33, "m$iv$iv":[J
    aget-object v1, v19, v7

    .local v1, "it":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 111
    .local v34, "$i$a$-forEachKey-LazyLayoutItemAnimator$onMeasured$1":I
    move/from16 v37, v5

    .end local v5    # "j$iv$iv":I
    .local v37, "j$iv$iv":I
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v1    # "it":Ljava/lang/Object;
    .end local v34    # "$i$a$-forEachKey-LazyLayoutItemAnimator$onMeasured$1":I
    nop

    .line 607
    .end local v7    # "index$iv":I
    .end local v32    # "$i$a$-forEachIndexed-ScatterMap$forEachKey$1$iv":I
    goto :goto_9

    .line 604
    .end local v6    # "index$iv$iv":I
    .end local v33    # "m$iv$iv":[J
    .end local v37    # "j$iv$iv":I
    .local v1, "m$iv$iv":[J
    .restart local v5    # "j$iv$iv":I
    :cond_8
    move-object/from16 v33, v1

    move/from16 v37, v5

    .line 609
    .end local v1    # "m$iv$iv":[J
    .end local v5    # "j$iv$iv":I
    .restart local v33    # "m$iv$iv":[J
    .restart local v37    # "j$iv$iv":I
    :goto_9
    shr-long v30, v30, v36

    .line 603
    add-int/lit8 v5, v37, 0x1

    move-object/from16 v1, v33

    .end local v37    # "j$iv$iv":I
    .restart local v5    # "j$iv$iv":I
    goto :goto_7

    .end local v33    # "m$iv$iv":[J
    .restart local v1    # "m$iv$iv":[J
    :cond_9
    move-object/from16 v33, v1

    move/from16 v37, v5

    .line 611
    .end local v1    # "m$iv$iv":[J
    .end local v5    # "j$iv$iv":I
    .restart local v33    # "m$iv$iv":[J
    move/from16 v1, v36

    if-ne v4, v1, :cond_d

    goto :goto_a

    .line 600
    .end local v4    # "bitCount$iv$iv":I
    .end local v33    # "m$iv$iv":[J
    .restart local v1    # "m$iv$iv":[J
    :cond_a
    move-object/from16 v33, v1

    move/from16 v1, v36

    .line 598
    .end local v1    # "m$iv$iv":[J
    .end local v30    # "slot$iv$iv":J
    .restart local v33    # "m$iv$iv":[J
    :goto_a
    if-eq v3, v2, :cond_c

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v33

    move/from16 v5, v35

    goto :goto_6

    .end local v33    # "m$iv$iv":[J
    .end local v35    # "$i$f$forEachIndexed":I
    .restart local v1    # "m$iv$iv":[J
    .local v5, "$i$f$forEachIndexed":I
    :cond_b
    move-object/from16 v33, v1

    move/from16 v35, v5

    const/16 v1, 0x8

    .line 614
    .end local v1    # "m$iv$iv":[J
    .end local v3    # "i$iv$iv":I
    .end local v5    # "$i$f$forEachIndexed":I
    .restart local v33    # "m$iv$iv":[J
    .restart local v35    # "$i$f$forEachIndexed":I
    :cond_c
    nop

    .line 615
    .end local v2    # "lastIndex$iv$iv":I
    .end local v29    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v33    # "m$iv$iv":[J
    .end local v35    # "$i$f$forEachIndexed":I
    :cond_d
    nop

    .line 113
    .end local v17    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v18    # "$i$f$forEachKey":I
    .end local v19    # "k$iv":[Ljava/lang/Object;
    move-object/from16 v2, p4

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 616
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_b
    if-ge v4, v5, :cond_21

    .line 617
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 618
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v1, v17

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v1, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v19, 0x0

    .line 115
    .local v19, "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$2":I
    iget-object v7, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 117
    iget-object v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 118
    .local v6, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    if-eqz v11, :cond_e

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v11, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v7

    goto :goto_c

    :cond_e
    const/4 v7, -0x1

    .line 119
    .local v7, "previousIndex":I
    :goto_c
    move-object/from16 v30, v1

    const/4 v1, -0x1

    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v30, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    if-ne v7, v1, :cond_f

    if-eqz v11, :cond_f

    const/4 v1, 0x1

    goto :goto_d

    :cond_f
    const/4 v1, 0x0

    .line 121
    .local v1, "shouldAnimateAppearance":Z
    :goto_d
    if-nez v6, :cond_16

    .line 122
    move/from16 v39, v1

    .end local v1    # "shouldAnimateAppearance":Z
    .local v39, "shouldAnimateAppearance":Z
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    move-object/from16 v29, v1

    .line 123
    .local v29, "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 123
    const/16 v36, 0x20

    const/16 v37, 0x0

    const/16 v35, 0x0

    move/from16 v33, p11

    move/from16 v34, p12

    move-object/from16 v31, p13

    move-object/from16 v32, p14

    invoke-static/range {v29 .. v37}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;IIIILjava/lang/Object;)V

    .line 130
    move-object/from16 v40, v2

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    .end local v29    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v30    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v1, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v2, "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v40, "$this$fastForEach$iv":Ljava/util/List;
    move/from16 v41, v3

    .end local v3    # "$i$f$fastForEach":I
    .local v41, "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move/from16 v42, v4

    .end local v4    # "index$iv":I
    .local v42, "index$iv":I
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v3

    if-eq v3, v7, :cond_11

    const/4 v3, -0x1

    if-eq v7, v3, :cond_11

    .line 132
    move/from16 v3, v21

    .end local v21    # "previousFirstVisibleIndex":I
    .local v3, "previousFirstVisibleIndex":I
    if-ge v7, v3, :cond_10

    .line 134
    iget-object v4, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_e

    .line 136
    :cond_10
    iget-object v4, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    :goto_e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move/from16 v33, v3

    move/from16 v36, v5

    const/4 v3, 0x2

    goto/16 :goto_18

    .line 131
    .end local v3    # "previousFirstVisibleIndex":I
    .restart local v21    # "previousFirstVisibleIndex":I
    :cond_11
    move/from16 v3, v21

    .line 139
    .end local v21    # "previousFirstVisibleIndex":I
    .restart local v3    # "previousFirstVisibleIndex":I
    nop

    .line 140
    nop

    .line 141
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v29

    .line 619
    nop

    .local v29, "it":J
    const/4 v4, 0x0

    .line 141
    .local v4, "$i$a$-let-LazyLayoutItemAnimator$onMeasured$2$1":I
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v21

    goto :goto_f

    :cond_12
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v21

    :goto_f
    move/from16 v4, v21

    .line 142
    .end local v4    # "$i$a$-let-LazyLayoutItemAnimator$onMeasured$2$1":I
    .end local v29    # "it":J
    nop

    .line 139
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 144
    if-eqz v39, :cond_15

    .line 145
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v4

    .local v4, "$this$forEach$iv":[Ljava/lang/Object;
    const/16 v21, 0x0

    .line 620
    .local v21, "$i$f$forEach":I
    move-object/from16 v30, v1

    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .restart local v30    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    array-length v1, v4

    move-object/from16 v29, v2

    const/4 v2, 0x0

    .end local v2    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v29, "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    :goto_10
    if-ge v2, v1, :cond_14

    aget-object v31, v4, v2

    .local v31, "element$iv":Ljava/lang/Object;
    move-object/from16 v32, v31

    .local v32, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/16 v33, 0x0

    .line 145
    .local v33, "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$2$2":I
    if-eqz v32, :cond_13

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    sget-object v34, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 620
    :cond_13
    nop

    .end local v31    # "element$iv":Ljava/lang/Object;
    .end local v32    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v33    # "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$2$2":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 621
    :cond_14
    goto :goto_11

    .line 144
    .end local v4    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v21    # "$i$f$forEach":I
    .end local v29    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v30    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .restart local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .restart local v2    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    :cond_15
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    .line 621
    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v2    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v29    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v30    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    :goto_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v33, v3

    move/from16 v36, v5

    move-object/from16 v1, v30

    const/4 v3, 0x2

    .end local v29    # "newItemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    goto/16 :goto_18

    .line 149
    .end local v39    # "shouldAnimateAppearance":Z
    .end local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v41    # "$i$f$fastForEach":I
    .end local v42    # "index$iv":I
    .local v1, "shouldAnimateAppearance":Z
    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    .local v3, "$i$f$fastForEach":I
    .local v4, "index$iv":I
    .local v21, "previousFirstVisibleIndex":I
    :cond_16
    move/from16 v39, v1

    move-object/from16 v40, v2

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v3, v21

    .end local v1    # "shouldAnimateAppearance":Z
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "index$iv":I
    .end local v21    # "previousFirstVisibleIndex":I
    .local v3, "previousFirstVisibleIndex":I
    .restart local v39    # "shouldAnimateAppearance":Z
    .restart local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v41    # "$i$f$fastForEach":I
    .restart local v42    # "index$iv":I
    if-eqz v15, :cond_1f

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

    .line 150
    const/16 v36, 0x20

    const/16 v37, 0x0

    const/16 v35, 0x0

    move/from16 v33, p11

    move/from16 v34, p12

    move-object/from16 v31, p13

    move-object/from16 v32, p14

    move-object/from16 v29, v6

    .end local v6    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v29, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-static/range {v29 .. v37}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;IIIILjava/lang/Object;)V

    .line 157
    move-object/from16 v1, v30

    .end local v30    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v1, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v2

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 622
    .local v4, "$i$f$forEach":I
    array-length v6, v2

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v21, "$this$forEach$iv":[Ljava/lang/Object;
    :goto_12
    if-ge v2, v6, :cond_19

    aget-object v30, v21, v2

    .local v30, "element$iv":Ljava/lang/Object;
    move-object/from16 v31, v30

    .local v31, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/16 v32, 0x0

    .line 158
    .local v32, "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$2$3":I
    nop

    .line 159
    if-eqz v31, :cond_18

    .line 160
    move/from16 v34, v2

    move/from16 v33, v3

    .end local v3    # "previousFirstVisibleIndex":I
    .local v33, "previousFirstVisibleIndex":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v2

    sget-object v35, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    move/from16 v37, v4

    move/from16 v36, v5

    .end local v4    # "$i$f$forEach":I
    .local v37, "$i$f$forEach":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_17

    .line 162
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    move-object/from16 v4, v31

    .end local v31    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v4, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    invoke-virtual {v4, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_13

    .line 160
    .end local v4    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v31    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    :cond_17
    move-object/from16 v4, v31

    .end local v31    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v4    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    goto :goto_13

    .line 159
    .end local v33    # "previousFirstVisibleIndex":I
    .end local v37    # "$i$f$forEach":I
    .restart local v3    # "previousFirstVisibleIndex":I
    .local v4, "$i$f$forEach":I
    .restart local v31    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    :cond_18
    move/from16 v34, v2

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v36, v5

    move-object/from16 v4, v31

    .line 164
    .end local v3    # "previousFirstVisibleIndex":I
    .end local v31    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v4, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v33    # "previousFirstVisibleIndex":I
    .restart local v37    # "$i$f$forEach":I
    :goto_13
    nop

    .line 622
    .end local v4    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v32    # "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$2$3":I
    nop

    .end local v30    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v2, v34, 0x1

    move/from16 v3, v33

    move/from16 v5, v36

    move/from16 v4, v37

    goto :goto_12

    .line 623
    .end local v33    # "previousFirstVisibleIndex":I
    .end local v37    # "$i$f$forEach":I
    .restart local v3    # "previousFirstVisibleIndex":I
    .local v4, "$i$f$forEach":I
    :cond_19
    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v36, v5

    .line 165
    .end local v3    # "previousFirstVisibleIndex":I
    .end local v4    # "$i$f$forEach":I
    .end local v21    # "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v33    # "previousFirstVisibleIndex":I
    if-eqz v39, :cond_1e

    .line 166
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v2

    .restart local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 624
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_1d

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object/from16 v21, v6

    .local v21, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/16 v30, 0x0

    .line 167
    .local v30, "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$2$4":I
    if-eqz v21, :cond_1c

    .line 168
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 169
    move-object/from16 v31, v2

    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v31, "$this$forEach$iv":[Ljava/lang/Object;
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    move/from16 v32, v3

    move-object/from16 v3, v21

    .end local v21    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v3, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v32, "$i$f$forEach":I
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v2, :cond_1b

    invoke-static {v2}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_15

    .line 168
    .end local v31    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v32    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v3, "$i$f$forEach":I
    .restart local v21    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    :cond_1a
    move-object/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v3, v21

    .line 172
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v21    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v3, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v31    # "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v32    # "$i$f$forEach":I
    :cond_1b
    :goto_15
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    goto :goto_16

    .line 167
    .end local v31    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v32    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v3, "$i$f$forEach":I
    .restart local v21    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    :cond_1c
    move-object/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v3, v21

    .line 174
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v21    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v3, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v31    # "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v32    # "$i$f$forEach":I
    :goto_16
    nop

    .line 624
    .end local v3    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v30    # "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$2$4":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v31

    move/from16 v3, v32

    goto :goto_14

    .line 625
    .end local v31    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v32    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v3, "$i$f$forEach":I
    :cond_1d
    move-object/from16 v31, v2

    move/from16 v32, v3

    .line 176
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V

    goto :goto_17

    .line 149
    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v29    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v33    # "previousFirstVisibleIndex":I
    .local v3, "previousFirstVisibleIndex":I
    .local v6, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v30, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    :cond_1f
    move/from16 v33, v3

    move/from16 v36, v5

    move-object/from16 v29, v6

    move-object/from16 v1, v30

    const/4 v3, 0x2

    .line 176
    .end local v3    # "previousFirstVisibleIndex":I
    .end local v6    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v30    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .restart local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .restart local v29    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v33    # "previousFirstVisibleIndex":I
    :goto_17
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v7    # "previousIndex":I
    .end local v29    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v39    # "shouldAnimateAppearance":Z
    goto :goto_18

    .line 181
    .end local v33    # "previousFirstVisibleIndex":I
    .end local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v41    # "$i$f$fastForEach":I
    .end local v42    # "index$iv":I
    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    .local v3, "$i$f$fastForEach":I
    .local v4, "index$iv":I
    .local v21, "previousFirstVisibleIndex":I
    :cond_20
    move-object/from16 v40, v2

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v36, v5

    move/from16 v33, v21

    const/4 v3, 0x2

    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    .end local v4    # "index$iv":I
    .end local v21    # "previousFirstVisibleIndex":I
    .restart local v33    # "previousFirstVisibleIndex":I
    .restart local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v41    # "$i$f$fastForEach":I
    .restart local v42    # "index$iv":I
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 183
    :goto_18
    nop

    .line 618
    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v19    # "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$2":I
    nop

    .line 616
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v42, 0x1

    move/from16 v21, v33

    move/from16 v5, v36

    move-object/from16 v2, v40

    move/from16 v3, v41

    const/16 v1, 0x8

    .end local v42    # "index$iv":I
    .restart local v4    # "index$iv":I
    goto/16 :goto_b

    .end local v33    # "previousFirstVisibleIndex":I
    .end local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v41    # "$i$f$fastForEach":I
    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v3    # "$i$f$fastForEach":I
    .restart local v21    # "previousFirstVisibleIndex":I
    :cond_21
    move-object/from16 v40, v2

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v33, v21

    const/4 v3, 0x2

    .line 626
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    .end local v4    # "index$iv":I
    .end local v21    # "previousFirstVisibleIndex":I
    .restart local v33    # "previousFirstVisibleIndex":I
    .restart local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v41    # "$i$f$fastForEach":I
    nop

    .line 185
    .end local v40    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v41    # "$i$f$fastForEach":I
    new-array v6, v10, [I

    .line 186
    .local v6, "accumulatedOffsetPerLane":[I
    if-eqz v15, :cond_27

    if-eqz v11, :cond_27

    .line 187
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 188
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v1, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 627
    .local v2, "$i$f$sortByDescending":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    new-instance v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v4, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    :cond_22
    nop

    .line 189
    .end local v1    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortByDescending":I
    iget-object v7, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 629
    .local v17, "$i$f$fastForEach":I
    const/4 v1, 0x0

    .local v1, "index$iv":I
    move-object v2, v7

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_19
    if-ge v1, v2, :cond_23

    .line 630
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 631
    .local v19, "item$iv":Ljava/lang/Object;
    move v4, v1

    .end local v1    # "index$iv":I
    .restart local v4    # "index$iv":I
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v1, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v20, 0x0

    .line 190
    .local v20, "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$4":I
    invoke-direct {v0, v6, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v21

    .line 191
    .local v21, "accumulatedOffset":I
    move v5, v2

    sub-int v2, p11, v21

    .line 192
    .local v2, "mainAxisOffset":I
    move/from16 v29, v4

    .end local v4    # "index$iv":I
    .local v29, "index$iv":I
    const/4 v4, 0x4

    move/from16 v30, v5

    const/4 v5, 0x0

    move/from16 v31, v3

    const/4 v3, 0x0

    move-object/from16 v42, v6

    move/from16 v6, v31

    .end local v6    # "accumulatedOffsetPerLane":[I
    .local v42, "accumulatedOffsetPerLane":[I
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;ILjava/lang/Object;)V

    .line 193
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V

    .line 194
    nop

    .line 631
    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v2    # "mainAxisOffset":I
    .end local v20    # "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$4":I
    .end local v21    # "accumulatedOffset":I
    nop

    .line 629
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v29, 0x1

    move v3, v6

    move/from16 v2, v30

    move-object/from16 v6, v42

    .end local v29    # "index$iv":I
    .local v1, "index$iv":I
    goto :goto_19

    .end local v42    # "accumulatedOffsetPerLane":[I
    .restart local v6    # "accumulatedOffsetPerLane":[I
    :cond_23
    move/from16 v29, v1

    move-object/from16 v42, v6

    move v6, v3

    .line 633
    .end local v1    # "index$iv":I
    .end local v6    # "accumulatedOffsetPerLane":[I
    .restart local v42    # "accumulatedOffsetPerLane":[I
    nop

    .line 195
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastForEach":I
    const/16 v46, 0x6

    const/16 v47, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-static/range {v42 .. v47}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    move-object/from16 v7, v42

    .end local v42    # "accumulatedOffsetPerLane":[I
    .local v7, "accumulatedOffsetPerLane":[I
    goto :goto_1a

    .line 187
    .end local v7    # "accumulatedOffsetPerLane":[I
    .restart local v6    # "accumulatedOffsetPerLane":[I
    :cond_24
    move-object v7, v6

    move v6, v3

    .line 197
    .end local v6    # "accumulatedOffsetPerLane":[I
    .restart local v7    # "accumulatedOffsetPerLane":[I
    :goto_1a
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 198
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .local v1, "$this$sortBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 634
    .local v2, "$i$f$sortBy":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_25

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v3, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 635
    :cond_25
    nop

    .line 199
    .end local v1    # "$this$sortBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortBy":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 636
    .restart local v17    # "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1b
    if-ge v2, v3, :cond_26

    .line 637
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 638
    .local v18, "item$iv":Ljava/lang/Object;
    move-object v4, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v1, v18

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v1, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v19, 0x0

    .line 200
    .local v19, "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$6":I
    invoke-direct {v0, v7, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v20

    .line 202
    .local v20, "accumulatedOffset":I
    add-int v5, p12, v20

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v21

    sub-int v5, v5, v21

    .line 201
    nop

    .line 203
    .local v5, "mainAxisOffset":I
    move-object/from16 v21, v4

    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .local v21, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x4

    move/from16 v29, v2

    move v2, v5

    .end local v5    # "mainAxisOffset":I
    .local v2, "mainAxisOffset":I
    .restart local v29    # "index$iv":I
    const/4 v5, 0x0

    move/from16 v30, v3

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;ILjava/lang/Object;)V

    .line 204
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V

    .line 205
    nop

    .line 638
    .end local v1    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v2    # "mainAxisOffset":I
    .end local v19    # "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$6":I
    .end local v20    # "accumulatedOffset":I
    nop

    .line 636
    .end local v18    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v29, 0x1

    move-object/from16 v1, v21

    move/from16 v3, v30

    .end local v29    # "index$iv":I
    .local v2, "index$iv":I
    goto :goto_1b

    .end local v21    # "$this$fastForEach$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    :cond_26
    move-object/from16 v21, v1

    move/from16 v29, v2

    .line 640
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "index$iv":I
    .restart local v21    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 206
    .end local v17    # "$i$f$fastForEach":I
    .end local v21    # "$this$fastForEach$iv":Ljava/util/List;
    const/16 v46, 0x6

    const/16 v47, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v42, v7

    .end local v7    # "accumulatedOffsetPerLane":[I
    .restart local v42    # "accumulatedOffsetPerLane":[I
    invoke-static/range {v42 .. v47}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .end local v42    # "accumulatedOffsetPerLane":[I
    .restart local v7    # "accumulatedOffsetPerLane":[I
    goto :goto_1c

    .line 186
    .end local v7    # "accumulatedOffsetPerLane":[I
    .restart local v6    # "accumulatedOffsetPerLane":[I
    :cond_27
    move-object v7, v6

    move v6, v3

    .line 210
    .end local v6    # "accumulatedOffsetPerLane":[I
    .restart local v7    # "accumulatedOffsetPerLane":[I
    :cond_28
    :goto_1c
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    check-cast v1, Landroidx/collection/ScatterSet;

    .local v1, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v2, 0x0

    .line 641
    .local v2, "$i$f$forEach":I
    nop

    .line 642
    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 643
    .local v3, "elements$iv":[Ljava/lang/Object;
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v5, 0x0

    .line 644
    .local v5, "$i$f$forEachIndex":I
    nop

    .line 645
    move/from16 v20, v6

    iget-object v6, v4, Landroidx/collection/ScatterSet;->metadata:[J

    .line 646
    .local v6, "m$iv$iv":[J
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/collection/ScatterSet;
    .local v17, "this_$iv":Landroidx/collection/ScatterSet;
    array-length v1, v6

    add-int/lit8 v1, v1, -0x2

    .line 648
    .local v1, "lastIndex$iv$iv":I
    move/from16 v18, v2

    .end local v2    # "$i$f$forEach":I
    .local v18, "$i$f$forEach":I
    const/4 v2, 0x0

    .local v2, "i$iv$iv":I
    if-gt v2, v1, :cond_3f

    .line 649
    :goto_1d
    aget-wide v19, v6, v2

    .line 650
    .local v19, "slot$iv$iv":J
    move-wide/from16 v29, v19

    .local v29, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v21, 0x0

    .line 651
    .local v21, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-wide/from16 v3, v29

    move/from16 v29, v5

    move-object/from16 v30, v6

    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v5    # "$i$f$forEachIndex":I
    .end local v6    # "m$iv$iv":[J
    .local v3, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v29, "$i$f$forEachIndex":I
    .local v30, "m$iv$iv":[J
    .local v31, "elements$iv":[Ljava/lang/Object;
    .local v32, "this_$iv$iv":Landroidx/collection/ScatterSet;
    not-long v5, v3

    shl-long v5, v5, v26

    and-long/2addr v5, v3

    and-long v3, v5, v27

    .line 650
    .end local v3    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v21    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v27

    if-eqz v3, :cond_3e

    .line 652
    sub-int v3, v2, v1

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 653
    .local v3, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_1e
    if-ge v5, v3, :cond_3d

    .line 654
    and-long v34, v19, v24

    .local v34, "value$iv$iv$iv":J
    const/4 v6, 0x0

    .line 655
    .local v6, "$i$f$isFull":I
    cmp-long v21, v34, v22

    if-gez v21, :cond_29

    const/4 v6, 0x1

    goto :goto_1f

    :cond_29
    const/4 v6, 0x0

    .line 654
    .end local v6    # "$i$f$isFull":I
    .end local v34    # "value$iv$iv$iv":J
    :goto_1f
    if-eqz v6, :cond_3c

    .line 656
    shl-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v5

    .line 657
    .local v6, "index$iv$iv":I
    move/from16 v21, v6

    .local v21, "index$iv":I
    const/16 v34, 0x0

    .line 643
    .local v34, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    move/from16 v36, v4

    aget-object v4, v31, v21

    .local v4, "key":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 216
    .local v35, "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$7":I
    move/from16 v37, v5

    .end local v5    # "j$iv$iv":I
    .local v37, "j$iv$iv":I
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v40, v5

    check-cast v40, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-nez v40, :cond_2a

    move/from16 v47, v6

    move/from16 v48, v12

    const/16 v38, 0x0

    goto/16 :goto_2a

    :cond_2a
    move-object/from16 v5, v40

    .line 217
    .local v5, "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    move/from16 v47, v6

    .end local v6    # "index$iv$iv":I
    .local v47, "index$iv$iv":I
    invoke-interface {v9, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v6

    .line 221
    .local v6, "newIndex":I
    move/from16 v48, v12

    .end local v12    # "hasAnimations":Z
    .local v48, "hasAnimations":Z
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getSpan()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v5, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->setSpan(I)V

    .line 222
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getSpan()I

    move-result v12

    sub-int v12, v10, v12

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLane()I

    move-result v10

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v5, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->setLane(I)V

    .line 224
    const/4 v10, -0x1

    if-ne v6, v10, :cond_34

    .line 225
    const/4 v12, 0x0

    .line 226
    .local v12, "isProgress":Z
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    .local v10, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/16 v39, 0x0

    .line 658
    .local v39, "$i$f$forEachIndexed":I
    const/16 v40, 0x0

    .line 659
    .local v40, "index$iv":I
    move-object/from16 v45, v5

    .end local v5    # "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v45, "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    array-length v5, v10

    move/from16 v41, v40

    move/from16 v40, v12

    const/4 v12, 0x0

    .end local v12    # "isProgress":Z
    .local v40, "isProgress":Z
    .local v41, "index$iv":I
    :goto_20
    if-ge v12, v5, :cond_32

    aget-object v42, v10, v12

    .local v42, "item$iv":Ljava/lang/Object;
    add-int/lit8 v43, v41, 0x1

    .local v41, "index":I
    .local v43, "index$iv":I
    move-object/from16 v44, v42

    .local v44, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/16 v46, 0x0

    .line 227
    .local v46, "$i$a$-forEachIndexed-LazyLayoutItemAnimator$onMeasured$7$1":I
    if-eqz v44, :cond_31

    .line 228
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v49

    if-eqz v49, :cond_2b

    .line 229
    const/16 v40, 0x1

    sget-object v49, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v49, v5

    move/from16 v50, v6

    move-object/from16 v6, v44

    const/16 v38, 0x0

    goto :goto_22

    .line 230
    :cond_2b
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationFinished()Z

    move-result v49

    if-eqz v49, :cond_2d

    .line 231
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 232
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v49

    const/16 v38, 0x0

    aput-object v38, v49, v41

    .line 233
    move/from16 v49, v5

    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    move/from16 v50, v6

    move-object/from16 v6, v44

    .end local v44    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v6, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v50, "newIndex":I
    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v5, :cond_2c

    invoke-static {v5}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 245
    :cond_2c
    const/16 v38, 0x0

    goto :goto_22

    .line 236
    .end local v50    # "newIndex":I
    .local v6, "newIndex":I
    .restart local v44    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    :cond_2d
    move/from16 v49, v5

    move/from16 v50, v6

    move-object/from16 v6, v44

    .end local v44    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v6, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v50    # "newIndex":I
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 237
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateDisappearance()V

    .line 239
    :cond_2e
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 240
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v5, :cond_2f

    invoke-static {v5}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 242
    :cond_2f
    const/4 v5, 0x1

    move/from16 v40, v5

    const/16 v38, 0x0

    .end local v40    # "isProgress":Z
    .local v5, "isProgress":Z
    goto :goto_21

    .line 244
    .end local v5    # "isProgress":Z
    .restart local v40    # "isProgress":Z
    :cond_30
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 245
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v5

    const/16 v38, 0x0

    aput-object v38, v5, v41

    :goto_21
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_22
    goto :goto_23

    .line 227
    .end local v50    # "newIndex":I
    .local v6, "newIndex":I
    .restart local v44    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    :cond_31
    move/from16 v49, v5

    move/from16 v50, v6

    move-object/from16 v6, v44

    const/16 v38, 0x0

    .line 249
    .end local v44    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .local v6, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .restart local v50    # "newIndex":I
    :goto_23
    nop

    .line 659
    .end local v6    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v41    # "index":I
    .end local v46    # "$i$a$-forEachIndexed-LazyLayoutItemAnimator$onMeasured$7$1":I
    nop

    .end local v42    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    move/from16 v41, v43

    move/from16 v5, v49

    move/from16 v6, v50

    goto/16 :goto_20

    .line 660
    .end local v43    # "index$iv":I
    .end local v50    # "newIndex":I
    .local v6, "newIndex":I
    .local v41, "index$iv":I
    :cond_32
    move/from16 v50, v6

    const/16 v38, 0x0

    .line 250
    .end local v6    # "newIndex":I
    .end local v10    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v39    # "$i$f$forEachIndexed":I
    .end local v41    # "index$iv":I
    .restart local v50    # "newIndex":I
    if-nez v40, :cond_33

    .line 251
    invoke-direct {v0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .end local v40    # "isProgress":Z
    :cond_33
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v40, v45

    move/from16 v5, v50

    goto/16 :goto_29

    .line 257
    .end local v45    # "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v50    # "newIndex":I
    .local v5, "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v6    # "newIndex":I
    :cond_34
    move-object/from16 v45, v5

    move/from16 v50, v6

    const/16 v38, 0x0

    .end local v5    # "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v6    # "newIndex":I
    .restart local v45    # "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v50    # "newIndex":I
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v43

    .line 258
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLane()I

    move-result v41

    .line 259
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getSpan()I

    move-result v42

    .line 255
    nop

    .line 256
    nop

    .line 258
    nop

    .line 259
    nop

    .line 257
    nop

    .line 255
    move-object/from16 v39, p6

    move/from16 v40, v50

    .end local v50    # "newIndex":I
    .local v40, "newIndex":I
    invoke-virtual/range {v39 .. v44}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    move-result-object v41

    .line 254
    move/from16 v5, v40

    .end local v40    # "newIndex":I
    .local v5, "newIndex":I
    move-object/from16 v6, v41

    .line 262
    .local v6, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/4 v10, 0x1

    invoke-interface {v6, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem(Z)V

    .line 264
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    .local v10, "$this$any$iv":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 661
    .local v12, "$i$f$any":I
    nop

    .end local v6    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v41, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    array-length v6, v10

    move-object/from16 v39, v10

    const/4 v10, 0x0

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .local v39, "$this$any$iv":[Ljava/lang/Object;
    :goto_24
    if-ge v10, v6, :cond_38

    aget-object v40, v39, v10

    .local v40, "element$iv":Ljava/lang/Object;
    move-object/from16 v42, v40

    .local v42, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    const/16 v43, 0x0

    .line 264
    .local v43, "$i$a$-any-LazyLayoutItemAnimator$onMeasured$7$inProgress$1":I
    if-eqz v42, :cond_35

    move/from16 v44, v6

    invoke-virtual/range {v42 .. v42}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress()Z

    move-result v6

    move/from16 v46, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_36

    const/4 v6, 0x1

    goto :goto_25

    :cond_35
    move/from16 v44, v6

    move/from16 v46, v10

    :cond_36
    const/4 v6, 0x0

    .line 661
    .end local v42    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .end local v43    # "$i$a$-any-LazyLayoutItemAnimator$onMeasured$7$inProgress$1":I
    :goto_25
    if-eqz v6, :cond_37

    const/4 v6, 0x1

    goto :goto_26

    .end local v40    # "element$iv":Ljava/lang/Object;
    :cond_37
    add-int/lit8 v10, v46, 0x1

    move/from16 v6, v44

    goto :goto_24

    .line 662
    :cond_38
    const/4 v6, 0x0

    .line 264
    .end local v12    # "$i$f$any":I
    .end local v39    # "$this$any$iv":[Ljava/lang/Object;
    :goto_26
    nop

    .line 265
    .local v6, "inProgress":Z
    if-nez v6, :cond_3a

    if-eqz v11, :cond_39

    invoke-interface {v11, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v10

    if-ne v5, v10, :cond_39

    const/4 v10, 0x1

    goto :goto_27

    :cond_39
    const/4 v10, 0x0

    :goto_27
    if-eqz v10, :cond_3a

    .line 266
    invoke-direct {v0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v40, v45

    goto :goto_29

    .line 270
    :cond_3a
    nop

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getCrossAxisOffset()I

    move-result v46

    .line 270
    move/from16 v44, p11

    move-object/from16 v42, p13

    move-object/from16 v43, p14

    move-object/from16 v40, v45

    move/from16 v45, p12

    .end local v45    # "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v40, "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-virtual/range {v40 .. v46}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V

    .line 278
    move-object/from16 v10, v41

    .end local v41    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v10, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    iget v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    if-ge v5, v12, :cond_3b

    .line 279
    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_28

    .line 281
    :cond_3b
    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    :goto_28
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    .end local v6    # "inProgress":Z
    .end local v10    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    :goto_29
    nop

    .line 643
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "newIndex":I
    .end local v35    # "$i$a$-forEach-LazyLayoutItemAnimator$onMeasured$7":I
    .end local v40    # "info":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    :goto_2a
    nop

    .line 657
    .end local v21    # "index$iv":I
    .end local v34    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_2b

    .line 654
    .end local v37    # "j$iv$iv":I
    .end local v47    # "index$iv$iv":I
    .end local v48    # "hasAnimations":Z
    .local v5, "j$iv$iv":I
    .local v12, "hasAnimations":Z
    :cond_3c
    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v48, v12

    const/16 v38, 0x0

    .line 663
    .end local v5    # "j$iv$iv":I
    .end local v12    # "hasAnimations":Z
    .restart local v37    # "j$iv$iv":I
    .restart local v48    # "hasAnimations":Z
    :goto_2b
    shr-long v19, v19, v36

    .line 653
    add-int/lit8 v5, v37, 0x1

    move/from16 v10, p9

    move/from16 v4, v36

    move/from16 v12, v48

    .end local v37    # "j$iv$iv":I
    .restart local v5    # "j$iv$iv":I
    goto/16 :goto_1e

    .end local v48    # "hasAnimations":Z
    .restart local v12    # "hasAnimations":Z
    :cond_3d
    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v48, v12

    const/16 v38, 0x0

    .line 665
    .end local v5    # "j$iv$iv":I
    .end local v12    # "hasAnimations":Z
    .restart local v48    # "hasAnimations":Z
    if-ne v3, v4, :cond_41

    goto :goto_2c

    .line 650
    .end local v3    # "bitCount$iv$iv":I
    .end local v48    # "hasAnimations":Z
    .restart local v12    # "hasAnimations":Z
    :cond_3e
    move/from16 v48, v12

    const/16 v4, 0x8

    const/16 v38, 0x0

    .line 648
    .end local v12    # "hasAnimations":Z
    .end local v19    # "slot$iv$iv":J
    .restart local v48    # "hasAnimations":Z
    :goto_2c
    if-eq v2, v1, :cond_40

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, p9

    move/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move/from16 v12, v48

    goto/16 :goto_1d

    .end local v29    # "$i$f$forEachIndex":I
    .end local v30    # "m$iv$iv":[J
    .end local v31    # "elements$iv":[Ljava/lang/Object;
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v48    # "hasAnimations":Z
    .local v3, "elements$iv":[Ljava/lang/Object;
    .local v4, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v5, "$i$f$forEachIndex":I
    .local v6, "m$iv$iv":[J
    .restart local v12    # "hasAnimations":Z
    :cond_3f
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v48, v12

    .line 668
    .end local v2    # "i$iv$iv":I
    .end local v3    # "elements$iv":[Ljava/lang/Object;
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v5    # "$i$f$forEachIndex":I
    .end local v6    # "m$iv$iv":[J
    .end local v12    # "hasAnimations":Z
    .restart local v29    # "$i$f$forEachIndex":I
    .restart local v30    # "m$iv$iv":[J
    .restart local v31    # "elements$iv":[Ljava/lang/Object;
    .restart local v32    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v48    # "hasAnimations":Z
    :cond_40
    nop

    .line 669
    .end local v1    # "lastIndex$iv$iv":I
    .end local v29    # "$i$f$forEachIndex":I
    .end local v30    # "m$iv$iv":[J
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    :cond_41
    nop

    .line 287
    .end local v17    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v18    # "$i$f$forEach":I
    .end local v31    # "elements$iv":[Ljava/lang/Object;
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 288
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v1, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 670
    .local v2, "$i$f$sortByDescending":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_42

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v3, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 671
    :cond_42
    nop

    .line 289
    .end local v1    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortByDescending":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 672
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2d
    if-ge v3, v4, :cond_45

    .line 673
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 674
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v6, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/4 v10, 0x0

    .line 290
    .local v10, "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$9":I
    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move-object/from16 v17, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v17, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 291
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-direct {v0, v7, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v12

    .line 293
    .local v12, "accumulatedOffset":I
    if-eqz p8, :cond_43

    .line 294
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v19, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    move-object/from16 v1, v18

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v1

    goto :goto_2e

    .line 296
    .end local v19    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    :cond_43
    move-object/from16 v19, v1

    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .restart local v19    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLayoutMinOffset()I

    move-result v1

    .line 297
    :goto_2e
    nop

    .line 293
    sub-int/2addr v1, v12

    .line 292
    nop

    .line 299
    .local v1, "mainAxisOffset":I
    nop

    .line 300
    nop

    .line 301
    move/from16 v18, v2

    .end local v2    # "$i$f$fastForEach":I
    .local v18, "$i$f$fastForEach":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getCrossAxisOffset()I

    move-result v2

    .line 302
    nop

    .line 303
    nop

    .line 299
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v3, p2

    move/from16 v4, p3

    .end local v3    # "index$iv":I
    .local v20, "index$iv":I
    invoke-interface {v6, v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 305
    if-eqz v15, :cond_44

    .line 306
    const/4 v2, 0x1

    invoke-direct {v0, v6, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 308
    :cond_44
    nop

    .line 674
    .end local v1    # "mainAxisOffset":I
    .end local v6    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v10    # "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$9":I
    .end local v12    # "accumulatedOffset":I
    .end local v19    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    nop

    .line 672
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v20, 0x1

    move v3, v1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v4, v21

    .end local v20    # "index$iv":I
    .local v1, "index$iv":I
    goto :goto_2d

    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastForEach":I
    .restart local v3    # "index$iv":I
    :cond_45
    move/from16 v4, p3

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v3, p2

    .line 676
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    .end local v3    # "index$iv":I
    .restart local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastForEach":I
    nop

    .line 309
    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    const/16 v46, 0x6

    const/16 v47, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v42, v7

    .end local v7    # "accumulatedOffsetPerLane":[I
    .local v42, "accumulatedOffsetPerLane":[I
    invoke-static/range {v42 .. v47}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .end local v42    # "accumulatedOffsetPerLane":[I
    .restart local v7    # "accumulatedOffsetPerLane":[I
    goto :goto_2f

    .line 287
    :cond_46
    move/from16 v3, p2

    move/from16 v4, p3

    .line 312
    :goto_2f
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 313
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v1, "$this$sortBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 677
    .local v2, "$i$f$sortBy":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x1

    if-le v5, v10, :cond_47

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v5, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 678
    :cond_47
    nop

    .line 314
    .end local v1    # "$this$sortBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortBy":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 679
    .local v2, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_30
    if-ge v5, v6, :cond_49

    .line 680
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 681
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v12, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v17, 0x0

    .line 315
    .local v17, "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$11":I
    move-object/from16 v18, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v18, "$this$fastForEach$iv":Ljava/util/List;
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move/from16 v19, v2

    .end local v2    # "$i$f$fastForEach":I
    .local v19, "$i$f$fastForEach":I
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 316
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-direct {v0, v7, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v2

    .line 318
    .local v2, "accumulatedOffset":I
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLayoutMaxOffset()I

    move-result v20

    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v21

    sub-int v20, v20, v21

    add-int v20, v20, v2

    .line 317
    move/from16 v21, v20

    .line 320
    .local v21, "mainAxisOffset":I
    nop

    .line 321
    nop

    .line 322
    move-object/from16 v20, v1

    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .local v20, "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getCrossAxisOffset()I

    move-result v1

    .line 323
    nop

    .line 324
    nop

    .line 320
    move/from16 v22, v2

    move/from16 v2, v21

    .end local v21    # "mainAxisOffset":I
    .local v2, "mainAxisOffset":I
    .local v22, "accumulatedOffset":I
    invoke-interface {v12, v2, v1, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 327
    if-eqz v15, :cond_48

    .line 328
    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    goto :goto_31

    .line 327
    :cond_48
    const/4 v1, 0x1

    .line 330
    :goto_31
    nop

    .line 681
    .end local v2    # "mainAxisOffset":I
    .end local v12    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v17    # "$i$a$-fastForEach-LazyLayoutItemAnimator$onMeasured$11":I
    .end local v20    # "itemInfo":Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
    .end local v22    # "accumulatedOffset":I
    nop

    .line 679
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto :goto_30

    .end local v18    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastForEach":I
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    .local v2, "$i$f$fastForEach":I
    :cond_49
    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 683
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    .end local v5    # "index$iv":I
    .restart local v18    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastForEach":I
    nop

    .line 335
    .end local v18    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastForEach":I
    :cond_4a
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 619
    move-object v2, v1

    .local v2, "$this$onMeasured_u24lambda_u2412":Ljava/util/List;
    const/4 v5, 0x0

    .line 335
    .local v5, "$i$a$-apply-LazyLayoutItemAnimator$onMeasured$12":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .end local v2    # "$this$onMeasured_u24lambda_u2412":Ljava/util/List;
    .end local v5    # "$i$a$-apply-LazyLayoutItemAnimator$onMeasured$12":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    invoke-interface {v8, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 336
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 339
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 340
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 341
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 342
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 343
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 354
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 357
    return-void
.end method
