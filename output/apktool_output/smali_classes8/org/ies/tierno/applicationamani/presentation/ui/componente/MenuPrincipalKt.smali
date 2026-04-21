.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;
.super Ljava/lang/Object;
.source "MenuPrincipal.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenuPrincipal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MenuPrincipal.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,150:1\n1128#2,6:151\n1128#2,6:161\n1128#2,6:167\n1128#2,6:173\n1128#2,6:179\n1128#2,6:185\n122#3:157\n85#4:158\n117#4,2:159\n*S KotlinDebug\n*F\n+ 1 MenuPrincipal.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt\n*L\n53#1:151,6\n96#1:161,6\n105#1:167,6\n132#1:173,6\n80#1:179,6\n90#1:185,6\n59#1:157\n53#1:158\n53#1:159,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u001a\r\u0010\u0005\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u008e\u0002"
    }
    d2 = {
        "MenuPrincipal",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V",
        "MenuPrincipalPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "app",
        "expanded",
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
.method public static final MenuPrincipal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    const-string v2, "navController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const v2, 0x52f33c57

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(MenuPrincipal)N(navController)52@2115L34,54@2182L11,55@2229L10,60@2346L120,76@2815L2148,57@2245L2724:MenuPrincipal.kt#ef1jou"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p2

    .local v3, "$dirty":I
    and-int/lit8 v4, p2, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    and-int/lit8 v8, v3, 0x1

    invoke-interface {v14, v4, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal (MenuPrincipal.kt:50)"

    invoke-static {v2, v3, v4, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 53
    :cond_3
    const v2, 0x63159219

    const-string v4, "CC(remember):MenuPrincipal.kt#9igjgp"

    invoke-static {v14, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\1":Z
    move-object v4, v14

    .local v4, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 151
    .local v8, "$i$f$cache\\1\\53":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\1":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 152
    .local v10, "$i$a$-let-ComposerKt$cache$1\\2\\151\\1":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_4

    .line 153
    const/4 v11, 0x0

    .line 53
    .local v11, "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$expanded$2\\3\\153\\0":I
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v12, 0x0

    invoke-static {v6, v12, v5, v12}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 153
    .end local v11    # "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$expanded$2\\3\\153\\0":I
    nop

    .line 154
    .local v5, "value\\2":Ljava/lang/Object;
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    move-object v9, v5

    .end local v5    # "value\\2":Ljava/lang/Object;
    goto :goto_2

    .line 156
    :cond_4
    nop

    .line 151
    .end local v9    # "it\\1":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1\\2\\151\\1":I
    :goto_2
    nop

    .line 53
    .end local v2    # "invalid\\1":Z
    .end local v4    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\1\\53":I
    move-object v2, v9

    check-cast v2, Landroidx/compose/runtime/MutableState;

    .local v2, "expanded$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 55
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v14, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    .line 56
    .local v4, "colors":Landroidx/compose/material3/ColorScheme;
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v14, v6}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v5

    .line 59
    .local v5, "typography":Landroidx/compose/material3/Typography;
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x8

    .local v6, "$this$dp\\4":I
    const/4 v8, 0x0

    .line 157
    .local v8, "$i$f$getDp\\4\\59":I
    int-to-float v9, v6

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v16

    .line 59
    .end local v6    # "$this$dp\\4":I
    .end local v8    # "$i$f$getDp\\4\\59":I
    const/16 v23, 0x1e

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    invoke-static/range {v15 .. v24}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 61
    move v6, v3

    .end local v3    # "$dirty":I
    .local v6, "$dirty":I
    sget-object v3, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    .line 62
    move-object v8, v4

    move-object v9, v5

    .end local v4    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v5    # "typography":Landroidx/compose/material3/Typography;
    .local v8, "colors":Landroidx/compose/material3/ColorScheme;
    .local v9, "typography":Landroidx/compose/material3/Typography;
    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v4

    .line 63
    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v10

    sget v12, Landroidx/compose/material3/TopAppBarDefaults;->$stable:I

    shl-int/lit8 v15, v12, 0xf

    .line 61
    move v12, v6

    move v13, v7

    .end local v6    # "$dirty":I
    .local v12, "$dirty":I
    const-wide/16 v6, 0x0

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .end local v8    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v9    # "typography":Landroidx/compose/material3/Typography;
    .local v16, "colors":Landroidx/compose/material3/ColorScheme;
    .local v18, "typography":Landroidx/compose/material3/Typography;
    const-wide/16 v8, 0x0

    move/from16 v19, v12

    move/from16 v20, v13

    .end local v12    # "$dirty":I
    .local v19, "$dirty":I
    const-wide/16 v12, 0x0

    move-object/from16 v21, v16

    .end local v16    # "colors":Landroidx/compose/material3/ColorScheme;
    .local v21, "colors":Landroidx/compose/material3/ColorScheme;
    const/16 v16, 0x16

    move-object/from16 v25, v18

    move-object/from16 v1, v21

    .end local v18    # "typography":Landroidx/compose/material3/Typography;
    .end local v21    # "colors":Landroidx/compose/material3/ColorScheme;
    .local v1, "colors":Landroidx/compose/material3/ColorScheme;
    .local v25, "typography":Landroidx/compose/material3/Typography;
    invoke-virtual/range {v3 .. v16}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v9

    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/ComposableSingletons$MenuPrincipalKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/ComposableSingletons$MenuPrincipalKt;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/ComposableSingletons$MenuPrincipalKt;->getLambda$-1254878957$app()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 59
    sget-object v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/ComposableSingletons$MenuPrincipalKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/ComposableSingletons$MenuPrincipalKt;

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/ComposableSingletons$MenuPrincipalKt;->getLambda$904205137$app()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 77
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda1;

    move-object/from16 v15, v25

    .end local v25    # "typography":Landroidx/compose/material3/Typography;
    .local v15, "typography":Landroidx/compose/material3/Typography;
    invoke-direct {v4, v2, v1, v0, v15}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/ColorScheme;Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;)V

    const/16 v6, 0x36

    const v7, 0x2df475c8

    const/4 v13, 0x1

    invoke-static {v7, v13, v4, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 61
    nop

    .line 58
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xdb6

    const/16 v13, 0xb0

    move-object v11, v14

    move-object/from16 v4, v17

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v13}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v1    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v2    # "expanded$delegate":Landroidx/compose/runtime/MutableState;
    .end local v15    # "typography":Landroidx/compose/material3/Typography;
    goto :goto_3

    .line 49
    .end local v19    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_5
    move/from16 v19, v3

    .end local v3    # "$dirty":I
    .restart local v19    # "$dirty":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 140
    :cond_6
    :goto_3
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda2;

    move/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_4

    :cond_7
    move/from16 v3, p2

    :goto_4
    return-void
.end method

.method private static final MenuPrincipal$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 53
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$f$getValue\\1\\53":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\53":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    return v0
.end method

.method static final MenuPrincipal$lambda$18(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/ColorScheme;Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 20
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p2, "$navController"    # Landroidx/navigation/NavController;
    .param p3, "$typography"    # Landroidx/compose/material3/Typography;
    .param p4, "$this$TopAppBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v15, p5

    move/from16 v10, p6

    const-string v1, "$this$TopAppBar"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C79@2868L24,80@2907L243,78@2830L320,89@3250L20,90@3285L1668,87@3164L1789:MenuPrincipal.kt#ef1jou"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v10, 0x11

    const/16 v2, 0x10

    const/4 v12, 0x1

    if-eq v1, v2, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v10, 0x1

    invoke-interface {v15, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous> (MenuPrincipal.kt:78)"

    const v3, 0x2df475c8

    invoke-static {v3, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 80
    :cond_1
    const v1, -0x7d51d580

    const-string v13, "CC(remember):MenuPrincipal.kt#9igjgp"

    invoke-static {v15, v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\1":Z
    move-object/from16 v2, p5

    .local v2, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$f$cache\\1\\80":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 180
    .local v5, "$i$a$-let-ComposerKt$cache$1\\2\\179\\1":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 181
    const/4 v6, 0x0

    .line 80
    .local v6, "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$1\\3\\181\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 181
    .end local v6    # "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$1\\3\\181\\0":I
    nop

    .line 182
    .local v7, "value\\2":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    move-object v4, v7

    .end local v7    # "value\\2":Ljava/lang/Object;
    goto :goto_1

    .line 184
    :cond_2
    nop

    .line 179
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\2\\179\\1":I
    :goto_1
    nop

    .line 80
    .end local v1    # "invalid\\1":Z
    .end local v2    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\1\\80":I
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 81
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda4;

    move-object/from16 v14, p1

    invoke-direct {v2, v14, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/MutableState;)V

    const v3, -0x1f98795b

    const/16 v4, 0x36

    invoke-static {v3, v12, v2, v15, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v7, v5

    const/4 v5, 0x0

    const v8, 0x30006

    const/16 v9, 0x1e

    move-object/from16 v19, v15

    move v15, v7

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 89
    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    .line 90
    const v2, -0x7d51a5c4

    invoke-static {v7, v2, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\4":Z
    move-object/from16 v3, p5

    .local v3, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 185
    .local v4, "$i$f$cache\\4\\90":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\4":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 186
    .local v6, "$i$a$-let-ComposerKt$cache$1\\5\\185\\4":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_3

    .line 187
    const/4 v8, 0x0

    .line 90
    .local v8, "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$3\\6\\187\\0":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 187
    .end local v8    # "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$3\\6\\187\\0":I
    nop

    .line 188
    .local v9, "value\\5":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    move-object v5, v9

    .end local v9    # "value\\5":Ljava/lang/Object;
    goto :goto_2

    .line 190
    :cond_3
    nop

    .line 185
    .end local v5    # "it\\4":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1\\5\\185\\4":I
    :goto_2
    nop

    .line 90
    .end local v2    # "invalid\\4":Z
    .end local v3    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\4\\90":I
    move-object v2, v5

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 91
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda6;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v3, v4, v5, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda6;-><init>(Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/MutableState;)V

    const v6, -0x20d16793

    invoke-static {v6, v12, v3, v7, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 88
    move-object v14, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x30

    const/16 v17, 0x30

    const/16 v18, 0x7fc

    move-object/from16 v15, p5

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 77
    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 138
    :cond_5
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final MenuPrincipal$lambda$18$lambda$17(Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 18
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p3, "$this$DropdownMenu"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p4

    move/from16 v15, p5

    const-string v3, "$this$DropdownMenu"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C93@3349L80,95@3461L132,92@3304L307,102@3674L77,104@3783L135,101@3629L307,129@4665L88,131@4785L136,128@4620L319:MenuPrincipal.kt#ef1jou"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v15, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-eq v3, v5, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v5, v15, 0x1

    invoke-interface {v12, v3, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous> (MenuPrincipal.kt:92)"

    const v7, -0x20d16793

    invoke-static {v7, v15, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 94
    :cond_1
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/material3/Typography;)V

    const v5, 0x1100be9d

    const/16 v7, 0x36

    invoke-static {v5, v6, v3, v12, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 96
    const v5, -0x3215b84f

    const-string v8, "CC(remember):MenuPrincipal.kt#9igjgp"

    invoke-static {v12, v5, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid\\1":Z
    move-object/from16 v9, p4

    .local v9, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$f$cache\\1\\96":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it\\1":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 162
    .local v13, "$i$a$-let-ComposerKt$cache$1\\2\\161\\1":I
    if-nez v5, :cond_3

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_2

    goto :goto_1

    .line 166
    :cond_2
    goto :goto_2

    .line 163
    :cond_3
    :goto_1
    const/4 v14, 0x0

    .line 96
    .local v14, "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$4$2\\3\\163\\0":I
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda8;-><init>(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)V

    .line 163
    .end local v14    # "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$4$2\\3\\163\\0":I
    nop

    .line 164
    .local v6, "value\\2":Ljava/lang/Object;
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    move-object v11, v6

    .line 161
    .end local v6    # "value\\2":Ljava/lang/Object;
    .end local v11    # "it\\1":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1\\2\\161\\1":I
    :goto_2
    nop

    .line 96
    .end local v5    # "invalid\\1":Z
    .end local v9    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache\\1\\96":I
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 93
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move v13, v9

    const/4 v9, 0x0

    move-object v14, v10

    const/4 v10, 0x0

    move-object v4, v11

    const/4 v11, 0x0

    move/from16 v16, v13

    const/4 v13, 0x6

    move-object/from16 v17, v14

    const/16 v14, 0x1fc

    move/from16 v2, v16

    move-object/from16 v15, v17

    const/4 v0, 0x1

    invoke-static/range {v3 .. v14}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 103
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/material3/Typography;)V

    const v4, 0x2d4f6d06

    invoke-static {v4, v0, v3, v12, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 105
    const v4, -0x3215900c

    invoke-static {v12, v4, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 v4, p0

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid\\4":Z
    move-object/from16 v6, p4

    .local v6, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 167
    .local v7, "$i$f$cache\\4\\105":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\4":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 168
    .local v9, "$i$a$-let-ComposerKt$cache$1\\5\\167\\4":I
    if-nez v5, :cond_5

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_4

    goto :goto_3

    .line 172
    :cond_4
    move-object/from16 v13, p2

    goto :goto_4

    .line 169
    :cond_5
    :goto_3
    const/4 v10, 0x0

    .line 105
    .local v10, "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$4$4\\6\\169\\0":I
    new-instance v11, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda10;

    move-object/from16 v13, p2

    invoke-direct {v11, v4, v13}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda10;-><init>(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)V

    .line 169
    .end local v10    # "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$4$4\\6\\169\\0":I
    nop

    .line 170
    .local v11, "value\\5":Ljava/lang/Object;
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 171
    move-object v8, v11

    .line 167
    .end local v8    # "it\\4":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1\\5\\167\\4":I
    .end local v11    # "value\\5":Ljava/lang/Object;
    :goto_4
    nop

    .line 105
    .end local v5    # "invalid\\4":Z
    .end local v6    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\4\\105":I
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 102
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x6

    const/16 v14, 0x1fc

    invoke-static/range {v3 .. v14}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 130
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/material3/Typography;)V

    const v4, 0x660b3a25

    invoke-static {v4, v0, v3, v12, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 132
    const v0, -0x321512cb

    invoke-static {v12, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\7":Z
    move-object/from16 v4, p4

    .local v4, "$this$cache\\7":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 173
    .local v5, "$i$f$cache\\7\\132":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\7":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 174
    .local v7, "$i$a$-let-ComposerKt$cache$1\\8\\173\\7":I
    if-nez v2, :cond_7

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_6

    goto :goto_5

    .line 178
    :cond_6
    move-object/from16 v15, p2

    goto :goto_6

    .line 175
    :cond_7
    :goto_5
    const/4 v8, 0x0

    .line 132
    .local v8, "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$4$6\\9\\175\\0":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda12;

    move-object/from16 v15, p2

    invoke-direct {v9, v0, v15}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda12;-><init>(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)V

    .line 175
    .end local v8    # "$i$a$-cache-MenuPrincipalKt$MenuPrincipal$1$4$6\\9\\175\\0":I
    nop

    .line 176
    .local v9, "value\\8":Ljava/lang/Object;
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    move-object v6, v9

    .line 173
    .end local v6    # "it\\7":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\8\\173\\7":I
    .end local v9    # "value\\8":Ljava/lang/Object;
    :goto_6
    nop

    .line 132
    .end local v2    # "invalid\\7":Z
    .end local v4    # "$this$cache\\7":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\7\\132":I
    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 129
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x6

    const/16 v14, 0x1fc

    invoke-static/range {v3 .. v14}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_7

    .line 91
    :cond_8
    move-object v15, v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 137
    :cond_9
    :goto_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final MenuPrincipal$lambda$18$lambda$17$lambda$10$lambda$9(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 7
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 97
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 98
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

    .line 99
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final MenuPrincipal$lambda$18$lambda$17$lambda$11(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C102@3676L73:MenuPrincipal.kt#ef1jou"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous>.<anonymous> (MenuPrincipal.kt:102)"

    const v4, 0x2d4f6d06

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 103
    :cond_1
    nop

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 103
    const-string v0, "Reg\u00edstrate"

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

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 104
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPrincipal$lambda$18$lambda$17$lambda$13$lambda$12(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 7
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 107
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->getRoute()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .local v1, "$navController":Landroidx/navigation/NavController;
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 108
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final MenuPrincipal$lambda$18$lambda$17$lambda$14(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C129@4667L84:MenuPrincipal.kt#ef1jou"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous>.<anonymous> (MenuPrincipal.kt:129)"

    const v4, 0x660b3a25

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 130
    :cond_1
    nop

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 130
    const-string v0, "Volver a la principal"

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

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 131
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPrincipal$lambda$18$lambda$17$lambda$16$lambda$15(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 7
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 133
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 134
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->getRoute()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .local v1, "$navController":Landroidx/navigation/NavController;
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 135
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final MenuPrincipal$lambda$18$lambda$17$lambda$8(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C93@3351L76:MenuPrincipal.kt#ef1jou"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous>.<anonymous> (MenuPrincipal.kt:93)"

    const v4, 0x1100be9d

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 94
    :cond_1
    nop

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 94
    const-string v0, "Inicia sesi\u00f3n"

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

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 95
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPrincipal$lambda$18$lambda$4$lambda$3(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 80
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPrincipal$lambda$18$lambda$5(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p1, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C82@3027L109:MenuPrincipal.kt#ef1jou"

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

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal.<anonymous>.<anonymous> (MenuPrincipal.kt:81)"

    const v2, -0x1f98795b

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 82
    :cond_1
    invoke-static {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/ArrowDropDownKt;->getArrowDropDown(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/ArrowDropUpKt;->getArrowDropUp(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 84
    .local v1, "imagen":Landroidx/compose/ui/graphics/vector/ImageVector;
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v4

    .line 83
    const-string v2, "Desplegue"

    const/4 v3, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x4

    move-object v6, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v1    # "imagen":Landroidx/compose/ui/graphics/vector/ImageVector;
    goto :goto_2

    .line 81
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_3
    move-object v6, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 86
    :cond_4
    :goto_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method static final MenuPrincipal$lambda$18$lambda$7$lambda$6(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuPrincipal$lambda$19(Landroidx/navigation/NavController;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final MenuPrincipal$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$f$setValue\\1\\53":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 160
    nop

    .line 53
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\53":I
    return-void
.end method

.method public static final MenuPrincipalPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 147
    const v0, -0x479ec080

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v1, "C(MenuPrincipalPreview)147@5150L23,147@5136L38:MenuPrincipal.kt#ef1jou"

    invoke-static {p0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalPreview (MenuPrincipal.kt:146)"

    invoke-static {v0, p1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-array v0, v1, [Landroidx/navigation/Navigator;

    .line 148
    invoke-static {v0, p0, v1}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    invoke-static {v0, p0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 145
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 149
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method static final MenuPrincipalPreview$lambda$20(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipalPreview(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
