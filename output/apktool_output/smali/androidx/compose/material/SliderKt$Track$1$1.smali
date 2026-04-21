.class final Landroidx/compose/material/SliderKt$Track$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Track$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1200:1\n1477#2:1201\n1502#2,3:1202\n1505#2,3:1212\n361#3,7:1205\n215#4:1215\n216#4:1227\n151#5,3:1216\n33#5,4:1219\n154#5,2:1223\n38#5:1225\n156#5:1226\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Track$1$1\n*L\n784#1:1201\n784#1:1202,3\n784#1:1212,3\n784#1:1205,7\n785#1:1215\n785#1:1227\n787#1:1216,3\n787#1:1219,4\n787#1:1223,2\n787#1:1225\n787#1:1226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activeTickColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activeTrackColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTickColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTrackColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $positionFractionEnd:F

.field final synthetic $positionFractionStart:F

.field final synthetic $thumbPx:F

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $trackStrokeWidth:F


# direct methods
.method constructor <init>(FLandroidx/compose/runtime/State;FFFLandroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;FFF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$thumbPx:F

    iput-object p2, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTrackColor:Landroidx/compose/runtime/State;

    iput p3, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    iput p4, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionEnd:F

    iput p5, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionStart:F

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTrackColor:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$tickFractions:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTickColor:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTickColor:Landroidx/compose/runtime/State;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 753
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/SliderKt$Track$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 41
    .param p1, "$this$Canvas"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 754
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 755
    .local v1, "isRtl":Z
    :goto_0
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$thumbPx:F

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-static {v2, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .line 756
    .local v5, "sliderLeft":J
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    iget v7, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$thumbPx:F

    sub-float/2addr v2, v7

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    invoke-static {v2, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    .line 757
    .local v7, "sliderRight":J
    if-eqz v1, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v5

    :goto_1
    move-wide v14, v9

    .line 758
    .local v14, "sliderStart":J
    if-eqz v1, :cond_2

    move-wide/from16 v16, v5

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v7

    .line 759
    .local v16, "sliderEnd":J
    :goto_2
    nop

    .line 760
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTrackColor:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v12

    .line 761
    nop

    .line 762
    nop

    .line 763
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    .line 764
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v19

    .line 759
    const/16 v24, 0x1e0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v11, p1

    move/from16 v18, v2

    invoke-static/range {v11 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 767
    move-wide/from16 v9, v16

    .end local v16    # "sliderEnd":J
    .local v9, "sliderEnd":J
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionEnd:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 768
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v11

    .line 766
    invoke-static {v2, v11}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v31

    .line 772
    .local v31, "sliderValueEnd":J
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionStart:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 773
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v11

    .line 771
    invoke-static {v2, v11}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v29

    .line 776
    .local v29, "sliderValueStart":J
    nop

    .line 777
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTrackColor:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v27

    .line 778
    nop

    .line 779
    nop

    .line 780
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    .line 781
    sget-object v11, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v34

    .line 776
    const/16 v39, 0x1e0

    const/16 v40, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v26, p1

    move/from16 v33, v2

    invoke-static/range {v26 .. v40}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 784
    move-wide/from16 v16, v29

    move-wide/from16 v11, v31

    .end local v29    # "sliderValueStart":J
    .end local v31    # "sliderValueEnd":J
    .local v11, "sliderValueEnd":J
    .local v16, "sliderValueStart":J
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$tickFractions:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$groupBy$iv":Ljava/lang/Iterable;
    iget v13, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionEnd:F

    iget v3, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionStart:F

    const/16 v19, 0x0

    .line 1201
    .local v19, "$i$f$groupBy":I
    new-instance v20, Ljava/util/LinkedHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v20, Ljava/util/Map;

    .local v20, "destination$iv$iv":Ljava/util/Map;
    move-object/from16 v21, v2

    .local v21, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 1202
    .local v22, "$i$f$groupByTo":I
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1203
    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v4

    check-cast v25, Ljava/lang/Number;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->floatValue()F

    move-result v25

    .local v25, "it":F
    const/16 v26, 0x0

    .line 784
    .local v26, "$i$a$-groupBy-SliderKt$Track$1$1$1":I
    cmpl-float v27, v25, v13

    if-gtz v27, :cond_4

    cmpg-float v27, v25, v3

    if-gez v27, :cond_3

    goto :goto_4

    :cond_3
    const/16 v25, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/16 v25, 0x1

    .end local v25    # "it":F
    .end local v26    # "$i$a$-groupBy-SliderKt$Track$1$1$1":I
    :goto_5
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 1203
    move-object/from16 v26, v25

    .line 1204
    .local v26, "key$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v20

    .local v25, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/16 v27, 0x0

    .line 1205
    .local v27, "$i$f$getOrPut":I
    move-object/from16 v39, v25

    move-object/from16 v25, v2

    move-object/from16 v2, v39

    move/from16 v39, v1

    move-object/from16 v1, v26

    .end local v26    # "key$iv$iv":Ljava/lang/Object;
    .local v1, "key$iv$iv":Ljava/lang/Object;
    .local v2, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .local v25, "$this$groupBy$iv":Ljava/lang/Iterable;
    .local v39, "isRtl":Z
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 1206
    .local v26, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v26, :cond_5

    .line 1207
    const/16 v28, 0x0

    .line 1204
    .local v28, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    check-cast v29, Ljava/util/List;

    .line 1207
    .end local v28    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object/from16 v28, v29

    .line 1208
    .local v28, "answer$iv$iv$iv":Ljava/lang/Object;
    move/from16 v29, v3

    move-object/from16 v3, v28

    .end local v28    # "answer$iv$iv$iv":Ljava/lang/Object;
    .local v3, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    nop

    .end local v3    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 1211
    :cond_5
    move/from16 v29, v3

    move-object/from16 v28, v26

    .line 1206
    :goto_6
    nop

    .line 1204
    .end local v2    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v26    # "value$iv$iv$iv":Ljava/lang/Object;
    .end local v27    # "$i$f$getOrPut":I
    move-object/from16 v2, v28

    check-cast v2, Ljava/util/List;

    .line 1212
    .local v2, "list$iv$iv":Ljava/util/List;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v25

    move/from16 v3, v29

    move/from16 v1, v39

    goto :goto_3

    .line 1214
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    .end local v25    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v39    # "isRtl":Z
    .local v1, "isRtl":Z
    .local v2, "$this$groupBy$iv":Ljava/lang/Iterable;
    :cond_6
    move/from16 v39, v1

    move-object/from16 v25, v2

    .line 1201
    .end local v1    # "isRtl":Z
    .end local v2    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v20    # "destination$iv$iv":Ljava/util/Map;
    .end local v21    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v22    # "$i$f$groupByTo":I
    .restart local v25    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .restart local v39    # "isRtl":Z
    nop

    .line 785
    .end local v19    # "$i$f$groupBy":I
    .end local v25    # "$this$groupBy$iv":Ljava/lang/Iterable;
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTickColor:Landroidx/compose/runtime/State;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTickColor:Landroidx/compose/runtime/State;

    iget v3, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    .local v20, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 1215
    .local v4, "$i$f$forEach":I
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .local v18, "element$iv":Ljava/util/Map$Entry;
    const/16 v19, 0x0

    .line 785
    .local v19, "$i$a$-forEach-SliderKt$Track$1$1$2":I
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .local v21, "outsideFraction":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 786
    .local v22, "list":Ljava/util/List;
    nop

    .line 787
    move-object/from16 v23, v22

    .local v23, "$this$fastMap$iv":Ljava/util/List;
    const/16 v24, 0x0

    .line 1216
    .local v24, "$i$f$fastMap":I
    nop

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v25, v1

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1218
    .local v0, "target$iv":Ljava/util/ArrayList;
    move-object/from16 v1, v23

    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v26, 0x0

    .line 1219
    .local v26, "$i$f$fastForEach":I
    nop

    .line 1220
    const/16 v27, 0x0

    move-object/from16 v28, v0

    .end local v0    # "target$iv":Ljava/util/ArrayList;
    .local v27, "index$iv$iv":I
    .local v28, "target$iv":Ljava/util/ArrayList;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v40, v2

    move/from16 v2, v27

    .end local v27    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    :goto_8
    if-ge v2, v0, :cond_7

    .line 1221
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .line 1222
    .local v27, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v29, v27

    .local v29, "it$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 1223
    .local v30, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move/from16 v31, v0

    move-object/from16 v0, v28

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v32, v29

    check-cast v32, Ljava/lang/Number;

    move-object/from16 v33, v1

    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v33, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .local v1, "it":F
    const/16 v32, 0x0

    .line 788
    .local v32, "$i$a$-fastMap-SliderKt$Track$1$1$2$1":I
    invoke-static {v14, v15, v9, v10, v1}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v34

    move/from16 v36, v1

    .end local v1    # "it":F
    .local v36, "it":F
    invoke-static/range {v34 .. v35}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v34

    move/from16 v37, v2

    .end local v2    # "index$iv$iv":I
    .local v37, "index$iv$iv":I
    invoke-static/range {v34 .. v35}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    .end local v32    # "$i$a$-fastMap-SliderKt$Track$1$1$2$1":I
    .end local v36    # "it":F
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    .line 1223
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1224
    nop

    .line 1222
    .end local v29    # "it$iv":Ljava/lang/Object;
    .end local v30    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1220
    .end local v27    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v2, v37, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v33

    .end local v37    # "index$iv$iv":I
    .restart local v2    # "index$iv$iv":I
    goto :goto_8

    .end local v33    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_7
    move-object/from16 v33, v1

    move/from16 v37, v2

    .line 1225
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v2    # "index$iv$iv":I
    .restart local v33    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 1226
    .end local v26    # "$i$f$fastForEach":I
    .end local v33    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v27, v28

    check-cast v27, Ljava/util/List;

    .line 790
    .end local v23    # "$this$fastMap$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastMap":I
    .end local v28    # "target$iv":Ljava/util/ArrayList;
    sget-object v0, Landroidx/compose/ui/graphics/PointMode;->Companion:Landroidx/compose/ui/graphics/PointMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPoints-r_lszbg()I

    move-result v28

    .line 791
    if-eqz v21, :cond_8

    move-object/from16 v0, v25

    goto :goto_9

    :cond_8
    move-object/from16 v0, v40

    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v29

    .line 792
    nop

    .line 793
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v32

    .line 786
    const/16 v37, 0x1e0

    const/16 v38, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v26, p1

    move/from16 v31, v3

    invoke-static/range {v26 .. v38}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPoints-F8ZwMP8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 795
    nop

    .line 1215
    .end local v19    # "$i$a$-forEach-SliderKt$Track$1$1$2":I
    .end local v21    # "outsideFraction":Z
    .end local v22    # "list":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v40

    .end local v18    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_7

    .line 1227
    :cond_9
    nop

    .line 796
    .end local v4    # "$i$f$forEach":I
    .end local v20    # "$this$forEach$iv":Ljava/util/Map;
    return-void
.end method
