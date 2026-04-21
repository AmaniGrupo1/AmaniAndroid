.class final Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BackdropScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/ui/unit/Constraints;",
        "Ljava/lang/Float;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,732:1\n1223#2,6:733\n148#3:739\n71#4:740\n69#4,5:741\n74#4:774\n78#4:778\n78#5,6:746\n85#5,4:761\n89#5,2:771\n93#5:777\n368#6,9:752\n377#6:773\n378#6,2:775\n4032#7,6:765\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1\n*L\n463#1:733,6\n503#1:739\n498#1:740\n498#1:741,5\n498#1:774\n498#1:778\n498#1:746,6\n498#1:761,4\n498#1:771,2\n498#1:777\n498#1:752,9\n498#1:773\n498#1:775,2\n498#1:765,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "backLayerHeight",
        "",
        "invoke-jYbf7pk",
        "(JFLandroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $frontLayerBackgroundColor:J

.field final synthetic $frontLayerContent:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $frontLayerContentColor:J

.field final synthetic $frontLayerElevation:F

.field final synthetic $frontLayerScrimColor:J

.field final synthetic $frontLayerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $headerHeight:F

.field final synthetic $headerHeightPx:F

.field final synthetic $peekHeight:F

.field final synthetic $peekHeightPx:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $snackbarHost:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/AnchoredDraggableState<",
            "Landroidx/compose/material/BackdropValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stickyFrontLayer:Z


# direct methods
.method constructor <init>(FZZLandroidx/compose/material/BackdropScaffoldState;Landroidx/compose/material/AnchoredDraggableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/Shape;JJFFFFLkotlin/jvm/functions/Function2;JLkotlin/jvm/functions/Function3;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZZ",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "Landroidx/compose/material/BackdropValue;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFFFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;J",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$headerHeightPx:F

    move/from16 v2, p2

    iput-boolean v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$stickyFrontLayer:Z

    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$gesturesEnabled:Z

    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$state:Landroidx/compose/material/AnchoredDraggableState;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerShape:Landroidx/compose/ui/graphics/Shape;

    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerBackgroundColor:J

    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerContentColor:J

    move/from16 v12, p12

    iput v12, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerElevation:F

    move/from16 v13, p13

    iput v13, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$headerHeight:F

    move/from16 v14, p14

    iput v14, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$peekHeightPx:F

    move/from16 v15, p15

    iput v15, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$peekHeight:F

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerContent:Lkotlin/jvm/functions/Function2;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerScrimColor:J

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$snackbarHost:Lkotlin/jvm/functions/Function3;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 425
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->invoke-jYbf7pk(JFLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke-jYbf7pk(JFLandroidx/compose/runtime/Composer;I)V
    .locals 33
    .param p1, "constraints"    # J
    .param p3, "backLayerHeight"    # F
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v11, p4

    const-string v2, "CP(1:c#ui.unit.Constraints)462@19798L673,481@20682L575,437@18486L2771,497@21300L431:BackdropScaffold.kt#jmzs0o"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p5

    .local v2, "$dirty":I
    and-int/lit8 v3, p5, 0x6

    const/4 v4, 0x2

    move-wide/from16 v14, p1

    if-nez v3, :cond_1

    invoke-interface {v11, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p5, 0x30

    if-nez v3, :cond_3

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    .line 426
    :cond_3
    and-int/lit16 v3, v2, 0x93

    const/16 v5, 0x92

    if-ne v3, v5, :cond_5

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 508
    :cond_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v26, v2

    goto/16 :goto_b

    .line 426
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    const-string/jumbo v5, "androidx.compose.material.BackdropScaffold.<anonymous>.<anonymous> (BackdropScaffold.kt:425)"

    const v6, 0x1ec93d1b

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .local v3, "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$headerHeightPx:F

    sub-float/2addr v5, v6

    iput v5, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 427
    iget-boolean v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$stickyFrontLayer:Z

    if-eqz v5, :cond_7

    .line 428
    iget v5, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 431
    :cond_7
    iget-boolean v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$gesturesEnabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    .line 432
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    iget-object v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    invoke-virtual {v7}, Landroidx/compose/material/BackdropScaffoldState;->getNestedScrollConnection$material_release()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v7

    invoke-static {v5, v7, v6, v4, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    goto :goto_3

    .line 434
    :cond_8
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 431
    :goto_3
    nop

    .line 439
    .local v4, "nestedScroll":Landroidx/compose/ui/Modifier;
    nop

    .line 440
    iget-object v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$state:Landroidx/compose/material/AnchoredDraggableState;

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v8, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1$1;

    iget v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$peekHeightPx:F

    iget-object v10, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    invoke-direct {v8, v9, v10, v3}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1$1;-><init>(FLandroidx/compose/material/BackdropScaffoldState;Lkotlin/jvm/internal/Ref$FloatRef;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/material/AnchoredDraggableKt;->draggableAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 459
    iget-object v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$state:Landroidx/compose/material/AnchoredDraggableState;

    .line 460
    sget-object v18, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 461
    iget-boolean v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$gesturesEnabled:Z

    .line 458
    const/16 v23, 0x38

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move/from16 v19, v7

    invoke-static/range {v16 .. v24}, Landroidx/compose/material/AnchoredDraggableKt;->anchoredDraggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 463
    const v7, -0x6318314f

    const-string v8, "CC(remember):BackdropScaffold.kt#9igjgp"

    invoke-static {v11, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .local v7, "invalid$iv":Z
    iget-object v8, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    iget-object v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v10, p4

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 733
    .local v12, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 734
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_a

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v13, v6, :cond_9

    goto :goto_4

    .line 738
    :cond_9
    move-object v1, v13

    goto :goto_5

    .line 735
    :cond_a
    :goto_4
    const/4 v6, 0x0

    .line 463
    .local v6, "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$2$1$2":I
    new-instance v1, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1$2$1;

    invoke-direct {v1, v8, v9}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1$2$1;-><init>(Landroidx/compose/material/BackdropScaffoldState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 735
    .end local v6    # "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$2$1$2":I
    nop

    .line 736
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 737
    nop

    .line 734
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 733
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 463
    .end local v7    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v1, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 478
    move-object v5, v3

    .end local v3    # "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v5, "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerShape:Landroidx/compose/ui/graphics/Shape;

    .line 480
    move-object v9, v4

    move-object v8, v5

    .end local v4    # "nestedScroll":Landroidx/compose/ui/Modifier;
    .end local v5    # "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v8, "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v9, "nestedScroll":Landroidx/compose/ui/Modifier;
    iget-wide v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerBackgroundColor:J

    .line 481
    iget-wide v12, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerContentColor:J

    .line 479
    move-object v10, v9

    .end local v9    # "nestedScroll":Landroidx/compose/ui/Modifier;
    .local v10, "nestedScroll":Landroidx/compose/ui/Modifier;
    iget v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerElevation:F

    .line 482
    new-instance v16, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1$3;

    iget v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$peekHeight:F

    iget-object v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerContent:Lkotlin/jvm/functions/Function2;

    move-object/from16 v27, v1

    move/from16 v26, v2

    .end local v2    # "$dirty":I
    .local v26, "$dirty":I
    iget-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$frontLayerScrimColor:J

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$gesturesEnabled:Z

    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    move/from16 v21, v1

    iget-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v23}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1$3;-><init>(FLkotlin/jvm/functions/Function2;JZLandroidx/compose/material/BackdropScaffoldState;Lkotlinx/coroutines/CoroutineScope;)V

    move-object/from16 v1, v16

    const/16 v2, 0x36

    const v6, 0x73ff8357

    const/4 v7, 0x1

    invoke-static {v6, v7, v1, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 438
    move-object v2, v8

    .end local v8    # "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v2, "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    const/4 v8, 0x0

    move/from16 v25, v7

    move-wide v6, v12

    const/high16 v12, 0x180000

    const/16 v13, 0x10

    move-object/from16 v16, v10

    move-object v10, v1

    move-object v1, v2

    move-object/from16 v2, v27

    .end local v2    # "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v10    # "nestedScroll":Landroidx/compose/ui/Modifier;
    .local v1, "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v16, "nestedScroll":Landroidx/compose/ui/Modifier;
    invoke-static/range {v2 .. v13}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 499
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 500
    nop

    .line 501
    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    invoke-virtual {v2}, Landroidx/compose/material/BackdropScaffoldState;->isRevealed()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 502
    iget v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$headerHeightPx:F

    sub-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-nez v2, :cond_b

    move/from16 v6, v25

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_c

    .line 503
    iget v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$headerHeight:F

    move v7, v2

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .local v2, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 739
    .local v4, "$i$f$getDp":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    move v7, v5

    .line 500
    .end local v2    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    :goto_7
    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 505
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 498
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$snackbarHost:Lkotlin/jvm/functions/Function3;

    iget-object v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    const/16 v6, 0x30

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 740
    .local v7, "$i$f$Box":I
    const v8, 0x2bb5b5d7

    const-string v9, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v11, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 741
    const/4 v8, 0x0

    .line 744
    .local v8, "propagateMinConstraints$iv":Z
    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 745
    nop

    .local v10, "$changed$iv$iv":I
    const/4 v12, 0x0

    .line 746
    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v11, v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 747
    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 748
    .local v13, "compositeKeyHash$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 749
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v17, v1

    .end local v1    # "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v17, "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 751
    .local v1, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    move-object/from16 v19, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v19, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v2, v10, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 750
    nop

    .local v2, "$changed$iv$iv$iv":I
    move-object/from16 v20, v18

    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 752
    .local v18, "$i$f$ReusableComposeNode":I
    move/from16 v21, v2

    .end local v2    # "$changed$iv$iv$iv":I
    .local v21, "$changed$iv$iv$iv":I
    const v2, -0x2942ffcf

    move-object/from16 v22, v3

    .end local v3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v22, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const-string v3, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 753
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 754
    :cond_d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 755
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 756
    move-object/from16 v2, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 758
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_e
    move-object/from16 v2, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 760
    :goto_8
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 761
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v25, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v9, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 762
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 764
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 765
    .local v23, "$i$f$set-impl":I
    move-object/from16 v27, v3

    .local v27, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 766
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_10

    move-object/from16 v29, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    move-object/from16 v5, v27

    goto :goto_a

    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_10
    move-object/from16 v29, v0

    move-object/from16 v30, v5

    .line 767
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_9
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v27

    .end local v27    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 768
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 770
    :goto_a
    nop

    .line 765
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 770
    nop

    .line 771
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 772
    nop

    .line 760
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 773
    shr-int/lit8 v0, v21, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v2, p4

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 774
    .local v3, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v5, -0x7ff519f7    # -1.000876E-39f

    move/from16 v20, v0

    .end local v0    # "$changed$iv":I
    .local v20, "$changed$iv":I
    const-string v0, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v5, v6, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$invoke_jYbf7pk_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v23, v2

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 507
    .local v27, "$i$a$-Box-BackdropScaffoldKt$BackdropScaffold$2$1$4":I
    move-object/from16 v28, v0

    .end local v0    # "$this$invoke_jYbf7pk_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    .local v28, "$this$invoke_jYbf7pk_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x40b58f07

    move-object/from16 v31, v1

    .end local v1    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v31, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const-string v1, "C506@21672L45:BackdropScaffold.kt#jmzs0o"

    move-object/from16 v32, v2

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v32, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/material/BackdropScaffoldState;->getSnackbarHostState()Landroidx/compose/material/SnackbarHostState;

    move-result-object v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 508
    nop

    .line 774
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$changed":I
    .end local v27    # "$i$a$-Box-BackdropScaffoldKt$BackdropScaffold$2$1$4":I
    .end local v28    # "$this$invoke_jYbf7pk_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static/range {v32 .. v32}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 773
    .end local v3    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v20    # "$changed$iv":I
    .end local v32    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 775
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 752
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 776
    nop

    .line 746
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v21    # "$changed$iv$iv$iv":I
    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 777
    nop

    .line 740
    .end local v10    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v13    # "compositeKeyHash$iv$iv":I
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v31    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 778
    nop

    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$Box":I
    .end local v8    # "propagateMinConstraints$iv":Z
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v19    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v22    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 509
    .end local v16    # "nestedScroll":Landroidx/compose/ui/Modifier;
    .end local v17    # "revealedHeight":Lkotlin/jvm/internal/Ref$FloatRef;
    :cond_11
    :goto_b
    return-void
.end method
