.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;
.super Ljava/lang/Object;
.source "LazyLayoutStickyItems.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutStickyItems.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutStickyItems.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 IntList.kt\nandroidx/collection/IntList\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n1#2:219\n366#3:220\n237#3,4:229\n242#3:240\n231#4,2:221\n35#4,5:223\n233#4:228\n360#5,7:233\n*S KotlinDebug\n*F\n+ 1 LazyLayoutStickyItems.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt\n*L\n180#1:220\n189#1:229,4\n189#1:240\n186#1:221,2\n186#1:223,5\n186#1:228\n190#1:233,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0017\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0008\u001ax\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0008\u0008\u0000\u0010\u000e*\u00020\t*\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u0002H\u000e0\u001bH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0007\u001a\u00020\u0008*\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Debug",
        "",
        "debugLog",
        "",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "mainAxisOffset",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
        "getMainAxisOffset",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I",
        "applyStickyItems",
        "",
        "T",
        "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
        "firstVisibleItemIndex",
        "lastVisibleItemIndex",
        "positionedItems",
        "",
        "stickyItems",
        "Landroidx/collection/IntList;",
        "beforeContentPadding",
        "afterContentPadding",
        "layoutWidth",
        "layoutHeight",
        "getAndMeasure",
        "Lkotlin/Function1;",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Debug:Z = false


# direct methods
.method public static final synthetic access$getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v0

    return v0
.end method

.method public static final applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/List;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 23
    .param p0, "$this$applyStickyItems"    # Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;
    .param p1, "firstVisibleItemIndex"    # I
    .param p2, "lastVisibleItemIndex"    # I
    .param p3, "positionedItems"    # Ljava/util/List;
    .param p4, "stickyItems"    # Landroidx/collection/IntList;
    .param p5, "beforeContentPadding"    # I
    .param p6, "afterContentPadding"    # I
    .param p7, "layoutWidth"    # I
    .param p8, "layoutHeight"    # I
    .param p9, "getAndMeasure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
            ">(",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            "II",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/collection/IntList;",
            "IIII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz v0, :cond_9

    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v1, p4

    .local v1, "this_$iv":Landroidx/collection/IntList;
    const/4 v2, 0x0

    .line 220
    .local v2, "$i$f$isNotEmpty":I
    iget v3, v1, Landroidx/collection/IntList;->_size:I

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 180
    .end local v1    # "this_$iv":Landroidx/collection/IntList;
    .end local v2    # "$i$f$isNotEmpty":I
    :goto_0
    if-eqz v1, :cond_9

    .line 183
    move/from16 v13, p1

    move/from16 v14, p2

    invoke-interface {v0, v13, v14, v10}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;->getStickingIndices(IILandroidx/collection/IntList;)Landroidx/collection/IntList;

    move-result-object v1

    .line 182
    move-object v15, v1

    .line 185
    .local v15, "stickingItems":Landroidx/collection/IntList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 186
    .local v1, "positionedStickingItems":Ljava/util/List;
    move-object/from16 v2, p3

    .local v2, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 221
    .local v3, "$i$f$fastFilter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 223
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_2

    .line 224
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 225
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 222
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v19, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v20, 0x0

    .line 186
    .local v20, "$i$a$-fastFilter-LazyLayoutStickyItemsKt$applyStickyItems$visibleStickyItems$1":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/collection/IntList;->contains(I)Z

    move-result v11

    .line 222
    .end local v19    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v20    # "$i$a$-fastFilter-LazyLayoutStickyItemsKt$applyStickyItems$visibleStickyItems$1":I
    if-eqz v11, :cond_1

    move-object v11, v4

    check-cast v11, Ljava/util/Collection;

    move-object/from16 v12, v17

    .end local v17    # "it$iv":Ljava/lang/Object;
    .local v12, "it$iv":Ljava/lang/Object;
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v12    # "it$iv":Ljava/lang/Object;
    .restart local v17    # "it$iv":Ljava/lang/Object;
    :cond_1
    move-object/from16 v12, v17

    .line 225
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    :goto_2
    nop

    .line 223
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    .end local v7    # "index$iv$iv":I
    :cond_2
    nop

    .line 228
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 186
    .end local v2    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFilter":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 189
    .local v2, "visibleStickyItems":Ljava/util/List;
    move-object v11, v15

    .local v11, "this_$iv":Landroidx/collection/IntList;
    const/4 v12, 0x0

    .line 229
    .local v12, "$i$f$forEach":I
    nop

    .line 230
    iget-object v3, v11, Landroidx/collection/IntList;->content:[I

    .line 231
    .local v3, "content$iv":[I
    const/4 v4, 0x0

    .local v4, "i$iv":I
    iget v5, v11, Landroidx/collection/IntList;->_size:I

    :goto_3
    if-ge v4, v5, :cond_8

    .line 232
    move-object v6, v1

    move-object v1, v2

    .end local v2    # "visibleStickyItems":Ljava/util/List;
    .local v1, "visibleStickyItems":Ljava/util/List;
    .local v6, "positionedStickingItems":Ljava/util/List;
    aget v2, v3, v4

    .local v2, "stickingIndex":I
    const/16 v16, 0x0

    .line 190
    .local v16, "$i$a$-forEach-LazyLayoutStickyItemsKt$applyStickyItems$1":I
    move-object/from16 v7, p3

    .local v7, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 233
    .local v8, "$i$f$indexOfFirst":I
    const/16 v17, 0x0

    .line 234
    .local v17, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 235
    .local v20, "item$iv":Ljava/lang/Object;
    move-object/from16 v21, v20

    check-cast v21, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .local v21, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    const/16 v22, 0x0

    .line 190
    .local v22, "$i$a$-indexOfFirst-LazyLayoutStickyItemsKt$applyStickyItems$1$itemIndex$1":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    .line 235
    .end local v21    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v22    # "$i$a$-indexOfFirst-LazyLayoutStickyItemsKt$applyStickyItems$1$itemIndex$1":I
    :goto_5
    if-eqz v0, :cond_4

    .line 236
    goto :goto_6

    .line 237
    :cond_4
    nop

    .end local v20    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    .line 239
    :cond_5
    const/16 v17, -0x1

    .line 190
    .end local v7    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v8    # "$i$f$indexOfFirst":I
    .end local v17    # "index$iv":I
    :goto_6
    move/from16 v0, v17

    .line 193
    .local v0, "itemIndex":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_6

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, p9

    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    goto :goto_7

    .line 196
    :cond_6
    move-object/from16 v8, p9

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 193
    :goto_7
    nop

    .line 192
    nop

    .line 199
    .local v7, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    move-object/from16 v17, v3

    .end local v3    # "content$iv":[I
    .local v17, "content$iv":[I
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    .line 203
    move-object/from16 v18, v1

    const/4 v1, -0x1

    .end local v1    # "visibleStickyItems":Ljava/util/List;
    .local v18, "visibleStickyItems":Ljava/util/List;
    if-ne v0, v1, :cond_7

    const/high16 v1, -0x80000000

    goto :goto_8

    :cond_7
    invoke-static {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v1

    .line 204
    :goto_8
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 199
    move/from16 v8, p8

    move/from16 v21, v0

    move/from16 v20, v4

    move-object v9, v6

    move-object v10, v7

    move-object/from16 v0, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move v4, v1

    move-object/from16 v1, v18

    move/from16 v18, v5

    move/from16 v5, p5

    .end local v0    # "itemIndex":I
    .end local v4    # "i$iv":I
    .end local v6    # "positionedStickingItems":Ljava/util/List;
    .end local v7    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v18    # "visibleStickyItems":Ljava/util/List;
    .restart local v1    # "visibleStickyItems":Ljava/util/List;
    .local v9, "positionedStickingItems":Ljava/util/List;
    .local v10, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .local v20, "i$iv":I
    .local v21, "itemIndex":I
    invoke-interface/range {v0 .. v8}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;->calculateStickingItemOffset(Ljava/util/List;IIIIIII)I

    move-result v3

    .line 198
    nop

    .line 209
    .local v3, "offset":I
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem(Z)V

    .line 210
    const/4 v4, 0x0

    invoke-interface {v10, v3, v4, v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 211
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    nop

    .line 232
    .end local v2    # "stickingIndex":I
    .end local v3    # "offset":I
    .end local v10    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .end local v16    # "$i$a$-forEach-LazyLayoutStickyItemsKt$applyStickyItems$1":I
    .end local v21    # "itemIndex":I
    nop

    .line 231
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v10, p4

    move v4, v2

    move-object/from16 v3, v17

    move/from16 v5, v18

    move-object v2, v1

    move-object v1, v9

    move-object/from16 v9, p3

    .end local v20    # "i$iv":I
    .local v2, "i$iv":I
    goto/16 :goto_3

    .end local v9    # "positionedStickingItems":Ljava/util/List;
    .end local v17    # "content$iv":[I
    .local v1, "positionedStickingItems":Ljava/util/List;
    .local v2, "visibleStickyItems":Ljava/util/List;
    .local v3, "content$iv":[I
    .restart local v4    # "i$iv":I
    :cond_8
    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v1

    move-object v1, v2

    move-object/from16 v17, v3

    move/from16 v20, v4

    .line 240
    .end local v2    # "visibleStickyItems":Ljava/util/List;
    .end local v3    # "content$iv":[I
    .end local v4    # "i$iv":I
    .local v1, "visibleStickyItems":Ljava/util/List;
    .restart local v9    # "positionedStickingItems":Ljava/util/List;
    .restart local v17    # "content$iv":[I
    nop

    .line 213
    .end local v11    # "this_$iv":Landroidx/collection/IntList;
    .end local v12    # "$i$f$forEach":I
    .end local v17    # "content$iv":[I
    move-object v1, v9

    .end local v1    # "visibleStickyItems":Ljava/util/List;
    .end local v9    # "positionedStickingItems":Ljava/util/List;
    .end local v15    # "stickingItems":Landroidx/collection/IntList;
    goto :goto_9

    .line 180
    :cond_9
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v7, p7

    move/from16 v8, p8

    .line 215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 180
    :goto_9
    return-object v1
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "generateMsg"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    .local v0, "$i$f$debugLog":I
    nop

    .line 158
    return-void
.end method

.method private static final getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 4
    .param p0, "$this$mainAxisOffset"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 161
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    .line 219
    .local v0, "it":J
    const/4 v2, 0x0

    .line 161
    .local v2, "$i$a$-let-LazyLayoutStickyItemsKt$mainAxisOffset$1":I
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-LazyLayoutStickyItemsKt$mainAxisOffset$1":I
    :goto_0
    return v3
.end method
