.class public abstract Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;
.source "LazyStaggeredGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider<",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider\n+ 2 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/SpanRange\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,1486:1\n1130#2:1487\n1136#2:1489\n1133#2:1490\n1130#2:1492\n85#3:1488\n90#3:1491\n85#3:1493\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider\n*L\n1270#1:1487\n1271#1:1489\n1271#1:1490\n1271#1:1492\n1270#1:1488\n1271#1:1491\n1271#1:1493\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008!\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J/\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJO\u0010!\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010#2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&2\u0006\u0010\u001a\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008(\u0010)R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "isVertical",
        "",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;",
        "measureScope",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "resolvedSlots",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;",
        "<init>",
        "(ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;)V",
        "childConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "slot",
        "",
        "span",
        "childConstraints-JhjzzOo",
        "(II)J",
        "getAndMeasure",
        "index",
        "Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;",
        "getAndMeasure-jy6DScQ",
        "(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "lane",
        "constraints",
        "getAndMeasure--hBUhpc",
        "(IIIJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "getKeyIndexMap",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "createItem",
        "key",
        "",
        "contentType",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "createItem-pitSLOA",
        "(IIILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
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
.field private final isVertical:Z

.field private final itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

.field private final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

.field private final resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->$stable:I

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;)V
    .locals 0
    .param p1, "isVertical"    # Z
    .param p2, "itemProvider"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;
    .param p3, "measureScope"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p4, "resolvedSlots"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    .line 1239
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;-><init>()V

    .line 1241
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->isVertical:Z

    .line 1242
    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    .line 1243
    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 1244
    iput-object p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    .line 1240
    return-void
.end method

.method private final childConstraints-JhjzzOo(II)J
    .locals 4
    .param p1, "slot"    # I
    .param p2, "span"    # I

    .line 1249
    nop

    .line 1252
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    .line 1249
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1250
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_0

    .line 1252
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getPositions()[I

    move-result-object v0

    aget v0, v0, p1

    .line 1253
    .local v0, "start":I
    add-int v2, p1, p2

    sub-int/2addr v2, v1

    .line 1254
    .local v2, "endSlot":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getPositions()[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v3

    aget v3, v3, v2

    add-int/2addr v1, v3

    .line 1255
    .local v1, "end":I
    sub-int v3, v1, v0

    move v0, v3

    .line 1249
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "endSlot":I
    :goto_0
    nop

    .line 1248
    nop

    .line 1258
    .local v0, "crossAxisSize":I
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->isVertical:Z

    if-eqz v1, :cond_1

    .line 1259
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v1

    goto :goto_1

    .line 1261
    :cond_1
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v1

    .line 1258
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public abstract createItem-pitSLOA(IIILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;J)",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;"
        }
    .end annotation
.end method

.method public bridge synthetic getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 1
    .param p1, "index"    # I
    .param p2, "lane"    # I
    .param p3, "span"    # I
    .param p4, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 1239
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    return-object v0
.end method

.method public getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .locals 10
    .param p1, "index"    # I
    .param p2, "lane"    # I
    .param p3, "span"    # I
    .param p4, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 1284
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v5

    .line 1285
    .local v5, "key":Ljava/lang/Object;
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v6

    .line 1287
    .local v6, "contentType":Ljava/lang/Object;
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    invoke-virtual {p0, v0, p1, p4, p5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getPlaceables-3p2s80s(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJ)Ljava/util/List;

    move-result-object v7

    .line 1288
    .local v7, "placeables":Ljava/util/List;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v8, p4

    .end local p1    # "index":I
    .end local p2    # "lane":I
    .end local p3    # "span":I
    .end local p4    # "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0":J
    .local v2, "index":I
    .local v3, "lane":I
    .local v4, "span":I
    .local v8, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0":J
    invoke-virtual/range {v1 .. v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->createItem-pitSLOA(IIILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object p1

    return-object p1
.end method

.method public final getAndMeasure-jy6DScQ(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .locals 21
    .param p1, "index"    # I
    .param p2, "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-span$0"    # J

    .line 1266
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v2, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    .line 1267
    .local v4, "key":Ljava/lang/Object;
    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v2, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v5

    .line 1269
    .local v5, "contentType":Ljava/lang/Object;
    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v2

    array-length v9, v2

    .line 1270
    .local v9, "slotCount":I
    move-wide/from16 v2, p2

    .local v2, "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv":J
    const/4 v6, 0x0

    .line 1487
    .local v6, "$i$f$getStart-impl":I
    move-wide v7, v2

    .local v7, "value$iv$iv":J
    const/4 v10, 0x0

    .line 1488
    .local v10, "$i$f$unpackInt1":I
    const/16 v11, 0x20

    shr-long v12, v7, v11

    long-to-int v7, v12

    .line 1487
    .end local v7    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackInt1":I
    nop

    .line 1270
    .end local v2    # "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv":J
    .end local v6    # "$i$f$getStart-impl":I
    add-int/lit8 v2, v9, -0x1

    invoke-static {v7, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 1271
    .local v2, "spanStart":I
    move-wide/from16 v6, p2

    .local v6, "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv":J
    const/4 v3, 0x0

    .line 1489
    .local v3, "$i$f$getSize-impl":I
    move-wide v12, v6

    .local v12, "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv$iv":J
    const/4 v8, 0x0

    .line 1490
    .local v8, "$i$f$getEnd-impl":I
    move-wide v14, v12

    .local v14, "value$iv$iv$iv":J
    const/4 v10, 0x0

    .line 1491
    .local v10, "$i$f$unpackInt2":I
    const-wide v16, 0xffffffffL

    move/from16 v18, v11

    move-wide/from16 v19, v12

    .end local v12    # "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv$iv":J
    .local v19, "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv$iv":J
    and-long v11, v14, v16

    long-to-int v10, v11

    .line 1490
    .end local v10    # "$i$f$unpackInt2":I
    .end local v14    # "value$iv$iv$iv":J
    nop

    .line 1489
    .end local v8    # "$i$f$getEnd-impl":I
    .end local v19    # "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv$iv":J
    move-wide v11, v6

    .local v11, "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv$iv":J
    const/4 v8, 0x0

    .line 1492
    .local v8, "$i$f$getStart-impl":I
    move-wide v13, v11

    .local v13, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1493
    .local v15, "$i$f$unpackInt1":I
    move/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "$i$f$getSize-impl":I
    .end local v4    # "key":Ljava/lang/Object;
    .local v16, "key":Ljava/lang/Object;
    .local v17, "$i$f$getSize-impl":I
    shr-long v3, v13, v18

    long-to-int v3, v3

    .line 1492
    .end local v13    # "value$iv$iv$iv":J
    .end local v15    # "$i$f$unpackInt1":I
    nop

    .line 1489
    .end local v8    # "$i$f$getStart-impl":I
    .end local v11    # "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv$iv":J
    sub-int/2addr v10, v3

    .line 1271
    .end local v6    # "$v$c$androidx-compose-foundation-lazy-staggeredgrid-SpanRange$-this$0$iv":J
    .end local v17    # "$i$f$getSize-impl":I
    sub-int v3, v9, v2

    invoke-static {v10, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 1273
    .local v3, "spanSize":I
    invoke-direct {v0, v2, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->childConstraints-JhjzzOo(II)J

    move-result-wide v7

    .line 1274
    .local v7, "constraints":J
    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    invoke-virtual {v0, v4, v1, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getPlaceables-3p2s80s(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJ)Ljava/util/List;

    move-result-object v6

    .line 1275
    .local v6, "placeables":Ljava/util/List;
    move-object/from16 v4, v16

    .end local v16    # "key":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->createItem-pitSLOA(IIILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v10

    .end local v4    # "key":Ljava/lang/Object;
    .restart local v16    # "key":Ljava/lang/Object;
    return-object v10
.end method

.method public final getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 1

    .line 1292
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    return-object v0
.end method
