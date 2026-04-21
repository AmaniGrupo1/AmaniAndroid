.class final Landroidx/compose/material/DrawerKt$ModalDrawer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt;->ModalDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$ModalDrawer$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,916:1\n77#2:917\n77#2:924\n77#2:1014\n1223#3,6:918\n1223#3,6:1002\n1223#3,6:1008\n1223#3,6:1015\n1223#3,6:1021\n71#4:925\n68#4,6:926\n74#4:960\n71#4:961\n67#4,7:962\n74#4:997\n78#4:1001\n78#4:1030\n78#5,6:932\n85#5,4:947\n89#5,2:957\n78#5,6:969\n85#5,4:984\n89#5,2:994\n93#5:1000\n93#5:1029\n368#6,9:938\n377#6:959\n368#6,9:975\n377#6:996\n378#6,2:998\n378#6,2:1027\n4032#7,6:951\n4032#7,6:988\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$ModalDrawer$1\n*L\n511#1:917\n521#1:924\n551#1:1014\n512#1:918,6\n536#1:1002,6\n544#1:1008,6\n560#1:1015,6\n568#1:1021,6\n522#1:925\n522#1:926,6\n522#1:960\n531#1:961\n531#1:962,7\n531#1:997\n531#1:1001\n522#1:1030\n522#1:932,6\n522#1:947,4\n522#1:957,2\n531#1:969,6\n531#1:984,4\n531#1:994,2\n531#1:1000\n522#1:1029\n522#1:938,9\n522#1:959\n531#1:975,9\n531#1:996\n531#1:998,2\n522#1:1027,2\n522#1:951,6\n531#1:988,6\n*E\n"
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

.field final synthetic $drawerState:Landroidx/compose/material/DrawerState;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $scrimColor:J


# direct methods
.method constructor <init>(Landroidx/compose/material/DrawerState;ZLkotlinx/coroutines/CoroutineScope;JLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerState;",
            "Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            "J",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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

    iput-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    iput-boolean p2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$gesturesEnabled:Z

    iput-object p3, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-wide p4, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scrimColor:J

    iput-object p6, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerBackgroundColor:J

    iput-wide p9, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContentColor:J

    iput p11, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerElevation:F

    iput-object p12, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$content:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContent:Lkotlin/jvm/functions/Function3;

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

    .line 502
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 70
    .param p1, "$this$BoxWithConstraints"    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "C510@18716L7,511@18743L274,511@18732L285,520@19060L7,521@19099L2681:Drawer.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0x6

    if-nez v3, :cond_1

    move-object/from16 v3, p1

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v2, v4

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    .line 503
    :goto_1
    and-int/lit8 v4, v2, 0x13

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 588
    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v2

    goto/16 :goto_14

    .line 503
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material.ModalDrawer.<anonymous> (Drawer.kt:502)"

    const v6, 0x30ad78b7

    invoke-static {v6, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-interface {v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v4

    .line 505
    .local v4, "modalDrawerConstraints":J
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 508
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v6

    int-to-float v6, v6

    neg-float v6, v6

    .line 509
    .local v6, "minValue":F
    const/4 v7, 0x0

    .line 511
    .local v7, "maxValue":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v9, 0x0

    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .line 917
    .local v10, "$i$f$getCurrent":I
    const v11, 0x789c5f52

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 511
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$getCurrent":I
    move-object v8, v13

    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 512
    .local v8, "density":Landroidx/compose/ui/unit/Density;
    const v9, -0x56031db7

    const-string v10, "CC(remember):Drawer.kt#9igjgp"

    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v9, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    or-int/2addr v9, v13

    .local v9, "invalid$iv":Z
    iget-object v13, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    move-object/from16 v14, p2

    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 918
    .local v15, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 919
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v9, :cond_6

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v2

    .end local v2    # "$dirty":I
    .local v18, "$dirty":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_5

    goto :goto_3

    .line 923
    :cond_5
    move-object v2, v11

    goto :goto_4

    .line 919
    .end local v18    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_6
    move/from16 v18, v2

    .line 920
    .end local v2    # "$dirty":I
    .restart local v18    # "$dirty":I
    :goto_3
    const/4 v2, 0x0

    .line 512
    .local v2, "$i$a$-cache-DrawerKt$ModalDrawer$1$1":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-cache-DrawerKt$ModalDrawer$1$1":I
    .local v17, "$i$a$-cache-DrawerKt$ModalDrawer$1$1":I
    new-instance v2, Landroidx/compose/material/DrawerKt$ModalDrawer$1$1$1;

    invoke-direct {v2, v13, v8, v6, v7}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$1$1;-><init>(Landroidx/compose/material/DrawerState;Landroidx/compose/ui/unit/Density;FF)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 920
    .end local v17    # "$i$a$-cache-DrawerKt$ModalDrawer$1$1":I
    nop

    .line 921
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 922
    nop

    .line 919
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 918
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 512
    .end local v9    # "invalid$iv":Z
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 521
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v11, 0x0

    .local v11, "$changed$iv":I
    const/4 v13, 0x0

    .line 924
    .local v13, "$i$f$getCurrent":I
    const v14, 0x789c5f52

    invoke-static {v1, v14, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 521
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v11    # "$changed$iv":I
    .end local v13    # "$i$f$getCurrent":I
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v14, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    move v2, v9

    :goto_5
    move/from16 v23, v2

    .line 523
    .local v23, "isRtl":Z
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/ui/Modifier;

    .line 525
    iget-object v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    invoke-virtual {v2}, Landroidx/compose/material/DrawerState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v20

    .line 526
    sget-object v21, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 527
    iget-boolean v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$gesturesEnabled:Z

    .line 528
    nop

    .line 524
    const/16 v26, 0x30

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v22, v2

    invoke-static/range {v19 .. v27}, Landroidx/compose/material/AnchoredDraggableKt;->anchoredDraggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 522
    iget-object v13, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    iget-boolean v14, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$gesturesEnabled:Z

    iget-object v15, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v16, v12

    iget-wide v11, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scrimColor:J

    iget-object v9, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v20, v2

    iget-wide v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerBackgroundColor:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContentColor:J

    move-wide/from16 v31, v2

    iget v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerElevation:F

    iget-object v3, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$content:Lkotlin/jvm/functions/Function2;

    move/from16 v33, v2

    iget-object v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContent:Lkotlin/jvm/functions/Function3;

    const/16 v36, 0x0

    .local v36, "$changed$iv":I
    move-object/from16 v37, v20

    .local v37, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/16 v20, 0x0

    .line 925
    .local v20, "$i$f$Box":I
    const v0, 0x2bb5b5d7

    move-wide/from16 v38, v4

    .end local v4    # "modalDrawerConstraints":J
    .local v38, "modalDrawerConstraints":J
    const-string v4, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v1, v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 926
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 927
    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v0, 0x0

    .line 930
    .local v0, "propagateMinConstraints$iv":Z
    move-object/from16 v40, v8

    .end local v8    # "density":Landroidx/compose/ui/unit/Density;
    .local v40, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v25, v36, 0x3

    and-int/lit8 v25, v25, 0x70

    .line 931
    move/from16 v41, v25

    .local v41, "$changed$iv$iv":I
    const/16 v42, 0x0

    .line 932
    .local v42, "$i$f$Layout":I
    move/from16 v43, v0

    .end local v0    # "propagateMinConstraints$iv":Z
    .local v43, "propagateMinConstraints$iv":Z
    const v0, -0x4ee9b9da

    move-object/from16 v44, v5

    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v44, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const-string v5, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 933
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v45

    .line 934
    .local v45, "compositeKeyHash$iv$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 935
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v34, v9

    move-wide/from16 v27, v11

    move-object/from16 v9, v37

    .end local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v9, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v1, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 937
    .local v11, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .end local v9    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v9, v41, 0x6

    and-int/lit16 v9, v9, 0x380

    move/from16 v26, v9

    const/4 v9, 0x6

    or-int/lit8 v26, v26, 0x6

    .line 936
    nop

    .local v12, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move/from16 v46, v26

    .local v46, "$changed$iv$iv$iv":I
    const/16 v47, 0x0

    .line 938
    .local v47, "$i$f$ReusableComposeNode":I
    move/from16 v35, v9

    const v9, -0x2942ffcf

    move-object/from16 v48, v2

    const-string v2, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v1, v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 939
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 940
    :cond_8
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 941
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 942
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 944
    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 946
    :goto_6
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 947
    .local v29, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v9, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 948
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 950
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v30, 0x0

    .line 951
    .local v30, "$i$f$set-impl":I
    move-object/from16 v49, v9

    .local v49, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 952
    .local v50, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v51

    if-nez v51, :cond_b

    move-object/from16 v51, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v52, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v52, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v8, v49

    goto :goto_8

    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_b
    move-object/from16 v51, v0

    move-object/from16 v52, v8

    .line 953
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_7
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v8, v49

    .end local v49    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 954
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 956
    :goto_8
    nop

    .line 951
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 956
    nop

    .line 957
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v30    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 958
    nop

    .line 946
    .end local v9    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 959
    shr-int/lit8 v0, v46, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v1, p2

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 960
    .local v8, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v9, -0x7ff519f7    # -1.000876E-39f

    move/from16 v49, v0

    .end local v0    # "$changed$iv":I
    .local v49, "$changed$iv":I
    const-string v0, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v1, v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v29, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v30, v36, 0x6

    and-int/lit8 v30, v30, 0x70

    or-int/lit8 v50, v30, 0x6

    .local v50, "$changed":I
    move-object/from16 v53, v29

    check-cast v53, Landroidx/compose/foundation/layout/BoxScope;

    .local v53, "$this$invoke_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v29, v1

    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v54, 0x0

    .line 531
    .local v54, "$i$a$-Box-DrawerKt$ModalDrawer$1$2":I
    const v9, -0x67cff144

    move-object/from16 v55, v1

    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v55, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v1, "C530@19417L45,535@19551L292,543@19872L106,533@19475L553,548@20062L33,*550@20162L7,559@20626L222,567@20933L555,584@21683L87,549@20108L1662:Drawer.kt#jmzs0o"

    move/from16 v56, v8

    move-object/from16 v8, v29

    .end local v29    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    .local v56, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v8, v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v9, 0x0

    .line 961
    .local v9, "$i$f$Box":I
    move/from16 v29, v1

    const v1, 0x2bb5b5d7

    .end local v1    # "$changed$iv":I
    .local v29, "$changed$iv":I
    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 962
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 963
    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 964
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move/from16 v24, v9

    .end local v9    # "$i$f$Box":I
    .local v24, "$i$f$Box":I
    const/4 v9, 0x0

    .line 967
    .local v9, "propagateMinConstraints$iv":Z
    move-object/from16 v57, v11

    .end local v11    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v57, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v58, v29, 0x3

    and-int/lit8 v58, v58, 0x70

    .line 968
    nop

    .local v58, "$changed$iv$iv":I
    const/16 v59, 0x0

    .line 969
    .local v59, "$i$f$Layout":I
    move-object/from16 v60, v4

    const v4, -0x4ee9b9da

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v60, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v8, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 970
    const/4 v4, 0x0

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v5

    .line 971
    .local v5, "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 972
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v25, v5

    .end local v5    # "compositeKeyHash$iv$iv":I
    .local v25, "compositeKeyHash$iv$iv":I
    invoke-static {v8, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 974
    .local v5, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v61, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v61 .. v61}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v61

    move-object/from16 v62, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v62, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v58, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 973
    move-object/from16 v63, v61

    .local v1, "$changed$iv$iv$iv":I
    .local v63, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v61, 0x0

    .line 975
    .local v61, "$i$f$ReusableComposeNode":I
    move/from16 v64, v1

    const v1, -0x2942ffcf

    .end local v1    # "$changed$iv$iv$iv":I
    .local v64, "$changed$iv$iv$iv":I
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 976
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 977
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 978
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 979
    move-object/from16 v1, v63

    .end local v63    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 981
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v63    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_d
    move-object/from16 v1, v63

    .end local v63    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 983
    :goto_9
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 984
    .local v26, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v63, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v65, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v65, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v63 .. v63}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 985
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 987
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v63, 0x0

    .line 988
    .local v63, "$i$f$set-impl":I
    move-object/from16 v66, v2

    .local v66, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v67, 0x0

    .line 989
    .local v67, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v66 .. v66}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v68

    if-nez v68, :cond_f

    move-object/from16 v68, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v68, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v66 .. v66}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move/from16 v69, v9

    .end local v9    # "propagateMinConstraints$iv":Z
    .local v69, "propagateMinConstraints$iv":Z
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v9, v66

    goto :goto_b

    .end local v68    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v69    # "propagateMinConstraints$iv":Z
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "propagateMinConstraints$iv":Z
    :cond_f
    move-object/from16 v68, v4

    move/from16 v69, v9

    .line 990
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "propagateMinConstraints$iv":Z
    .restart local v68    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v69    # "propagateMinConstraints$iv":Z
    :goto_a
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v9, v66

    .end local v66    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 991
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 993
    :goto_b
    nop

    .line 988
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v67    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 993
    nop

    .line 994
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v63    # "$i$f$set-impl":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 995
    nop

    .line 983
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 996
    shr-int/lit8 v1, v64, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v2, v8

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 997
    .local v4, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v9, -0x7ff519f7    # -1.000876E-39f

    invoke-static {v2, v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v9, v29, 0x6

    and-int/lit8 v9, v9, 0x70

    or-int/lit8 v9, v9, 0x6

    .local v9, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$invoke_u24lambda_u247_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v26, v2

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 532
    .local v30, "$i$a$-Box-DrawerKt$ModalDrawer$1$2$1":I
    move-object/from16 v63, v0

    .end local v0    # "$this$invoke_u24lambda_u247_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    .local v63, "$this$invoke_u24lambda_u247_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x3a19c8fb

    move/from16 v66, v1

    .end local v1    # "$changed$iv":I
    .local v66, "$changed$iv":I
    const-string v1, "C531@19439L9:Drawer.kt#jmzs0o"

    move-object/from16 v67, v2

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v67, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 533
    nop

    .line 997
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v9    # "$changed":I
    .end local v30    # "$i$a$-Box-DrawerKt$ModalDrawer$1$2$1":I
    .end local v63    # "$this$invoke_u24lambda_u247_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static/range {v67 .. v67}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 996
    .end local v4    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v66    # "$changed$iv":I
    .end local v67    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 998
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 975
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 999
    nop

    .line 969
    .end local v61    # "$i$f$ReusableComposeNode":I
    .end local v64    # "$changed$iv$iv$iv":I
    .end local v65    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1000
    nop

    .line 961
    .end local v5    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "compositeKeyHash$iv$iv":I
    .end local v58    # "$changed$iv$iv":I
    .end local v59    # "$i$f$Layout":I
    .end local v68    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1001
    nop

    .line 535
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "$i$f$Box":I
    .end local v29    # "$changed$iv":I
    .end local v60    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v62    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v69    # "propagateMinConstraints$iv":Z
    invoke-virtual {v13}, Landroidx/compose/material/DrawerState;->isOpen()Z

    move-result v24

    .line 536
    const v0, -0x3594126

    invoke-static {v8, v0, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v8

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 1002
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1003
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_11

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_10

    goto :goto_c

    .line 1007
    :cond_10
    move-object v9, v3

    goto :goto_d

    .line 1004
    :cond_11
    :goto_c
    const/4 v5, 0x0

    .line 536
    .local v5, "$i$a$-cache-DrawerKt$ModalDrawer$1$2$2":I
    new-instance v9, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$2$1;

    invoke-direct {v9, v14, v13, v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$2$1;-><init>(ZLandroidx/compose/material/DrawerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1004
    .end local v5    # "$i$a$-cache-DrawerKt$ModalDrawer$1$2$2":I
    nop

    .line 1005
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1006
    nop

    .line 1003
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_d
    nop

    .line 1002
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 536
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    move-object/from16 v25, v9

    check-cast v25, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 544
    const v0, -0x35919c0

    invoke-static {v8, v0, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v0

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .restart local v0    # "invalid$iv":Z
    move-object v1, v8

    .restart local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 1008
    .restart local v2    # "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1009
    .restart local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_13

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_12

    goto :goto_e

    .line 1013
    :cond_12
    move-object v9, v3

    goto :goto_f

    .line 1010
    :cond_13
    :goto_e
    const/4 v5, 0x0

    .line 544
    .local v5, "$i$a$-cache-DrawerKt$ModalDrawer$1$2$3":I
    new-instance v9, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$3$1;

    invoke-direct {v9, v6, v7, v13}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$3$1;-><init>(FFLandroidx/compose/material/DrawerState;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1010
    .end local v5    # "$i$a$-cache-DrawerKt$ModalDrawer$1$2$3":I
    nop

    .line 1011
    .restart local v9    # "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1012
    nop

    .line 1009
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 1008
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 544
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    move-object/from16 v26, v9

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 547
    nop

    .line 534
    const/16 v30, 0x0

    move-object/from16 v29, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v24 .. v30}, Landroidx/compose/material/DrawerKt;->access$Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V

    .line 549
    .end local v29    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getNavigationMenu-UdPEhr4()I

    move-result v0

    move/from16 v1, v35

    invoke-static {v0, v8, v1}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "navigationMenu":Ljava/lang/String;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 1014
    .local v3, "$i$f$getCurrent":I
    move-object/from16 v4, v16

    const v14, 0x789c5f52

    invoke-static {v8, v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 551
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v1, v4

    check-cast v1, Landroidx/compose/ui/unit/Density;

    .local v1, "$this$invoke_u24lambda_u247_u24lambda_u244":Landroidx/compose/ui/unit/Density;
    const/4 v2, 0x0

    .line 552
    .local v2, "$i$a$-with-DrawerKt$ModalDrawer$1$2$4":I
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 554
    invoke-static/range {v38 .. v39}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v4

    .line 555
    invoke-static/range {v38 .. v39}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v5

    .line 556
    invoke-static/range {v38 .. v39}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v9

    .line 557
    invoke-static/range {v38 .. v39}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v11

    invoke-interface {v1, v11}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v11

    .line 553
    invoke-static {v3, v4, v5, v9, v11}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 551
    .end local v1    # "$this$invoke_u24lambda_u247_u24lambda_u244":Landroidx/compose/ui/unit/Density;
    .end local v2    # "$i$a$-with-DrawerKt$ModalDrawer$1$2$4":I
    nop

    .line 560
    const v2, -0x358bb0c

    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv":Z
    move-object v3, v8

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1015
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1016
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_15

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v5, v11, :cond_14

    goto :goto_10

    .line 1020
    :cond_14
    move-object v14, v5

    goto :goto_11

    .line 1017
    :cond_15
    :goto_10
    const/4 v11, 0x0

    .line 560
    .local v11, "$i$a$-cache-DrawerKt$ModalDrawer$1$2$5":I
    new-instance v14, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;

    invoke-direct {v14, v13}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;-><init>(Landroidx/compose/material/DrawerState;)V

    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 1017
    .end local v11    # "$i$a$-cache-DrawerKt$ModalDrawer$1$2$5":I
    nop

    .line 1018
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1019
    nop

    .line 1016
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 1015
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 560
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 567
    invoke-static {}, Landroidx/compose/material/DrawerKt;->access$getEndDrawerPadding$p()F

    move-result v27

    const/16 v29, 0xb

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 568
    const v2, -0x358935f

    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .restart local v2    # "invalid$iv":Z
    move-object v3, v8

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1021
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1022
    .restart local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_17

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v5, v10, :cond_16

    goto :goto_12

    .line 1026
    :cond_16
    move-object v11, v5

    goto :goto_13

    .line 1023
    :cond_17
    :goto_12
    const/4 v10, 0x0

    .line 568
    .local v10, "$i$a$-cache-DrawerKt$ModalDrawer$1$2$6":I
    new-instance v11, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;

    invoke-direct {v11, v0, v13, v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;-><init>(Ljava/lang/String;Landroidx/compose/material/DrawerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 1023
    .end local v10    # "$i$a$-cache-DrawerKt$ModalDrawer$1$2$6":I
    nop

    .line 1024
    .local v11, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1025
    nop

    .line 1022
    .end local v11    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 1021
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 568
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v11, v3, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 581
    nop

    .line 582
    nop

    .line 583
    nop

    .line 584
    nop

    .line 585
    new-instance v1, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;

    move-object/from16 v2, v48

    invoke-direct {v1, v2}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;-><init>(Lkotlin/jvm/functions/Function3;)V

    const/16 v2, 0x36

    const v4, -0x73b4e307

    invoke-static {v4, v3, v1, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 550
    const/16 v30, 0x0

    move-object/from16 v25, v34

    const/high16 v34, 0x180000

    const/16 v35, 0x10

    move-wide/from16 v26, v21

    move-wide/from16 v28, v31

    move/from16 v31, v33

    move-object/from16 v32, v1

    move-object/from16 v33, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v33, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v24 .. v35}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 531
    .end local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 588
    .end local v0    # "navigationMenu":Ljava/lang/String;
    nop

    .line 960
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v50    # "$changed":I
    .end local v53    # "$this$invoke_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .end local v54    # "$i$a$-Box-DrawerKt$ModalDrawer$1$2":I
    invoke-static/range {v55 .. v55}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 959
    .end local v49    # "$changed$iv":I
    .end local v55    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v56    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 1027
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 938
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1028
    nop

    .line 932
    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v46    # "$changed$iv$iv$iv":I
    .end local v47    # "$i$f$ReusableComposeNode":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1029
    nop

    .line 925
    .end local v41    # "$changed$iv$iv":I
    .end local v42    # "$i$f$Layout":I
    .end local v45    # "compositeKeyHash$iv$iv":I
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v57    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1030
    nop

    .end local v20    # "$i$f$Box":I
    .end local v36    # "$changed$iv":I
    .end local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v43    # "propagateMinConstraints$iv":Z
    .end local v44    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 589
    .end local v6    # "minValue":F
    .end local v7    # "maxValue":F
    .end local v23    # "isRtl":Z
    .end local v38    # "modalDrawerConstraints":J
    .end local v40    # "density":Landroidx/compose/ui/unit/Density;
    :cond_18
    :goto_14
    return-void

    .line 506
    .end local v18    # "$dirty":I
    .local v2, "$dirty":I
    .local v4, "modalDrawerConstraints":J
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawer shouldn\'t have infinite width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
