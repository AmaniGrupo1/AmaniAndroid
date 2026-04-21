.class final Landroidx/compose/material/DrawerKt$BottomDrawer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt;->BottomDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$BottomDrawer$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,916:1\n77#2:917\n77#2:918\n71#3:919\n68#3,6:920\n74#3:954\n78#3:982\n78#4,6:926\n85#4,4:941\n89#4,2:951\n93#4:981\n368#5,9:932\n377#5:953\n378#5,2:979\n4032#6,6:945\n1223#7,6:955\n1223#7,6:961\n1223#7,6:967\n1223#7,6:973\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$BottomDrawer$1\n*L\n638#1:917\n650#1:918\n661#1:919\n661#1:920,6\n661#1:954\n661#1:982\n661#1:926,6\n661#1:941,4\n661#1:951,2\n661#1:981\n661#1:932,9\n661#1:953\n661#1:979,2\n661#1:945,6\n665#1:955,6\n677#1:961,6\n712#1:967,6\n720#1:973,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerBackgroundColor:J

.field final synthetic $drawerContent:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerContentColor:J

.field final synthetic $drawerElevation:F

.field final synthetic $drawerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $drawerState:Landroidx/compose/material/BottomDrawerState;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $scrimColor:J


# direct methods
.method constructor <init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlin/jvm/functions/Function2;JLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material/BottomDrawerState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    iput-object p2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    iput-object p3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$content:Lkotlin/jvm/functions/Function2;

    iput-wide p4, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scrimColor:J

    iput-object p6, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p7, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerBackgroundColor:J

    iput-wide p10, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContentColor:J

    iput p12, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerElevation:F

    iput-object p13, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContent:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 635
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 54
    .param p1, "$this$BoxWithConstraints"    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "C*637@24345L7,649@24760L7,660@25108L3652:Drawer.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_1

    move-object/from16 v3, p1

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    .line 636
    :goto_1
    and-int/lit8 v5, v2, 0x13

    const/16 v6, 0x12

    if-ne v5, v6, :cond_3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 738
    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v35, v2

    goto/16 :goto_12

    .line 636
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.BottomDrawer.<anonymous> (Drawer.kt:635)"

    const v7, 0x48b94970    # 379467.5f

    invoke-static {v7, v2, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-interface {v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    int-to-float v5, v5

    .line 637
    .local v5, "fullHeight":F
    invoke-interface {v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v6

    invoke-interface {v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v7

    if-le v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 638
    .local v6, "isLandscape":Z
    :goto_3
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .local v7, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x0

    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .line 917
    .local v11, "$i$f$getCurrent":I
    const v12, 0x789c5f52

    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 638
    .end local v7    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v11    # "$i$f$getCurrent":I
    move-object v7, v14

    check-cast v7, Landroidx/compose/ui/unit/Density;

    .local v7, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v10, 0x0

    .line 639
    .local v10, "$i$a$-with-DrawerKt$BottomDrawer$1$drawerConstraints$1":I
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 640
    nop

    .line 641
    invoke-interface {v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v11

    invoke-interface {v7, v11}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v17

    .line 642
    invoke-interface {v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v11

    invoke-interface {v7, v11}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v18

    .line 640
    const/16 v19, 0x3

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 638
    .end local v7    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v10    # "$i$a$-with-DrawerKt$BottomDrawer$1$drawerConstraints$1":I
    nop

    .line 645
    .local v7, "drawerConstraints":Landroidx/compose/ui/Modifier;
    iget-boolean v10, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    .line 646
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    iget-object v14, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v14}, Landroidx/compose/material/BottomDrawerState;->getNestedScrollConnection$material_release()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v14

    invoke-static {v10, v14, v11, v4, v11}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    goto :goto_4

    .line 648
    :cond_6
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 645
    :goto_4
    nop

    .line 650
    .local v4, "nestedScroll":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .local v10, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x0

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .line 918
    .local v15, "$i$f$getCurrent":I
    invoke-static {v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 650
    .end local v10    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$getCurrent":I
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v12, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    move/from16 v16, v10

    .line 652
    .local v16, "isRtl":Z
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 653
    invoke-virtual {v10, v4}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 655
    iget-object v10, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v10}, Landroidx/compose/material/BottomDrawerState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v13

    .line 656
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 657
    iget-boolean v15, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    .line 658
    nop

    .line 654
    const/16 v19, 0x30

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Landroidx/compose/material/AnchoredDraggableKt;->anchoredDraggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 652
    nop

    .line 661
    .local v10, "swipeable":Landroidx/compose/ui/Modifier;
    iget-object v12, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$content:Lkotlin/jvm/functions/Function2;

    iget-wide v13, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scrimColor:J

    iget-boolean v15, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    iget-object v8, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    iget-object v11, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    move/from16 v35, v2

    .end local v2    # "$dirty":I
    .local v35, "$dirty":I
    iget-wide v2, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerBackgroundColor:J

    move-wide/from16 v25, v2

    iget-wide v2, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContentColor:J

    move-wide/from16 v27, v2

    iget v2, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerElevation:F

    iget-object v3, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContent:Lkotlin/jvm/functions/Function3;

    const/16 v36, 0x0

    .local v36, "$changed$iv":I
    const/16 v37, 0x0

    .line 919
    .local v37, "$i$f$Box":I
    const v0, 0x2bb5b5d7

    move/from16 v30, v2

    const-string v2, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 920
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    .line 921
    .local v0, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v2, 0x0

    .line 924
    .local v2, "propagateMinConstraints$iv":Z
    move-object/from16 v38, v4

    .end local v4    # "nestedScroll":Landroidx/compose/ui/Modifier;
    .local v38, "nestedScroll":Landroidx/compose/ui/Modifier;
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v17, v36, 0x3

    and-int/lit8 v17, v17, 0x70

    .line 925
    move/from16 v39, v17

    .local v39, "$changed$iv$iv":I
    const/16 v40, 0x0

    .line 926
    .local v40, "$i$f$Layout":I
    move-object/from16 v41, v0

    .end local v0    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v41, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v0, -0x4ee9b9da

    move/from16 v42, v2

    .end local v2    # "propagateMinConstraints$iv":Z
    .local v42, "propagateMinConstraints$iv":Z
    const-string v2, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 927
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    .line 928
    .local v2, "compositeKeyHash$iv$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 929
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v43, v2

    .end local v2    # "compositeKeyHash$iv$iv":I
    .local v43, "compositeKeyHash$iv$iv":I
    invoke-static {v1, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 931
    .local v2, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    move-object/from16 v24, v9

    shl-int/lit8 v9, v39, 0x6

    and-int/lit16 v9, v9, 0x380

    move/from16 v18, v9

    const/4 v9, 0x6

    or-int/lit8 v18, v18, 0x6

    .line 930
    move/from16 v44, v18

    .local v44, "$changed$iv$iv$iv":I
    move-object/from16 v45, v17

    .local v45, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v46, 0x0

    .line 932
    .local v46, "$i$f$ReusableComposeNode":I
    move/from16 v29, v9

    const v9, -0x2942ffcf

    move-object/from16 v47, v10

    .end local v10    # "swipeable":Landroidx/compose/ui/Modifier;
    .local v47, "swipeable":Landroidx/compose/ui/Modifier;
    const-string v10, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 933
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 934
    :cond_8
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 935
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 936
    move-object/from16 v9, v45

    .end local v45    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v9, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 938
    .end local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v45    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_9
    move-object/from16 v9, v45

    .end local v45    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 940
    :goto_6
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 941
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v10, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 942
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 944
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 945
    .local v18, "$i$f$set-impl":I
    move-object/from16 v19, v10

    .local v19, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 946
    .local v20, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v21

    if-nez v21, :cond_b

    move-object/from16 v45, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v45, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v48, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v48, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v4, v19

    goto :goto_8

    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_b
    move-object/from16 v45, v0

    move-object/from16 v48, v4

    .line 947
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_7
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v19

    .end local v19    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 948
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 950
    :goto_8
    nop

    .line 945
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 950
    nop

    .line 951
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 952
    nop

    .line 940
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 953
    shr-int/lit8 v0, v44, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v1, p2

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 954
    .local v4, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v10, -0x7ff519f7    # -1.000876E-39f

    move/from16 v49, v0

    .end local v0    # "$changed$iv":I
    .local v49, "$changed$iv":I
    const-string v0, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v1, v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v10, v36, 0x6

    and-int/lit8 v10, v10, 0x70

    or-int/lit8 v10, v10, 0x6

    .local v10, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v21, v1

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 662
    .local v50, "$i$a$-Box-DrawerKt$BottomDrawer$1$1":I
    move-object/from16 v51, v0

    .end local v0    # "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    .local v51, "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x12b4d286

    move-object/from16 v52, v1

    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v52, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v1, "C661@25137L9,664@25242L233,662@25159L391,673@25584L33,676@25708L1951,711@27688L258,719@27978L514,734@28687L63,674@25630L3120:Drawer.kt#jmzs0o"

    move-object/from16 v53, v2

    move-object/from16 v2, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v53, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    nop

    .line 665
    const v0, 0x6bf55109

    const-string v1, "CC(remember):Drawer.kt#9igjgp"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    .local v0, "invalid$iv":Z
    move-object v12, v2

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 955
    .local v17, "$i$f$cache":I
    move/from16 v18, v0

    .end local v0    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 956
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v18, :cond_d

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v21, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_c

    goto :goto_9

    .line 960
    :cond_c
    move-object/from16 v20, v0

    goto :goto_a

    .line 956
    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_d
    move-object/from16 v21, v2

    .line 957
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_9
    const/4 v2, 0x0

    .line 665
    .local v2, "$i$a$-cache-DrawerKt$BottomDrawer$1$1$1":I
    move-object/from16 v20, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local v20, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$1$1;

    invoke-direct {v0, v15, v8, v11}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$1$1;-><init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 957
    .end local v2    # "$i$a$-cache-DrawerKt$BottomDrawer$1$1$1":I
    nop

    .line 958
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 959
    nop

    .line 956
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 955
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    nop

    .line 665
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local v18    # "invalid$iv":Z
    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 672
    invoke-virtual {v8}, Landroidx/compose/material/BottomDrawerState;->getTargetValue()Landroidx/compose/material/BottomDrawerValue;

    move-result-object v0

    sget-object v2, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    if-eq v0, v2, :cond_e

    const/16 v20, 0x1

    goto :goto_b

    :cond_e
    const/16 v20, 0x0

    .line 663
    :goto_b
    const/16 v22, 0x0

    move-wide/from16 v17, v13

    invoke-static/range {v17 .. v22}, Landroidx/compose/material/DrawerKt;->access$BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 674
    move-object/from16 v2, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getNavigationMenu-UdPEhr4()I

    move-result v0

    move/from16 v12, v29

    invoke-static {v0, v2, v12}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "navigationMenu":Ljava/lang/String;
    nop

    .line 677
    const v12, 0x6bf591ff

    invoke-static {v2, v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    .local v12, "invalid$iv":Z
    move-object v13, v2

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 961
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 962
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v12, :cond_10

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v4

    .end local v4    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v19, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_f

    goto :goto_c

    .line 966
    :cond_f
    move-object v4, v15

    goto :goto_d

    .line 962
    .end local v19    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .restart local v4    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    :cond_10
    move/from16 v19, v4

    .line 963
    .end local v4    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .restart local v19    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    :goto_c
    const/4 v4, 0x0

    .line 677
    .local v4, "$i$a$-cache-DrawerKt$BottomDrawer$1$1$2":I
    move/from16 v18, v4

    .end local v4    # "$i$a$-cache-DrawerKt$BottomDrawer$1$1$2":I
    .local v18, "$i$a$-cache-DrawerKt$BottomDrawer$1$1$2":I
    new-instance v4, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$2$1;

    invoke-direct {v4, v8, v5, v6}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$2$1;-><init>(Landroidx/compose/material/BottomDrawerState;FZ)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 963
    .end local v18    # "$i$a$-cache-DrawerKt$BottomDrawer$1$1$2":I
    nop

    .line 964
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 965
    nop

    .line 962
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_d
    nop

    .line 961
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 677
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v7, v4}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 712
    const v12, 0x6bf682e2

    invoke-static {v2, v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    .restart local v12    # "invalid$iv":Z
    move-object v13, v2

    .restart local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 967
    .restart local v14    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .restart local v15    # "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 968
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v12, :cond_12

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v5

    .end local v5    # "fullHeight":F
    .local v20, "fullHeight":F
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v15, v5, :cond_11

    goto :goto_e

    .line 972
    :cond_11
    move-object v5, v15

    goto :goto_f

    .line 968
    .end local v20    # "fullHeight":F
    .restart local v5    # "fullHeight":F
    :cond_12
    move/from16 v20, v5

    .line 969
    .end local v5    # "fullHeight":F
    .restart local v20    # "fullHeight":F
    :goto_e
    const/4 v5, 0x0

    .line 712
    .local v5, "$i$a$-cache-DrawerKt$BottomDrawer$1$1$3":I
    move/from16 v18, v5

    .end local v5    # "$i$a$-cache-DrawerKt$BottomDrawer$1$1$3":I
    .local v18, "$i$a$-cache-DrawerKt$BottomDrawer$1$1$3":I
    new-instance v5, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$3$1;

    invoke-direct {v5, v8}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$3$1;-><init>(Landroidx/compose/material/BottomDrawerState;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 969
    .end local v18    # "$i$a$-cache-DrawerKt$BottomDrawer$1$1$3":I
    nop

    .line 970
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 971
    nop

    .line 968
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 967
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 712
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 720
    const v5, 0x6bf6a822

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .local v1, "invalid$iv":Z
    move-object v5, v2

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 973
    .local v12, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 974
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_14

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_13

    goto :goto_10

    .line 978
    :cond_13
    move/from16 v17, v1

    move-object v1, v13

    goto :goto_11

    .line 975
    :cond_14
    :goto_10
    const/4 v15, 0x0

    .line 720
    .local v15, "$i$a$-cache-DrawerKt$BottomDrawer$1$1$4":I
    move/from16 v17, v1

    .end local v1    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;

    invoke-direct {v1, v0, v8, v11}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;-><init>(Ljava/lang/String;Landroidx/compose/material/BottomDrawerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 975
    .end local v15    # "$i$a$-cache-DrawerKt$BottomDrawer$1$1$4":I
    nop

    .line 976
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 977
    nop

    .line 974
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 973
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 720
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local v17    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-static {v4, v11, v1, v8, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    .line 731
    nop

    .line 732
    nop

    .line 733
    nop

    .line 734
    nop

    .line 735
    new-instance v1, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$5;

    invoke-direct {v1, v3}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$5;-><init>(Lkotlin/jvm/functions/Function3;)V

    const/16 v3, 0x36

    const v4, 0x1b48b6ee

    invoke-static {v4, v8, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lkotlin/jvm/functions/Function2;

    .line 675
    const/16 v29, 0x0

    const/high16 v33, 0x180000

    const/16 v34, 0x10

    move-object/from16 v32, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v32, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v23 .. v34}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 662
    .end local v32    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 738
    .end local v0    # "navigationMenu":Ljava/lang/String;
    nop

    .line 954
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v10    # "$changed":I
    .end local v50    # "$i$a$-Box-DrawerKt$BottomDrawer$1$1":I
    .end local v51    # "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static/range {v52 .. v52}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 953
    .end local v19    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v49    # "$changed$iv":I
    .end local v52    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 979
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 932
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 980
    nop

    .line 926
    .end local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v44    # "$changed$iv$iv$iv":I
    .end local v46    # "$i$f$ReusableComposeNode":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 981
    nop

    .line 919
    .end local v39    # "$changed$iv$iv":I
    .end local v40    # "$i$f$Layout":I
    .end local v43    # "compositeKeyHash$iv$iv":I
    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v53    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 982
    nop

    .end local v36    # "$changed$iv":I
    .end local v37    # "$i$f$Box":I
    .end local v41    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v42    # "propagateMinConstraints$iv":Z
    .end local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 739
    .end local v6    # "isLandscape":Z
    .end local v7    # "drawerConstraints":Landroidx/compose/ui/Modifier;
    .end local v16    # "isRtl":Z
    .end local v20    # "fullHeight":F
    .end local v38    # "nestedScroll":Landroidx/compose/ui/Modifier;
    .end local v47    # "swipeable":Landroidx/compose/ui/Modifier;
    :cond_15
    :goto_12
    return-void
.end method
