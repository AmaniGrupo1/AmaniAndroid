.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt;
.super Ljava/lang/Object;
.source "RegistroExitosoScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegistroExitosoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistroExitosoScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,53:1\n87#2,6:54\n94#2:92\n81#3,6:60\n88#3,6:75\n96#3:91\n391#4,9:66\n400#4:81\n401#4,2:89\n122#5:82\n1128#6,6:83\n*S KotlinDebug\n*F\n+ 1 RegistroExitosoScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt\n*L\n30#1:54,6\n30#1:92\n30#1:60,6\n30#1:75,6\n30#1:91\n30#1:66,9\n30#1:81\n30#1:89,2\n43#1:82\n45#1:83,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "RegistroExitosoScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V",
        "app"
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
.method public static final RegistroExitosoScreen(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "navController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const v2, -0x47bde8f8

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(RegistroExitosoScreen)N(navController)27@1008L676,25@949L735:RegistroExitosoScreen.kt#qemjsp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p2

    .local v3, "$dirty":I
    and-int/lit8 v4, v1, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v15, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.RegistroExitosoScreen (RegistroExitosoScreen.kt:23)"

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 27
    :cond_3
    const-wide v4, 0xffccc0e4L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v9

    .line 28
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    const/16 v4, 0x36

    const v5, 0x788c319

    invoke-static {v5, v6, v2, v15, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function3;

    .line 26
    move v2, v3

    .end local v3    # "$dirty":I
    .local v2, "$dirty":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/high16 v16, 0x30180000

    const/16 v17, 0x1bf

    invoke-static/range {v3 .. v17}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 21
    .end local v2    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_4
    move v2, v3

    .end local v3    # "$dirty":I
    .restart local v2    # "$dirty":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 53
    :cond_5
    :goto_2
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method static final RegistroExitosoScreen$lambda$3(Landroidx/navigation/NavController;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 56
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "padding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "padding"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(padding)29@1030L648:RegistroExitosoScreen.kt#qemjsp"

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

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.RegistroExitosoScreen.<anonymous> (RegistroExitosoScreen.kt:29)"

    const v8, 0x788c319

    invoke-static {v8, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 31
    :cond_3
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 32
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 33
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 34
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 35
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v7

    .line 30
    nop

    .local v5, "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    move-object/from16 v8, p2

    .local v8, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v9, 0x1b0

    .local v4, "modifier\\1":Landroidx/compose/ui/Modifier;
    .local v7, "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    .local v9, "$changed\\1":I
    const/4 v10, 0x0

    .line 54
    .local v10, "$i$f$Column\\1\\30":I
    const v11, 0x4ff7456f

    const-string v12, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v8, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 55
    shr-int/lit8 v11, v9, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v9, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v5, v7, v8, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 59
    .local v11, "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 58
    shl-int/lit8 v12, v9, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 56
    nop

    .local v12, "$changed\\2":I
    move-object v13, v8

    .local v13, "$composer\\2":Landroidx/compose/runtime/Composer;
    move-object v14, v4

    .local v14, "modifier\\2":Landroidx/compose/ui/Modifier;
    move-object v15, v11

    .local v15, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v16, 0x0

    .line 60
    .local v16, "$i$f$Layout\\2\\56":I
    const v6, -0x451e1427

    const-string v1, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    .line 62
    .local v1, "compositeKeyHash\\2":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 63
    .local v6, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v17, v1

    .end local v1    # "compositeKeyHash\\2":I
    .local v17, "compositeKeyHash\\2":I
    invoke-static {v13, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 65
    .local v1, "materialized\\2":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    shl-int/lit8 v2, v12, 0x6

    and-int/lit16 v2, v2, 0x380

    move/from16 v19, v2

    const/4 v2, 0x6

    or-int/lit8 v19, v19, 0x6

    .line 64
    nop

    .local v19, "$changed\\3":I
    move-object/from16 v20, v13

    .local v20, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v21, v18

    .local v21, "factory\\3":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 66
    .local v18, "$i$f$ReusableComposeNode\\3\\64":I
    move/from16 v22, v2

    const v2, -0x20f7d59c

    move/from16 v23, v3

    .end local v3    # "$dirty":I
    .local v23, "$dirty":I
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v24, v4

    move-object/from16 v4, v20

    .end local v20    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v24, "modifier\\1":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 67
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 68
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 69
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    move-object/from16 v2, v21

    .end local v21    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 72
    .end local v2    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory\\3":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v2, v21

    .end local v21    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 74
    :goto_2
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 75
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\74\\2":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v2

    .end local v2    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v25, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 76
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 77
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v4

    .end local v4    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v26, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 78
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 79
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 80
    nop

    .line 74
    .end local v3    # "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\74\\2":I
    nop

    .line 81
    shr-int/lit8 v2, v19, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\5":I
    move-object/from16 v3, v26

    .local v3, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$a$-Layout-ColumnKt$Column$1\\5\\81\\1":I
    move-object/from16 v20, v1

    .end local v1    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .local v20, "materialized\\2":Landroidx/compose/ui/Modifier;
    const v1, 0x7cc0ae6e

    move/from16 v21, v2

    .end local v2    # "$changed\\5":I
    .local v21, "$changed\\5":I
    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v9, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\6":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$RegistroExitosoScreen_u24lambda_u243_u24lambda_u242\\6":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v48, v3

    .local v48, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v52, 0x0

    .line 38
    .local v52, "$i$a$-Column-RegistroExitosoScreenKt$RegistroExitosoScreen$1$1\\6\\57\\0":I
    move-object/from16 v53, v1

    .end local v1    # "$this$RegistroExitosoScreen_u24lambda_u243_u24lambda_u242\\6":Landroidx/compose/foundation/layout/ColumnScope;
    .local v53, "$this$RegistroExitosoScreen_u24lambda_u243_u24lambda_u242\\6":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x628347ee

    move/from16 v54, v2

    .end local v2    # "$changed\\6":I
    .local v54, "$changed\\6":I
    const-string v2, "C39@1382L10,37@1278L139,42@1431L41,44@1519L83,43@1485L183:RegistroExitosoScreen.kt#qemjsp"

    move-object/from16 v55, v3

    .end local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v55, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 39
    nop

    .line 40
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v47

    .line 38
    const-string v27, "Registro completado correctamente"

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

    .end local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v51}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 43
    .end local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x14

    .local v2, "$this$dp\\7":I
    const/16 v27, 0x0

    .line 82
    .local v27, "$i$f$getDp\\7\\43":I
    move/from16 v40, v4

    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1\\5\\81\\1":I
    .local v40, "$i$a$-Layout-ColumnKt$Column$1\\5\\81\\1":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 43
    .end local v2    # "$this$dp\\7":I
    .end local v27    # "$i$f$getDp\\7\\43":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v2, v22

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 45
    const v1, -0x78b1545e

    const-string v2, "CC(remember):RegistroExitosoScreen.kt#9igjgp"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\8":Z
    move-object v2, v3

    .local v2, "$this$cache\\8":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 83
    .local v4, "$i$f$cache\\8\\45":I
    move/from16 v22, v1

    .end local v1    # "invalid\\8":Z
    .local v22, "invalid\\8":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\8":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 84
    .local v27, "$i$a$-let-ComposerKt$cache$1\\9\\83\\8":I
    if-nez v22, :cond_7

    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v48, v3

    .end local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_6

    goto :goto_3

    .line 88
    :cond_6
    goto :goto_4

    .line 84
    .end local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    :cond_7
    move-object/from16 v48, v3

    .line 85
    .end local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    :goto_3
    const/4 v3, 0x0

    .line 45
    .local v3, "$i$a$-cache-RegistroExitosoScreenKt$RegistroExitosoScreen$1$1$1\\10\\85\\6":I
    move-object/from16 v28, v1

    .end local v1    # "it\\8":Ljava/lang/Object;
    .local v28, "it\\8":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavController;)V

    .line 85
    .end local v3    # "$i$a$-cache-RegistroExitosoScreenKt$RegistroExitosoScreen$1$1$1\\10\\85\\6":I
    nop

    .line 86
    .local v1, "value\\9":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 87
    nop

    .line 83
    .end local v1    # "value\\9":Ljava/lang/Object;
    .end local v27    # "$i$a$-let-ComposerKt$cache$1\\9\\83\\8":I
    .end local v28    # "it\\8":Ljava/lang/Object;
    :goto_4
    nop

    .line 45
    .end local v2    # "$this$cache\\8":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\8\\45":I
    .end local v22    # "invalid\\8":Z
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;->getLambda$-2026952961$app()Lkotlin/jvm/functions/Function3;

    move-result-object v36

    .line 44
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/high16 v38, 0x30000000

    const/16 v39, 0x1fe

    move-object/from16 v37, v48

    .end local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v37, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v39}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 38
    .end local v37    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 51
    nop

    .line 57
    .end local v48    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v52    # "$i$a$-Column-RegistroExitosoScreenKt$RegistroExitosoScreen$1$1\\6\\57\\0":I
    .end local v53    # "$this$RegistroExitosoScreen_u24lambda_u243_u24lambda_u242\\6":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v54    # "$changed\\6":I
    invoke-static/range {v55 .. v55}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 81
    .end local v21    # "$changed\\5":I
    .end local v40    # "$i$a$-Layout-ColumnKt$Column$1\\5\\81\\1":I
    .end local v55    # "$composer\\5":Landroidx/compose/runtime/Composer;
    nop

    .line 89
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 66
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 90
    nop

    .line 60
    .end local v18    # "$i$f$ReusableComposeNode\\3\\64":I
    .end local v19    # "$changed\\3":I
    .end local v25    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .end local v26    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 91
    nop

    .line 54
    .end local v6    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "$changed\\2":I
    .end local v13    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v14    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v15    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "$i$f$Layout\\2\\56":I
    .end local v17    # "compositeKeyHash\\2":I
    .end local v20    # "materialized\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 92
    nop

    .end local v5    # "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v7    # "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v8    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v9    # "$changed\\1":I
    .end local v10    # "$i$f$Column\\1\\30":I
    .end local v11    # "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "modifier\\1":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 28
    .end local v23    # "$dirty":I
    .local v3, "$dirty":I
    :cond_8
    move/from16 v23, v3

    .end local v3    # "$dirty":I
    .restart local v23    # "$dirty":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 52
    :cond_9
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final RegistroExitosoScreen$lambda$3$lambda$2$lambda$1$lambda$0(Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 7
    .param p0, "$navController"    # Landroidx/navigation/NavController;

    .line 46
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->getRoute()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .local v1, "$navController":Landroidx/navigation/NavController;
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final RegistroExitosoScreen$lambda$4(Landroidx/navigation/NavController;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegistroExitosoScreenKt;->RegistroExitosoScreen(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
