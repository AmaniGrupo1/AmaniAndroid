.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;
.super Ljava/lang/Object;
.source "MenuSetting.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenuSetting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MenuSetting.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,91:1\n1128#2,6:92\n1128#2,6:98\n1128#2,6:108\n1128#2,6:114\n1128#2,6:120\n1128#2,6:126\n122#3:104\n85#4:105\n117#4,2:106\n*S KotlinDebug\n*F\n+ 1 MenuSetting.kt\norg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt\n*L\n37#1:92,6\n41#1:98,6\n74#1:108,6\n83#1:114,6\n60#1:120,6\n70#1:126,6\n46#1:104\n41#1:105\n41#1:106,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u008e\u0002"
    }
    d2 = {
        "MenuSetting",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "idPsicologo",
        "",
        "(Landroidx/navigation/NavController;Ljava/lang/Long;Landroidx/compose/runtime/Composer;I)V",
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
.method public static final MenuSetting(Landroidx/navigation/NavController;Ljava/lang/Long;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "idPsicologo"    # Ljava/lang/Long;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    const-string v0, "navController"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const v0, 0x15101b5a

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(MenuSetting)N(navController,idPsicologo)36@1468L65,36@1440L93,40@1555L34,41@1621L11,42@1668L10,46@1784L120,58@2183L1110,44@1684L1615:MenuSetting.kt#d6dcan"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p3, 0x6

    const/4 v5, 0x2

    if-nez v2, :cond_1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p3, 0x30

    const/16 v7, 0x20

    if-nez v2, :cond_3

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v8, 0x12

    const/4 v10, 0x1

    if-eq v2, v8, :cond_4

    move v2, v10

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v8, v1, 0x1

    invoke-interface {v15, v2, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting (MenuSetting.kt:34)"

    invoke-static {v0, v1, v2, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 37
    :cond_5
    const v0, 0x1176c69b

    const-string v2, "CC(remember):MenuSetting.kt#9igjgp"

    invoke-static {v15, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v1, 0x70

    if-ne v0, v7, :cond_6

    move v0, v10

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .local v0, "invalid\\1":Z
    :goto_3
    move-object v7, v15

    .local v7, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 92
    .local v8, "$i$f$cache\\1\\37":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it\\1":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 93
    .local v12, "$i$a$-let-ComposerKt$cache$1\\2\\92\\1":I
    const/4 v13, 0x0

    if-nez v0, :cond_8

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_7

    goto :goto_4

    .line 97
    :cond_7
    const/16 p2, 0x0

    goto :goto_5

    .line 94
    :cond_8
    :goto_4
    const/4 v14, 0x0

    .line 37
    .local v14, "$i$a$-cache-MenuSettingKt$MenuSetting$1\\3\\94\\0":I
    const/16 p2, 0x0

    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$MenuSetting$1$1;

    invoke-direct {v9, v3, v13}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$MenuSetting$1$1;-><init>(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 94
    .end local v14    # "$i$a$-cache-MenuSettingKt$MenuSetting$1\\3\\94\\0":I
    nop

    .line 95
    .local v9, "value\\2":Ljava/lang/Object;
    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 96
    move-object v11, v9

    .line 92
    .end local v9    # "value\\2":Ljava/lang/Object;
    .end local v11    # "it\\1":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1\\2\\92\\1":I
    :goto_5
    nop

    .line 37
    .end local v0    # "invalid\\1":Z
    .end local v7    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\1\\37":I
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v3, v11, v15, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 41
    const v0, 0x1176d15c

    invoke-static {v15, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\4":Z
    move-object v2, v15

    .local v2, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$f$cache\\4\\41":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\4":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 99
    .local v9, "$i$a$-let-ComposerKt$cache$1\\5\\98\\4":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v8, v11, :cond_9

    .line 100
    const/4 v11, 0x0

    .line 41
    .local v11, "$i$a$-cache-MenuSettingKt$MenuSetting$expanded$2\\6\\100\\0":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12, v13, v5, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 100
    .end local v11    # "$i$a$-cache-MenuSettingKt$MenuSetting$expanded$2\\6\\100\\0":I
    nop

    .line 101
    .local v5, "value\\5":Ljava/lang/Object;
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 102
    move-object v8, v5

    .end local v5    # "value\\5":Ljava/lang/Object;
    goto :goto_6

    .line 103
    :cond_9
    nop

    .line 98
    .end local v8    # "it\\4":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1\\5\\98\\4":I
    :goto_6
    nop

    .line 41
    .end local v0    # "invalid\\4":Z
    .end local v2    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\4\\41":I
    move-object v0, v8

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .local v0, "expanded$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 42
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v15, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    .line 43
    .local v2, "colors":Landroidx/compose/material3/ColorScheme;
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v15, v7}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v5

    .line 46
    .local v5, "typography":Landroidx/compose/material3/Typography;
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v7

    check-cast v16, Landroidx/compose/ui/Modifier;

    const/16 v7, 0x8

    .local v7, "$this$dp\\7":I
    const/4 v8, 0x0

    .line 104
    .local v8, "$i$f$getDp\\7\\46":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v17

    .line 46
    .end local v7    # "$this$dp\\7":I
    .end local v8    # "$i$f$getDp\\7\\46":I
    const/16 v24, 0x1e

    const/16 v25, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-static/range {v16 .. v25}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 47
    sget-object v7, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    .line 48
    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v8

    .line 49
    move-object/from16 v18, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v14

    sget v11, Landroidx/compose/material3/TopAppBarDefaults;->$stable:I

    shl-int/lit8 v19, v11, 0xf

    .line 47
    move v12, v10

    const-wide/16 v10, 0x0

    move/from16 v16, v12

    const-wide/16 v12, 0x0

    move/from16 v20, v16

    const-wide/16 v16, 0x0

    move/from16 v22, v20

    const/16 v20, 0x16

    move/from16 v6, v22

    invoke-virtual/range {v7 .. v20}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v13

    move-object/from16 v15, v18

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    sget-object v7, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$MenuSettingKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$MenuSettingKt;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$MenuSettingKt;->getLambda$-1908917986$app()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 46
    sget-object v8, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$MenuSettingKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$MenuSettingKt;

    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$MenuSettingKt;->getLambda$-1523055584$app()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .line 59
    move v8, v1

    move-object v1, v0

    .end local v0    # "expanded$delegate":Landroidx/compose/runtime/MutableState;
    .local v1, "expanded$delegate":Landroidx/compose/runtime/MutableState;
    .local v8, "$dirty":I
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda0;

    move/from16 v18, v8

    .end local v8    # "$dirty":I
    .local v18, "$dirty":I
    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/ColorScheme;Ljava/lang/Long;Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;)V

    const/16 v8, 0x36

    const v10, -0xd54beb7

    invoke-static {v10, v6, v0, v15, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function3;

    .line 47
    nop

    .line 45
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xdb6

    const/16 v17, 0xb0

    move-object/from16 v8, v21

    invoke-static/range {v7 .. v17}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v1    # "expanded$delegate":Landroidx/compose/runtime/MutableState;
    .end local v2    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v5    # "typography":Landroidx/compose/material3/Typography;
    goto :goto_7

    .line 30
    .end local v18    # "$dirty":I
    .local v1, "$dirty":I
    :cond_a
    move/from16 v18, v1

    .end local v1    # "$dirty":I
    .restart local v18    # "$dirty":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 91
    :cond_b
    :goto_7
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda1;

    move/from16 v6, p3

    invoke-direct {v1, v4, v3, v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavController;Ljava/lang/Long;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_8

    :cond_c
    move/from16 v6, p3

    :goto_8
    return-void
.end method

.method static final MenuSetting$lambda$16(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/ColorScheme;Ljava/lang/Long;Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 20
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p2, "$idPsicologo"    # Ljava/lang/Long;
    .param p3, "$navController"    # Landroidx/navigation/NavController;
    .param p4, "$typography"    # Landroidx/compose/material3/Typography;
    .param p5, "$this$TopAppBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v15, p6

    move/from16 v10, p7

    const-string v1, "$this$TopAppBar"

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C59@2218L24,59@2244L188,59@2197L235,69@2532L20,70@2567L716,67@2446L837:MenuSetting.kt#d6dcan"

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

    const-string v2, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous> (MenuSetting.kt:59)"

    const v3, -0xd54beb7

    invoke-static {v3, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 60
    :cond_1
    const v1, -0xb1fe87f

    const-string v13, "CC(remember):MenuSetting.kt#9igjgp"

    invoke-static {v15, v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\1":Z
    move-object/from16 v2, p6

    .local v2, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$f$cache\\1\\60":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 121
    .local v5, "$i$a$-let-ComposerKt$cache$1\\2\\120\\1":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 122
    const/4 v6, 0x0

    .line 60
    .local v6, "$i$a$-cache-MenuSettingKt$MenuSetting$2$1\\3\\122\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 122
    .end local v6    # "$i$a$-cache-MenuSettingKt$MenuSetting$2$1\\3\\122\\0":I
    nop

    .line 123
    .local v7, "value\\2":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    move-object v4, v7

    .end local v7    # "value\\2":Ljava/lang/Object;
    goto :goto_1

    .line 125
    :cond_2
    nop

    .line 120
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\2\\120\\1":I
    :goto_1
    nop

    .line 60
    .end local v1    # "invalid\\1":Z
    .end local v2    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\1\\60":I
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda7;

    move-object/from16 v14, p1

    invoke-direct {v2, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/material3/ColorScheme;)V

    const v3, 0x909f44c

    const/16 v4, 0x36

    invoke-static {v3, v12, v2, v15, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const v8, 0x30006

    const/16 v9, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v7, v5

    const/4 v5, 0x0

    move-object/from16 v19, v15

    move v15, v7

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 69
    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$2(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    .line 70
    const v2, -0xb1fc143

    invoke-static {v7, v2, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\4":Z
    move-object/from16 v3, p6

    .local v3, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 126
    .local v4, "$i$f$cache\\4\\70":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\4":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$a$-let-ComposerKt$cache$1\\5\\126\\4":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_3

    .line 128
    const/4 v8, 0x0

    .line 70
    .local v8, "$i$a$-cache-MenuSettingKt$MenuSetting$2$3\\6\\128\\0":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda8;

    invoke-direct {v9, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 128
    .end local v8    # "$i$a$-cache-MenuSettingKt$MenuSetting$2$3\\6\\128\\0":I
    nop

    .line 129
    .local v9, "value\\5":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 130
    move-object v5, v9

    .end local v9    # "value\\5":Ljava/lang/Object;
    goto :goto_2

    .line 131
    :cond_3
    nop

    .line 126
    .end local v5    # "it\\4":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1\\5\\126\\4":I
    :goto_2
    nop

    .line 70
    .end local v2    # "invalid\\4":Z
    .end local v3    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\4\\70":I
    move-object v2, v5

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 71
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda9;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Long;Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/MutableState;)V

    const v8, -0x59588a7c

    invoke-static {v8, v12, v3, v7, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 68
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

    move-object/from16 v15, p6

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 59
    :cond_4
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 89
    :cond_5
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final MenuSetting$lambda$16$lambda$15(Ljava/lang/Long;Landroidx/navigation/NavController;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 18
    .param p0, "$idPsicologo"    # Ljava/lang/Long;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$typography"    # Landroidx/compose/material3/Typography;
    .param p3, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p4, "$this$DropdownMenu"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v13, p5

    move/from16 v4, p6

    const-string v5, "$this$DropdownMenu"

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "C72@2630L49,73@2711L244,71@2585L388,81@3036L51,82@3119L132,80@2991L278:MenuSetting.kt#d6dcan"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v4, 0x11

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-eq v5, v7, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v7, v4, 0x1

    invoke-interface {v13, v5, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous> (MenuSetting.kt:71)"

    const v9, -0x59588a7c

    invoke-static {v9, v4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 73
    :cond_1
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/Typography;)V

    const v7, 0x4d709154    # 2.52253504E8f

    const/16 v9, 0x36

    invoke-static {v7, v8, v5, v13, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 74
    const v7, -0x655fc888

    const-string v10, "CC(remember):MenuSetting.kt#9igjgp"

    invoke-static {v13, v7, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v7, v11

    .local v7, "invalid\\1":Z
    move-object/from16 v11, p5

    .local v11, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 108
    .local v12, "$i$f$cache\\1\\74":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it\\1":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 109
    .local v15, "$i$a$-let-ComposerKt$cache$1\\2\\108\\1":I
    if-nez v7, :cond_3

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v14, v8, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 74
    .local v8, "$i$a$-cache-MenuSettingKt$MenuSetting$2$4$2\\3\\110\\0":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0, v1, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Long;Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)V

    .line 110
    .end local v8    # "$i$a$-cache-MenuSettingKt$MenuSetting$2$4$2\\3\\110\\0":I
    nop

    .line 111
    .local v9, "value\\2":Ljava/lang/Object;
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 112
    move-object v14, v9

    .line 108
    .end local v9    # "value\\2":Ljava/lang/Object;
    .end local v14    # "it\\1":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1\\2\\108\\1":I
    :goto_2
    nop

    .line 74
    .end local v7    # "invalid\\1":Z
    .end local v11    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache\\1\\74":I
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 72
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object v4, v5

    move-object v5, v14

    const/4 v14, 0x6

    move-object/from16 v17, v15

    const/16 v15, 0x1fc

    move-object/from16 v0, v17

    const/4 v1, 0x1

    const/16 v3, 0x36

    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 82
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/Typography;)V

    const v5, -0x55a08b5

    invoke-static {v5, v1, v4, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 83
    const v1, -0x655f95f8

    invoke-static {v13, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 v1, p1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid\\4":Z
    move-object/from16 v3, p5

    .local v3, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 114
    .local v5, "$i$f$cache\\4\\83":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\4":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 115
    .local v7, "$i$a$-let-ComposerKt$cache$1\\5\\114\\4":I
    if-nez v0, :cond_5

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_4

    goto :goto_3

    .line 119
    :cond_4
    move-object/from16 v10, p3

    goto :goto_4

    .line 116
    :cond_5
    :goto_3
    const/4 v8, 0x0

    .line 83
    .local v8, "$i$a$-cache-MenuSettingKt$MenuSetting$2$4$4\\6\\116\\0":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda5;

    move-object/from16 v10, p3

    invoke-direct {v9, v1, v10}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)V

    .line 116
    .end local v8    # "$i$a$-cache-MenuSettingKt$MenuSetting$2$4$4\\6\\116\\0":I
    nop

    .line 117
    .local v9, "value\\5":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    move-object v6, v9

    .line 114
    .end local v6    # "it\\4":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\5\\114\\4":I
    .end local v9    # "value\\5":Ljava/lang/Object;
    :goto_4
    nop

    .line 83
    .end local v0    # "invalid\\4":Z
    .end local v3    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\4\\83":I
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 81
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x6

    const/16 v15, 0x1fc

    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 71
    :cond_6
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 88
    :cond_7
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuSetting$lambda$16$lambda$15$lambda$11$lambda$10(Ljava/lang/Long;Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 7
    .param p0, "$idPsicologo"    # Ljava/lang/Long;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 75
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idPsicologo en MenuSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;

    invoke-virtual {v0, p0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;->createRoute(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .end local p1    # "$navController":Landroidx/navigation/NavController;
    .local v1, "$navController":Landroidx/navigation/NavController;
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final MenuSetting$lambda$16$lambda$15$lambda$12(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C81@3038L47:MenuSetting.kt#d6dcan"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous>.<anonymous> (MenuSetting.kt:81)"

    const v4, -0x55a08b5

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 82
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/16 v23, 0x0

    const v24, 0xfffe

    const-string v0, "Sign out"

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

.method static final MenuSetting$lambda$16$lambda$15$lambda$14$lambda$13(Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 7
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    .line 85
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

    .line 86
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final MenuSetting$lambda$16$lambda$15$lambda$9(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C72@2632L45:MenuSetting.kt#d6dcan"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous>.<anonymous> (MenuSetting.kt:72)"

    const v4, 0x4d709154    # 2.52253504E8f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/16 v23, 0x0

    const v24, 0xfffe

    const-string v0, "Perfil"

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

.method static final MenuSetting$lambda$16$lambda$5$lambda$4(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 60
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$2(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuSetting$lambda$16$lambda$6(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C60@2262L156:MenuSetting.kt#d6dcan"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting.<anonymous>.<anonymous> (MenuSetting.kt:60)"

    const v2, 0x909f44c

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 62
    :cond_1
    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/MenuKt;->getMenu(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    .line 63
    nop

    .line 64
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v4

    .line 61
    const-string v2, "Menu"

    const/4 v3, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x4

    move-object v6, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 60
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v6, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 66
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final MenuSetting$lambda$16$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$expanded$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final MenuSetting$lambda$17(Landroidx/navigation/NavController;Ljava/lang/Long;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting(Landroidx/navigation/NavController;Ljava/lang/Long;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final MenuSetting$lambda$2(Landroidx/compose/runtime/MutableState;)Z
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

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$f$getValue\\1\\41":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\41":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 41
    return v0
.end method

.method private static final MenuSetting$lambda$3(Landroidx/compose/runtime/MutableState;Z)V
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

    .line 41
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

    .line 106
    .local v4, "$i$f$setValue\\1\\41":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 107
    nop

    .line 41
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\41":I
    return-void
.end method
