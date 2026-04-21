.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt;
.super Ljava/lang/Object;
.source "BarraNavegationInferiorPsicologo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBarraNavegationInferiorPsicologo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BarraNavegationInferiorPsicologo.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,95:1\n14048#2:96\n14049#2:103\n1128#3,6:97\n1128#3,6:104\n*S KotlinDebug\n*F\n+ 1 BarraNavegationInferiorPsicologo.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt\n*L\n49#1:96\n49#1:103\n52#1:97,6\n82#1:104,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001aG\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u001e\u0008\u0002\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "BarraNavegationInferiorPsicologo",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "selectedItem",
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;",
        "onItemSelected",
        "Lkotlin/Function1;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "MenuPsicologo",
        "title",
        "",
        "showBackButton",
        "",
        "actions",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Landroidx/navigation/NavController;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
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
.method public static final BarraNavegationInferiorPsicologo(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "selectedItem"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .param p2, "onItemSelected"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController;",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "navController"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "selectedItem"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onItemSelected"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const v4, -0x14ecd37c

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(BarraNavegationInferiorPsicologo)N(navController,selectedItem,onItemSelected)47@1909L645,47@1895L659:BarraNavegationInferiorPsicologo.kt#d6dcan"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p4

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_1

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    move-object v6, v1

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v5, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    if-eq v6, v7, :cond_6

    move v6, v8

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    and-int/lit8 v7, v5, 0x1

    invoke-interface {v13, v6, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo (BarraNavegationInferiorPsicologo.kt:46)"

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 48
    :cond_7
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavController;)V

    const/16 v6, 0x36

    const v7, -0x3c31f983

    invoke-static {v7, v8, v4, v13, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function3;

    const/high16 v14, 0x30000

    const/16 v15, 0x1f

    move v4, v5

    .end local v5    # "$dirty":I
    .local v4, "$dirty":I
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v15}, Landroidx/compose/material3/NavigationBarKt;->NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 42
    .end local v4    # "$dirty":I
    .restart local v5    # "$dirty":I
    :cond_8
    move v4, v5

    .end local v5    # "$dirty":I
    .restart local v4    # "$dirty":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 67
    :cond_9
    :goto_4
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method static final BarraNavegationInferiorPsicologo$lambda$6(Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavController;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$selectedItem"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .param p1, "$onItemSelected"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$navController"    # Landroidx/navigation/NavController;
    .param p3, "$this$NavigationBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    const-string v3, "$this$NavigationBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C*51@2069L375,62@2504L20,49@1975L563:BarraNavegationInferiorPsicologo.kt#d6dcan"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p5

    .local v3, "$dirty":I
    and-int/lit8 v4, p5, 0x6

    if-nez v4, :cond_1

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    move v15, v3

    .end local v3    # "$dirty":I
    .local v15, "$dirty":I
    and-int/lit8 v3, v15, 0x13

    const/16 v4, 0x12

    const/16 v16, 0x0

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move/from16 v3, v16

    :goto_1
    and-int/lit8 v4, v15, 0x1

    invoke-interface {v12, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo.<anonymous> (BarraNavegationInferiorPsicologo.kt:48)"

    const v6, -0x3c31f983

    invoke-static {v6, v15, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 49
    :cond_3
    invoke-static {}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    move-result-object v3

    .local v3, "$this$forEach\\1":[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 96
    .local v17, "$i$f$forEach\\1\\49":I
    array-length v4, v3

    move/from16 v6, v16

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v18, v3, v6

    .local v18, "element\\1":Ljava/lang/Object;
    move-object/from16 v7, v18

    .local v7, "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    const/16 v19, 0x0

    .line 50
    .local v19, "$i$a$-forEach-BarraNavegationInferiorPsicologoKt$BarraNavegationInferiorPsicologo$1$1\\2\\96\\0":I
    nop

    .line 51
    move-object/from16 v8, p0

    move-object v9, v3

    if-ne v8, v7, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move/from16 v3, v16

    .line 52
    .end local v3    # "$this$forEach\\1":[Ljava/lang/Object;
    .local v9, "$this$forEach\\1":[Ljava/lang/Object;
    :goto_3
    const v10, -0x18673c04

    const-string v11, "CC(remember):BarraNavegationInferiorPsicologo.kt#9igjgp"

    invoke-static {v12, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    move-object v11, v7

    check-cast v11, Ljava/lang/Enum;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    .local v10, "invalid\\3":Z
    move-object/from16 v11, p4

    .local v11, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 97
    .local v13, "$i$f$cache\\3\\52":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it\\3":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 98
    .local v20, "$i$a$-let-ComposerKt$cache$1\\4\\97\\3":I
    if-nez v10, :cond_6

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v14, v5, :cond_5

    goto :goto_4

    .line 102
    :cond_5
    goto :goto_5

    .line 99
    :cond_6
    :goto_4
    const/4 v5, 0x0

    .line 52
    .local v5, "$i$a$-cache-BarraNavegationInferiorPsicologoKt$BarraNavegationInferiorPsicologo$1$1$1\\5\\99\\2":I
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v7, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Landroidx/navigation/NavController;)V

    .line 99
    .end local v5    # "$i$a$-cache-BarraNavegationInferiorPsicologoKt$BarraNavegationInferiorPsicologo$1$1$1\\5\\99\\2":I
    nop

    .line 100
    .local v2, "value\\4":Ljava/lang/Object;
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 101
    move-object v14, v2

    .line 97
    .end local v2    # "value\\4":Ljava/lang/Object;
    .end local v14    # "it\\3":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1\\4\\97\\3":I
    :goto_5
    nop

    .line 52
    .end local v10    # "invalid\\3":Z
    .end local v11    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache\\3\\52":I
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 62
    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->getIcon()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 63
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda5;

    invoke-direct {v2, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda5;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;)V

    const/16 v10, 0x36

    const v11, 0x50dd3f07

    const/4 v13, 0x1

    invoke-static {v11, v13, v2, v12, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v10, v15, 0xe

    const/high16 v11, 0x180000

    or-int/2addr v10, v11

    .line 50
    move v11, v6

    const/4 v6, 0x0

    move-object/from16 v20, v7

    .end local v7    # "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .local v20, "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    const/4 v7, 0x0

    move-object/from16 v21, v9

    .end local v9    # "$this$forEach\\1":[Ljava/lang/Object;
    .local v21, "$this$forEach\\1":[Ljava/lang/Object;
    const/4 v9, 0x0

    move/from16 v22, v13

    move v13, v10

    const/4 v10, 0x0

    move/from16 v23, v11

    const/4 v11, 0x0

    move/from16 v24, v4

    move-object v4, v14

    const/16 v14, 0x1d8

    move-object v8, v2

    move-object/from16 v2, p3

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 65
    nop

    .line 96
    .end local v19    # "$i$a$-forEach-BarraNavegationInferiorPsicologoKt$BarraNavegationInferiorPsicologo$1$1\\2\\96\\0":I
    .end local v20    # "item\\2":Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    nop

    .end local v18    # "element\\1":Ljava/lang/Object;
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v12, p4

    move-object/from16 v3, v21

    move/from16 v4, v24

    goto/16 :goto_2

    .line 103
    .end local v21    # "$this$forEach\\1":[Ljava/lang/Object;
    .restart local v3    # "$this$forEach\\1":[Ljava/lang/Object;
    :cond_7
    move-object/from16 v21, v3

    .end local v3    # "$this$forEach\\1":[Ljava/lang/Object;
    .end local v17    # "$i$f$forEach\\1\\49":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 48
    :cond_8
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 66
    :cond_9
    :goto_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 2
    .param p0, "$onItemSelected"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$item"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .param p2, "$navController"    # Landroidx/navigation/NavController;

    .line 53
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->getRoute()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda6;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {p2, v0, v1}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1(Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$this$navigate"    # Landroidx/navigation/NavOptionsBuilder;

    const-string v0, "$this$navigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILkotlin/jvm/functions/Function1;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setLaunchSingleTop(Z)V

    .line 59
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setRestoreState(Z)V

    .line 60
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1$lambda$0(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$popUpTo"    # Landroidx/navigation/PopUpToBuilder;

    const-string v0, "$this$popUpTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setSaveState(Z)V

    .line 57
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$4(Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$item"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C62@2506L16:BarraNavegationInferiorPsicologo.kt#d6dcan"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo.<anonymous>.<anonymous>.<anonymous> (BarraNavegationInferiorPsicologo.kt:62)"

    const v4, 0x50dd3f07

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 63
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    const/16 v23, 0x0

    const v24, 0x1fffe

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BarraNavegationInferiorPsicologo$lambda$7(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt;->BarraNavegationInferiorPsicologo(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final MenuPsicologo(Ljava/lang/String;Landroidx/navigation/NavController;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .param p2, "showBackButton"    # Z
    .param p3, "actions"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavController;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    const-string v0, "title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const v0, -0x3e28c814

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(MenuPsicologo)N(title,navController,showBackButton,actions)78@2835L15,79@2877L241,87@3182L233,77@2808L613:BarraNavegationInferiorPsicologo.kt#d6dcan"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p5

    .local v3, "$dirty":I
    and-int/lit8 v4, v5, 0x6

    if-nez v4, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v5, 0x30

    if-nez v4, :cond_3

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_4

    or-int/lit16 v3, v3, 0x180

    move/from16 v6, p2

    goto :goto_3

    :cond_4
    and-int/lit16 v6, v5, 0x180

    if-nez v6, :cond_6

    move/from16 v6, p2

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_2

    :cond_5
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    goto :goto_3

    :cond_6
    move/from16 v6, p2

    :goto_3
    and-int/lit8 v7, p6, 0x8

    if-eqz v7, :cond_7

    or-int/lit16 v3, v3, 0xc00

    move-object/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v5, 0xc00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v3, v9

    goto :goto_5

    :cond_9
    move-object/from16 v8, p3

    :goto_5
    and-int/lit16 v9, v3, 0x493

    const/16 v10, 0x492

    const/4 v11, 0x1

    if-eq v9, v10, :cond_a

    move v9, v11

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_6
    and-int/lit8 v10, v3, 0x1

    invoke-interface {v14, v9, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v4, :cond_b

    .line 74
    const/4 v4, 0x1

    .end local p2    # "showBackButton":Z
    .local v4, "showBackButton":Z
    goto :goto_7

    .line 76
    .end local v4    # "showBackButton":Z
    .restart local p2    # "showBackButton":Z
    :cond_b
    move v4, v6

    .line 74
    .end local p2    # "showBackButton":Z
    .restart local v4    # "showBackButton":Z
    :goto_7
    if-eqz v7, :cond_c

    sget-object v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;

    invoke-virtual {v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->getLambda$-516782523$app()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    move-object/from16 v20, v6

    .end local p3    # "actions":Lkotlin/jvm/functions/Function3;
    .local v6, "actions":Lkotlin/jvm/functions/Function3;
    goto :goto_8

    .end local v6    # "actions":Lkotlin/jvm/functions/Function3;
    .restart local p3    # "actions":Lkotlin/jvm/functions/Function3;
    :cond_c
    move-object/from16 v20, v8

    .end local p3    # "actions":Lkotlin/jvm/functions/Function3;
    .local v20, "actions":Lkotlin/jvm/functions/Function3;
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuPsicologo (BarraNavegationInferiorPsicologo.kt:75)"

    invoke-static {v0, v3, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 79
    :cond_d
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    const v6, -0x33ebd358    # -3.884304E7f

    const/16 v7, 0x36

    invoke-static {v6, v11, v0, v14, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 80
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda8;

    invoke-direct {v6, v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda8;-><init>(ZLandroidx/navigation/NavController;)V

    const v8, -0x67ebc11a

    invoke-static {v8, v11, v6, v14, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 87
    nop

    .line 88
    sget-object v6, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    .line 89
    sget-object v7, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->getPrimary-0d7_KjU()J

    move-result-wide v7

    .line 90
    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v9

    .line 91
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v11

    .line 92
    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v15

    .line 88
    nop

    .line 89
    nop

    .line 91
    nop

    .line 90
    nop

    .line 92
    sget v13, Landroidx/compose/material3/TopAppBarDefaults;->$stable:I

    shl-int/lit8 v13, v13, 0xf

    or-int/lit16 v13, v13, 0x6d86

    .line 88
    move/from16 v18, v13

    move-object/from16 v17, v14

    move-wide v13, v9

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const-wide/16 v9, 0x0

    const/16 v19, 0x2

    invoke-virtual/range {v6 .. v19}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v12

    and-int/lit16 v6, v3, 0x1c00

    or-int/lit16 v15, v6, 0x186

    .line 78
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0xb2

    move-object v6, v0

    move-object/from16 v14, v17

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "actions":Lkotlin/jvm/functions/Function3;
    .local v9, "actions":Lkotlin/jvm/functions/Function3;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v6 .. v16}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_9

    .line 69
    .end local v4    # "showBackButton":Z
    .end local v9    # "actions":Lkotlin/jvm/functions/Function3;
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "showBackButton":Z
    .restart local p3    # "actions":Lkotlin/jvm/functions/Function3;
    :cond_e
    move-object/from16 v17, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v4, v6

    move-object v9, v8

    .line 95
    .end local p2    # "showBackButton":Z
    .end local p3    # "actions":Lkotlin/jvm/functions/Function3;
    .restart local v4    # "showBackButton":Z
    .restart local v9    # "actions":Lkotlin/jvm/functions/Function3;
    :cond_f
    :goto_9
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda9;

    move/from16 v6, p6

    move v8, v3

    move v3, v4

    move-object v4, v9

    .end local v9    # "actions":Lkotlin/jvm/functions/Function3;
    .local v3, "showBackButton":Z
    .local v4, "actions":Lkotlin/jvm/functions/Function3;
    .local v8, "$dirty":I
    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Landroidx/navigation/NavController;ZLkotlin/jvm/functions/Function3;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_a

    .end local v8    # "$dirty":I
    .local v3, "$dirty":I
    .local v4, "showBackButton":Z
    .restart local v9    # "actions":Lkotlin/jvm/functions/Function3;
    :cond_10
    move v8, v3

    move v3, v4

    move-object v4, v9

    .end local v9    # "actions":Lkotlin/jvm/functions/Function3;
    .local v3, "showBackButton":Z
    .local v4, "actions":Lkotlin/jvm/functions/Function3;
    .restart local v8    # "$dirty":I
    :goto_a
    return-void
.end method

.method static final MenuPsicologo$lambda$11(ZLandroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$showBackButton"    # Z
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C:BarraNavegationInferiorPsicologo.kt#d6dcan"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuPsicologo.<anonymous> (BarraNavegationInferiorPsicologo.kt:80)"

    const v2, -0x67ebc11a

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 81
    :cond_1
    if-eqz p0, :cond_4

    const v0, -0x63fbd509

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "81@2950L30,81@2929L165"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 82
    const v0, -0x1bffd95c

    const-string v1, "CC(remember):BarraNavegationInferiorPsicologo.kt#9igjgp"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid\\1":Z
    move-object v1, p2

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$f$cache\\1\\82":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 105
    .local v4, "$i$a$-let-ComposerKt$cache$1\\2\\104\\1":I
    if-nez v0, :cond_3

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    goto :goto_2

    .line 106
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 82
    .local v5, "$i$a$-cache-BarraNavegationInferiorPsicologoKt$MenuPsicologo$2$1\\3\\106\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    .line 106
    .end local v5    # "$i$a$-cache-BarraNavegationInferiorPsicologoKt$MenuPsicologo$2$1\\3\\106\\0":I
    nop

    .line 107
    .local v7, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 108
    move-object v3, v7

    .line 104
    .end local v3    # "it\\1":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1\\2\\104\\1":I
    .end local v7    # "value\\2":Ljava/lang/Object;
    :goto_2
    nop

    .line 82
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache\\1\\82":I
    move-object v0, v3

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->getLambda$-443681810$app()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 81
    goto :goto_3

    :cond_4
    const v0, -0x642800e4

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 80
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 86
    :cond_6
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPsicologo$lambda$11$lambda$10$lambda$9(Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$navController"    # Landroidx/navigation/NavController;

    .line 82
    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPsicologo$lambda$12(Ljava/lang/String;Landroidx/navigation/NavController;ZLkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v7, p5

    move-object v5, p6

    invoke-static/range {v1 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt;->MenuPsicologo(Ljava/lang/String;Landroidx/navigation/NavController;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final MenuPsicologo$lambda$8(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$title"    # Ljava/lang/String;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C78@2837L11:BarraNavegationInferiorPsicologo.kt#d6dcan"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuPsicologo.<anonymous> (BarraNavegationInferiorPsicologo.kt:78)"

    const v4, -0x33ebd358    # -3.884304E7f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 79
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1fffe

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
