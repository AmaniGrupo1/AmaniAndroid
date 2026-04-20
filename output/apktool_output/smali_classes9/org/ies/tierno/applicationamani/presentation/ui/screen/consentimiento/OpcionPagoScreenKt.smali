.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt;
.super Ljava/lang/Object;
.source "OpcionPagoScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpcionPagoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpcionPagoScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,78:1\n1128#2,6:79\n1128#2,6:121\n1128#2,6:127\n1128#2,6:134\n85#3:85\n117#3,2:86\n122#4:88\n122#4:89\n122#4:133\n87#5:90\n85#5,8:91\n94#5:143\n81#6,6:99\n88#6,6:114\n96#6:142\n391#7,9:105\n400#7:120\n401#7,2:140\n*S KotlinDebug\n*F\n+ 1 OpcionPagoScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt\n*L\n28#1:79,6\n46#1:121,6\n53#1:127,6\n62#1:134,6\n28#1:85\n28#1:86,2\n35#1:88\n37#1:89\n59#1:133\n32#1:90\n32#1:91,8\n32#1:143\n32#1:99,6\n32#1:114,6\n32#1:142\n32#1:105,9\n32#1:120\n32#1:140,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005\u00b2\u0006\n\u0010\u0006\u001a\u00020\u0007X\u008a\u008e\u0002"
    }
    d2 = {
        "OpcionPagoScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "metodoPago",
        ""
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final OpcionPagoScreen(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "navController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const v2, -0x788af20a

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(OpcionPagoScreen)N(navController)27@1031L31,29@1077L1302,29@1068L1311:OpcionPagoScreen.kt#qemjsp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v15, v3, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.OpcionPagoScreen (OpcionPagoScreen.kt:25)"

    invoke-static {v2, v1, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 28
    :cond_1
    const v2, 0x7e697475

    const-string v3, "CC(remember):OpcionPagoScreen.kt#9igjgp"

    invoke-static {v15, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\1":Z
    move-object v3, v15

    .local v3, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 79
    .local v5, "$i$f$cache\\1\\28":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\1":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 80
    .local v7, "$i$a$-let-ComposerKt$cache$1\\2\\79\\1":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_2

    .line 81
    const/4 v8, 0x0

    .line 28
    .local v8, "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$metodoPago$2\\3\\81\\0":I
    const-string v9, ""

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v11}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    .line 81
    .end local v8    # "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$metodoPago$2\\3\\81\\0":I
    nop

    .line 82
    .local v8, "value\\2":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 83
    move-object v6, v8

    .end local v8    # "value\\2":Ljava/lang/Object;
    goto :goto_1

    .line 84
    :cond_2
    nop

    .line 79
    .end local v6    # "it\\1":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\2\\79\\1":I
    :goto_1
    nop

    .line 28
    .end local v2    # "invalid\\1":Z
    .end local v3    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\1\\28":I
    move-object v2, v6

    check-cast v2, Landroidx/compose/runtime/MutableState;

    .local v2, "metodoPago$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 30
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v5, 0x36

    const v6, -0xa1094b9    # -6.069994E32f

    invoke-static {v6, v4, v3, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function3;

    const/high16 v16, 0x30000000

    const/16 v17, 0x1ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v3 .. v17}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v2    # "metodoPago$delegate":Landroidx/compose/runtime/MutableState;
    goto :goto_2

    .line 23
    :cond_3
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 78
    :cond_4
    :goto_2
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_5
    return-void
.end method

.method private static final OpcionPagoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 4
    .param p0, "$metodoPago$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 85
    .local v3, "$i$f$getValue\\1\\28":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\28":I
    check-cast v0, Ljava/lang/String;

    .line 28
    return-object v0
.end method

.method static final OpcionPagoScreen$lambda$10(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 56
    .param p0, "$metodoPago$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "padding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "padding"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(padding)31@1099L1274:OpcionPagoScreen.kt#qemjsp"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p3

    .local v3, "$dirty":I
    and-int/lit8 v4, p3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.OpcionPagoScreen.<anonymous> (OpcionPagoScreen.kt:31)"

    const v8, -0xa1094b9    # -6.069994E32f

    invoke-static {v8, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 33
    :cond_3
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 34
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 35
    const/16 v5, 0x14

    .local v5, "$this$dp\\1":I
    const/4 v8, 0x0

    .line 88
    .local v8, "$i$f$getDp\\1\\35":I
    int-to-float v9, v5

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 35
    .end local v5    # "$this$dp\\1":I
    .end local v8    # "$i$f$getDp\\1\\35":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 36
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 37
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v10, 0x10

    .local v10, "$this$dp\\2":I
    const/4 v11, 0x0

    .line 89
    .local v11, "$i$f$getDp\\2\\37":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 37
    .end local v10    # "$this$dp\\2":I
    .end local v11    # "$i$f$getDp\\2\\37":I
    invoke-virtual {v9, v10}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 32
    nop

    .local v9, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    move-object/from16 v10, p2

    .local v10, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v11, 0x30

    .local v4, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v11, "$changed\\3":I
    const/4 v12, 0x0

    .line 90
    .local v12, "$i$f$Column\\3\\32":I
    const v13, 0x4ff7456f

    const-string v14, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v10, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 91
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v13

    .line 94
    .local v13, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v14, v11, 0x3

    and-int/lit8 v14, v14, 0xe

    shr-int/lit8 v15, v11, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v14, v15

    invoke-static {v9, v13, v10, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .line 98
    .local v14, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 97
    shl-int/lit8 v15, v11, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 95
    nop

    .local v15, "$changed\\4":I
    move-object/from16 v16, v10

    .local v16, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object/from16 v17, v4

    .local v17, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object/from16 v18, v14

    .local v18, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v19, 0x0

    .line 99
    .local v19, "$i$f$Layout\\4\\95":I
    const v5, -0x451e1427

    const-string v7, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v8, v16

    .end local v16    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v8, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v8, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 100
    invoke-static {v8, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    .line 101
    .local v5, "compositeKeyHash\\4":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 102
    .local v6, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v7, v17

    .end local v17    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v7, "modifier\\4":Landroidx/compose/ui/Modifier;
    invoke-static {v8, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 104
    .local v1, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    shl-int/lit8 v2, v15, 0x6

    and-int/lit16 v2, v2, 0x380

    move/from16 v17, v2

    const/4 v2, 0x6

    or-int/lit8 v17, v17, 0x6

    .line 103
    nop

    .local v17, "$changed\\5":I
    move-object/from16 v20, v8

    .local v20, "$composer\\5":Landroidx/compose/runtime/Composer;
    move-object/from16 v21, v16

    .local v21, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 105
    .local v16, "$i$f$ReusableComposeNode\\5\\103":I
    move/from16 v22, v2

    const v2, -0x20f7d59c

    move/from16 v23, v3

    .end local v3    # "$dirty":I
    .local v23, "$dirty":I
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v24, v4

    move-object/from16 v4, v20

    .end local v20    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v24, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 106
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 107
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 108
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    move-object/from16 v2, v21

    .end local v21    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 111
    .end local v2    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v2, v21

    .end local v21    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 113
    :goto_2
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 114
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\113\\4":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v2

    .end local v2    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v25, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    .end local v18    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v4, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v21, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v4

    .end local v4    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v26, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 118
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    nop

    .line 113
    .end local v3    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\113\\4":I
    nop

    .line 120
    shr-int/lit8 v2, v17, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\7":I
    move-object/from16 v3, v21

    .local v3, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 96
    .local v4, "$i$a$-Layout-ColumnKt$Column$1\\7\\120\\3":I
    move-object/from16 v18, v1

    .end local v1    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v18, "materialized\\4":Landroidx/compose/ui/Modifier;
    const v1, 0x7cc0ae6e

    move/from16 v20, v2

    .end local v2    # "$changed\\7":I
    .local v20, "$changed\\7":I
    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v11, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\8":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$OpcionPagoScreen_u24lambda_u2410_u24lambda_u249\\8":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v48, v3

    .local v48, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v52, 0x0

    .line 40
    .local v52, "$i$a$-Column-OpcionPagoScreenKt$OpcionPagoScreen$1$1\\8\\96\\0":I
    move-object/from16 v53, v1

    .end local v1    # "$this$OpcionPagoScreen_u24lambda_u2410_u24lambda_u249\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .local v53, "$this$OpcionPagoScreen_u24lambda_u2410_u24lambda_u249\\8":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, -0x316633e9

    move/from16 v54, v2

    .end local v2    # "$changed\\8":I
    .local v54, "$changed\\8":I
    const-string v2, "C41@1413L10,39@1324L124,45@1496L29,44@1462L185,52@1695L25,51@1661L177,58@1852L41,61@1941L306,60@1907L456:OpcionPagoScreen.kt#qemjsp"

    move-object/from16 v55, v3

    .end local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v55, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 41
    nop

    .line 42
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v47

    .line 40
    const-string v27, "Selecciona m\u00e9todo de pago"

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x6

    const/16 v50, 0x0

    const v51, 0xfffe

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v51}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 46
    .end local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    const v1, 0x27b272fa

    const-string v2, "CC(remember):OpcionPagoScreen.kt#9igjgp"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\9":Z
    move-object/from16 v27, v3

    .local v27, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 121
    .local v28, "$i$f$cache\\9\\46":I
    move/from16 v29, v1

    .end local v1    # "invalid\\9":Z
    .local v29, "invalid\\9":Z
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\9":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 122
    .local v30, "$i$a$-let-ComposerKt$cache$1\\10\\121\\9":I
    sget-object v31, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_6

    .line 123
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$1\\11\\123\\8":I
    move-object/from16 v31, v1

    .end local v1    # "it\\9":Ljava/lang/Object;
    .local v31, "it\\9":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 123
    .end local v3    # "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$1\\11\\123\\8":I
    nop

    .line 124
    .local v1, "value\\10":Ljava/lang/Object;
    move-object/from16 v3, v27

    .end local v27    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 125
    nop

    .end local v1    # "value\\10":Ljava/lang/Object;
    goto :goto_3

    .line 126
    .end local v3    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v31    # "it\\9":Ljava/lang/Object;
    .local v1, "it\\9":Ljava/lang/Object;
    .restart local v27    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    :cond_6
    move-object/from16 v31, v1

    move-object/from16 v3, v27

    .line 121
    .end local v1    # "it\\9":Ljava/lang/Object;
    .end local v27    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v30    # "$i$a$-let-ComposerKt$cache$1\\10\\121\\9":I
    .restart local v3    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    :goto_3
    nop

    .line 46
    .end local v3    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$f$cache\\9\\46":I
    .end local v29    # "invalid\\9":Z
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 47
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move/from16 v40, v4

    move/from16 v41, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1\\7\\120\\3":I
    .end local v5    # "compositeKeyHash\\4":I
    .local v40, "$i$a$-Layout-ColumnKt$Column$1\\7\\120\\3":I
    .local v41, "compositeKeyHash\\4":I
    invoke-static {v1, v4, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;->getLambda$-27240787$app()Lkotlin/jvm/functions/Function3;

    move-result-object v36

    .line 45
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v38, 0x30000036

    const/16 v39, 0x1fc

    move-object/from16 v37, v48

    .end local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v37, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v39}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 53
    move-object/from16 v3, v37

    .end local v37    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    const v1, 0x27b28bd6

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\12":Z
    move-object v4, v3

    .local v4, "$this$cache\\12":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 127
    .local v5, "$i$f$cache\\12\\53":I
    move/from16 v27, v1

    .end local v1    # "invalid\\12":Z
    .local v27, "invalid\\12":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\12":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 128
    .local v28, "$i$a$-let-ComposerKt$cache$1\\13\\127\\12":I
    sget-object v29, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v48, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_7

    .line 129
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$2\\14\\129\\8":I
    move-object/from16 v29, v1

    .end local v1    # "it\\12":Ljava/lang/Object;
    .local v29, "it\\12":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 129
    .end local v3    # "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$2\\14\\129\\8":I
    nop

    .line 130
    .local v1, "value\\13":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    nop

    .end local v1    # "value\\13":Ljava/lang/Object;
    goto :goto_4

    .line 132
    .end local v29    # "it\\12":Ljava/lang/Object;
    .local v1, "it\\12":Ljava/lang/Object;
    :cond_7
    move-object/from16 v29, v1

    .line 127
    .end local v1    # "it\\12":Ljava/lang/Object;
    .end local v28    # "$i$a$-let-ComposerKt$cache$1\\13\\127\\12":I
    :goto_4
    nop

    .line 53
    .end local v4    # "$this$cache\\12":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\12\\53":I
    .end local v27    # "invalid\\12":Z
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 54
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;->getLambda$-960589084$app()Lkotlin/jvm/functions/Function3;

    move-result-object v36

    .line 52
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v38, 0x30000036

    const/16 v39, 0x1fc

    move-object/from16 v37, v48

    .end local v48    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v37    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v39}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 59
    move-object/from16 v3, v37

    .end local v37    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x14

    .local v4, "$this$dp\\15":I
    const/4 v5, 0x0

    .line 133
    .local v5, "$i$f$getDp\\15\\59":I
    move/from16 v27, v5

    .end local v5    # "$i$f$getDp\\15\\59":I
    .local v27, "$i$f$getDp\\15\\59":I
    int-to-float v5, v4

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 59
    .end local v4    # "$this$dp\\15":I
    .end local v27    # "$i$f$getDp\\15\\59":I
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v4, v22

    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 62
    const v1, 0x27b2abaf

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\16":Z
    move-object v2, v3

    .local v2, "$this$cache\\16":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 134
    .local v4, "$i$f$cache\\16\\62":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\16":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 135
    .local v22, "$i$a$-let-ComposerKt$cache$1\\17\\134\\16":I
    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v1

    .end local v1    # "invalid\\16":Z
    .local v28, "invalid\\16":Z
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_8

    .line 136
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$3\\18\\136\\8":I
    move/from16 v27, v1

    .end local v1    # "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$3\\18\\136\\8":I
    .local v27, "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$3\\18\\136\\8":I
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 136
    .end local v27    # "$i$a$-cache-OpcionPagoScreenKt$OpcionPagoScreen$1$1$3\\18\\136\\8":I
    nop

    .line 137
    .local v1, "value\\17":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    move-object v5, v1

    .end local v1    # "value\\17":Ljava/lang/Object;
    goto :goto_5

    .line 139
    :cond_8
    nop

    .line 134
    .end local v5    # "it\\16":Ljava/lang/Object;
    .end local v22    # "$i$a$-let-ComposerKt$cache$1\\17\\134\\16":I
    :goto_5
    nop

    .line 62
    .end local v2    # "$this$cache\\16":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\16\\62":I
    .end local v28    # "invalid\\16":Z
    move-object/from16 v27, v5

    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 72
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$OpcionPagoScreenKt;->getLambda$-902606811$app()Lkotlin/jvm/functions/Function3;

    move-result-object v36

    .line 61
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v38, 0x30000036

    const/16 v39, 0x1fc

    move-object/from16 v37, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v37    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v39}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 40
    .end local v37    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 76
    nop

    .line 96
    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v52    # "$i$a$-Column-OpcionPagoScreenKt$OpcionPagoScreen$1$1\\8\\96\\0":I
    .end local v53    # "$this$OpcionPagoScreen_u24lambda_u2410_u24lambda_u249\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v54    # "$changed\\8":I
    invoke-static/range {v55 .. v55}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 120
    .end local v20    # "$changed\\7":I
    .end local v40    # "$i$a$-Layout-ColumnKt$Column$1\\7\\120\\3":I
    .end local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 140
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 105
    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 141
    nop

    .line 99
    .end local v16    # "$i$f$ReusableComposeNode\\5\\103":I
    .end local v17    # "$changed\\5":I
    .end local v21    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local v25    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 142
    nop

    .line 90
    .end local v6    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v7    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v8    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v15    # "$changed\\4":I
    .end local v18    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v19    # "$i$f$Layout\\4\\95":I
    .end local v26    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v41    # "compositeKeyHash\\4":I
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 143
    nop

    .end local v9    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v10    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v11    # "$changed\\3":I
    .end local v12    # "$i$f$Column\\3\\32":I
    .end local v13    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v14    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 30
    .end local v23    # "$dirty":I
    .local v3, "$dirty":I
    :cond_9
    move/from16 v23, v3

    .end local v3    # "$dirty":I
    .restart local v23    # "$dirty":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 77
    :cond_a
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final OpcionPagoScreen$lambda$10$lambda$9$lambda$4$lambda$3(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$metodoPago$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 46
    const-string v0, "PRESENCIAL"

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt;->OpcionPagoScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final OpcionPagoScreen$lambda$10$lambda$9$lambda$6$lambda$5(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$metodoPago$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 53
    const-string v0, "ONLINE"

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt;->OpcionPagoScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final OpcionPagoScreen$lambda$10$lambda$9$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$metodoPago$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 63
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt;->OpcionPagoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 71
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final OpcionPagoScreen$lambda$11(Landroidx/navigation/NavController;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/OpcionPagoScreenKt;->OpcionPagoScreen(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final OpcionPagoScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 5
    .param p0, "$metodoPago$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 86
    .local v4, "$i$f$setValue\\1\\28":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 87
    nop

    .line 28
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\28":I
    return-void
.end method
