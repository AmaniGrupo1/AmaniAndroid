.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;
.super Ljava/lang/Object;
.source "Principal.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrincipal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Principal.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 9 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n*L\n1#1,158:1\n75#2:159\n85#3:160\n117#3,2:161\n122#4:163\n122#4:192\n122#4:193\n122#4:194\n122#4:195\n122#4:196\n122#4:197\n122#4:204\n122#4:211\n122#4:218\n122#4:251\n122#4:256\n122#4:257\n122#4:258\n122#4:259\n87#5,6:164\n94#5:269\n81#6,6:170\n88#6,6:185\n81#6,6:229\n88#6,6:244\n96#6:254\n96#6:268\n391#7,9:176\n400#7:191\n391#7,9:235\n400#7:250\n401#7,2:252\n401#7,2:266\n1128#8,6:198\n1128#8,6:205\n1128#8,6:212\n1128#8,6:260\n70#9:219\n67#9,9:220\n77#9:255\n*S KotlinDebug\n*F\n+ 1 Principal.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt\n*L\n53#1:159\n108#1:160\n108#1:161,2\n63#1:163\n71#1:192\n76#1:193\n83#1:194\n91#1:195\n92#1:196\n96#1:197\n107#1:204\n113#1:211\n117#1:218\n122#1:251\n127#1:256\n131#1:257\n132#1:258\n136#1:259\n61#1:164,6\n61#1:269\n61#1:170,6\n61#1:185,6\n110#1:229,6\n110#1:244,6\n110#1:254\n61#1:268\n61#1:176,9\n61#1:191\n110#1:235,9\n110#1:250\n110#1:252,2\n61#1:266,2\n93#1:198,6\n108#1:205,6\n114#1:212,6\n133#1:260,6\n110#1:219\n110#1:220,9\n110#1:255\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u001a\r\u0010\u0005\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u008e\u0002"
    }
    d2 = {
        "Principal",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V",
        "PrincipalPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "app",
        "esta",
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
.method public static final Principal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "navController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const v2, 0x2ffdf5b

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(Principal)N(navController)51@2158L11,52@2209L7,53@2252L10,56@2295L52,59@2354L3195,55@2268L3281:Principal.kt#8o7o96"

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

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal (Principal.kt:50)"

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 52
    :cond_3
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v15, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    .line 53
    .local v2, "colors":Landroidx/compose/material3/ColorScheme;
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->getLocalAmaniColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_\\1":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x6

    .local v5, "$changed\\1":I
    move-object v7, v15

    .local v7, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 159
    .local v8, "$i$f$getCurrent\\1\\53":I
    const v9, 0x789c5f52

    const-string v10, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 53
    .end local v4    # "this_\\1":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$changed\\1":I
    .end local v7    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$getCurrent\\1\\53":I
    move-object v4, v9

    check-cast v4, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    .line 54
    .local v4, "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v15, v7}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v5

    .line 57
    .local v5, "typography":Landroidx/compose/material3/Typography;
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavController;)V

    const v8, -0x7e96c1e1

    const/16 v9, 0x36

    invoke-static {v8, v6, v7, v15, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 60
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda6;

    invoke-direct {v8, v5, v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/ColorScheme;)V

    const v10, 0x5691306a

    invoke-static {v10, v6, v8, v15, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function3;

    .line 56
    move v6, v3

    .end local v3    # "$dirty":I
    .local v6, "$dirty":I
    const/4 v3, 0x0

    move-object v8, v5

    .end local v5    # "typography":Landroidx/compose/material3/Typography;
    .local v8, "typography":Landroidx/compose/material3/Typography;
    const/4 v5, 0x0

    move v9, v6

    .end local v6    # "$dirty":I
    .local v9, "$dirty":I
    const/4 v6, 0x0

    move-object v10, v4

    move-object v4, v7

    .end local v4    # "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .local v10, "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    const/4 v7, 0x0

    move-object v11, v8

    .end local v8    # "typography":Landroidx/compose/material3/Typography;
    .local v11, "typography":Landroidx/compose/material3/Typography;
    const/4 v8, 0x0

    move v12, v9

    move-object v13, v10

    .end local v9    # "$dirty":I
    .end local v10    # "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .local v12, "$dirty":I
    .local v13, "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    const-wide/16 v9, 0x0

    move-object/from16 v17, v11

    move/from16 v16, v12

    .end local v11    # "typography":Landroidx/compose/material3/Typography;
    .end local v12    # "$dirty":I
    .local v16, "$dirty":I
    .local v17, "typography":Landroidx/compose/material3/Typography;
    const-wide/16 v11, 0x0

    move-object/from16 v18, v13

    .end local v13    # "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .local v18, "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    const/4 v13, 0x0

    move/from16 v19, v16

    .end local v16    # "$dirty":I
    .local v19, "$dirty":I
    const v16, 0x30000030

    move-object/from16 v20, v17

    .end local v17    # "typography":Landroidx/compose/material3/Typography;
    .local v20, "typography":Landroidx/compose/material3/Typography;
    const/16 v17, 0x1fd

    invoke-static/range {v3 .. v17}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v2    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v18    # "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .end local v20    # "typography":Landroidx/compose/material3/Typography;
    goto :goto_2

    .line 50
    .end local v19    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_4
    move/from16 v19, v3

    .end local v3    # "$dirty":I
    .restart local v19    # "$dirty":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 149
    :cond_5
    :goto_2
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method static final Principal$lambda$0(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C57@2309L28:Principal.kt#8o7o96"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous> (Principal.kt:57)"

    const v3, -0x7e96c1e1

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 58
    :cond_1
    invoke-static {p0, p1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/MenuPrincipalKt;->MenuPrincipal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 57
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 59
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final Principal$lambda$14(Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 88
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$amaniColors"    # Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "innerPadding"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(innerPadding)60@2380L3163:Principal.kt#8o7o96"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p5

    .local v3, "$dirty":I
    and-int/lit8 v4, p5, 0x6

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

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v6, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v4, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous> (Principal.kt:60)"

    const v9, 0x5691306a

    invoke-static {v9, v3, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 62
    :cond_3
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 63
    const/16 v6, 0x10

    .local v6, "$this$dp\\1":I
    const/4 v9, 0x0

    .line 163
    .local v9, "$i$f$getDp\\1\\63":I
    int-to-float v10, v6

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 63
    .end local v6    # "$this$dp\\1":I
    .end local v9    # "$i$f$getDp\\1\\63":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 64
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 65
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 66
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v11

    .line 64
    nop

    .line 66
    check-cast v11, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 65
    nop

    .line 61
    const/16 v12, 0x1b0

    .local v10, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v12, "$changed\\2":I
    move-object/from16 v13, p4

    .local v4, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v11, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v13, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 164
    .local v14, "$i$f$Column\\2\\61":I
    const v15, 0x4ff7456f

    const-string v5, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v13, v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 165
    shr-int/lit8 v5, v12, 0x3

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v15, v12, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v5, v15

    invoke-static {v11, v10, v13, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .line 169
    .local v5, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 168
    shl-int/lit8 v15, v12, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 166
    move-object/from16 v17, v4

    .local v17, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object/from16 v18, v13

    .local v18, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v19, v5

    .local v15, "$changed\\3":I
    .local v19, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v20, 0x0

    .line 170
    .local v20, "$i$f$Layout\\3\\166":I
    const v6, -0x451e1427

    const-string v8, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v9, v18

    .end local v18    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v9, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v6, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 171
    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->hashCode(J)I

    move-result v18

    .line 172
    .local v18, "compositeKeyHash\\3":I
    move/from16 v21, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 173
    .local v7, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v6, v17

    .end local v17    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v6, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 175
    .local v1, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    shl-int/lit8 v2, v15, 0x6

    and-int/lit16 v2, v2, 0x380

    move/from16 v23, v2

    const/4 v2, 0x6

    or-int/lit8 v23, v23, 0x6

    .line 174
    move-object/from16 v24, v17

    .local v24, "factory\\4":Lkotlin/jvm/functions/Function0;
    move-object/from16 v17, v9

    .local v17, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v23, "$changed\\4":I
    const/16 v25, 0x0

    .line 176
    .local v25, "$i$f$ReusableComposeNode\\4\\174":I
    move/from16 v26, v2

    const v2, -0x20f7d59c

    move/from16 v27, v3

    .end local v3    # "$dirty":I
    .local v27, "$dirty":I
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v28, v4

    move-object/from16 v4, v17

    .end local v17    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v28, "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 177
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 178
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 179
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    move-object/from16 v2, v24

    .end local v24    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 182
    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v24    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v2, v24

    .end local v24    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 184
    :goto_2
    move-object/from16 v24, v2

    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v24    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 185
    .local v29, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\184\\3":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v31, v4

    .end local v4    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v31, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    move-object/from16 v30, v5

    move-object/from16 v5, v19

    .end local v19    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v5, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v30, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v32, v5

    .end local v5    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v32, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 188
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 189
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    nop

    .line 184
    .end local v2    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\184\\3":I
    nop

    .line 191
    shr-int/lit8 v2, v23, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\6":I
    move-object/from16 v4, v31

    .local v4, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$a$-Layout-ColumnKt$Column$1\\6\\191\\2":I
    move-object/from16 v19, v1

    .end local v1    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v19, "materialized\\3":Landroidx/compose/ui/Modifier;
    const v1, 0x7cc0ae6e

    move/from16 v29, v2

    .end local v2    # "$changed\\6":I
    .local v29, "$changed\\6":I
    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v12, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\7":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$Principal_u24lambda_u2414_u24lambda_u2413\\7":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v54, v4

    .local v54, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v58, 0x0

    .line 68
    .local v58, "$i$a$-Column-PrincipalKt$Principal$2$1\\7\\167\\0":I
    move-object/from16 v59, v1

    .end local v1    # "$this$Principal_u24lambda_u2414_u24lambda_u2413\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v59, "$this$Principal_u24lambda_u2414_u24lambda_u2413\\7":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x53eca609

    move/from16 v60, v2

    .end local v2    # "$changed\\7":I
    .local v60, "$changed\\7":I
    const-string v2, "C67@2647L145,72@2805L287,79@3105L319,96@3764L137,92@3631L20,100@3916L150,87@3438L628,106@4079L41,107@4145L34,126@4834L41,136@5245L137,132@5081L51,140@5397L136,127@4888L645:Principal.kt#8o7o96"

    move-object/from16 v61, v4

    .end local v54    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v61, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getDisplayLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v53

    .line 71
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x10

    .local v2, "$this$dp\\8":I
    const/16 v33, 0x0

    .line 192
    .local v33, "$i$f$getDp\\8\\71":I
    nop

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v54    # "$composer\\7":Landroidx/compose/runtime/Composer;
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 71
    .end local v2    # "$this$dp\\8":I
    .end local v33    # "$i$f$getDp\\8\\71":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v34

    .line 69
    nop

    .line 71
    nop

    .line 70
    nop

    .line 68
    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v55, 0x36

    const/16 v56, 0x0

    const v57, 0xfffc

    const-string v33, "AMANI"

    invoke-static/range {v33 .. v57}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 75
    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v53

    .line 76
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x10

    .local v2, "$this$dp\\9":I
    const/4 v4, 0x0

    .line 193
    .local v4, "$i$f$getDp\\9\\76":I
    move/from16 v33, v4

    .end local v4    # "$i$f$getDp\\9\\76":I
    .local v33, "$i$f$getDp\\9\\76":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 76
    .end local v2    # "$this$dp\\9":I
    .end local v33    # "$i$f$getDp\\9\\76":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 77
    move/from16 v62, v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v5    # "$i$a$-Layout-ColumnKt$Column$1\\6\\191\\2":I
    .local v62, "$i$a$-Layout-ColumnKt$Column$1\\6\\191\\2":I
    invoke-static {v1, v2, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    .line 78
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v1

    .line 74
    nop

    .line 77
    nop

    .line 78
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v45

    .line 75
    nop

    .line 73
    const v57, 0xfdfc

    const-string v33, "Aqu\u00ed comienza tu camino de autoconocimiento,bienestar y paz interior"

    invoke-static/range {v33 .. v57}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 82
    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v53

    .line 83
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x10

    .local v2, "$this$dp\\10":I
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$f$getDp\\10\\83":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 83
    .end local v2    # "$this$dp\\10":I
    .end local v4    # "$i$f$getDp\\10\\83":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 84
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    .line 85
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v1

    .line 81
    nop

    .line 84
    nop

    .line 85
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v45

    .line 82
    nop

    .line 80
    const-string v33, "Cada paso que das hacia tu bienestar, por peque\u00f1o que parezca, es un acto de valent\u00eda y amor propio."

    invoke-static/range {v33 .. v57}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 89
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 90
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 91
    const/16 v2, 0x32

    .local v2, "$this$dp\\11":I
    const/4 v4, 0x0

    .line 195
    .local v4, "$i$f$getDp\\11\\91":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 91
    .end local v2    # "$this$dp\\11":I
    .end local v4    # "$i$f$getDp\\11\\91":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 92
    const/16 v2, 0x32

    .local v2, "$this$dp\\12":I
    const/4 v4, 0x0

    .line 196
    .local v4, "$i$f$getDp\\12\\92":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 92
    .end local v2    # "$this$dp\\12":I
    .end local v4    # "$i$f$getDp\\12\\92":I
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    .line 96
    const/4 v4, 0x2

    .local v4, "$this$dp\\13":I
    const/4 v5, 0x0

    .line 197
    .local v5, "$i$f$getDp\\13\\96":I
    move-object/from16 v45, v1

    int-to-float v1, v4

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 96
    .end local v4    # "$this$dp\\13":I
    .end local v5    # "$i$f$getDp\\13\\96":I
    invoke-virtual/range {p1 .. p1}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getButtonBorder-0d7_KjU()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v1

    .line 97
    sget-object v33, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v34

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v36

    sget v4, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v43, v4, 0xc

    .line 97
    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v44, 0xc

    move-object/from16 v42, v54

    .end local v54    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v33 .. v44}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v37

    .line 93
    move-object/from16 v4, v42

    .end local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\7":Landroidx/compose/runtime/Composer;
    const v5, 0x3c83f108

    move-object/from16 v39, v1

    const-string v1, "CC(remember):Principal.kt#9igjgp"

    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid\\14":Z
    move-object/from16 v33, v4

    .local v33, "$this$cache\\14":Landroidx/compose/runtime/Composer;
    const/16 v34, 0x0

    .line 198
    .local v34, "$i$f$cache\\14\\93":I
    move-object/from16 v35, v2

    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it\\14":Ljava/lang/Object;
    const/16 v36, 0x0

    .line 199
    .local v36, "$i$a$-let-ComposerKt$cache$1\\15\\198\\14":I
    sget-object v38, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v40, v5

    .end local v5    # "invalid\\14":Z
    .local v40, "invalid\\14":Z
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_6

    .line 200
    const/4 v5, 0x0

    .local v5, "$i$a$-cache-PrincipalKt$Principal$2$1$1\\16\\200\\7":I
    new-instance v38, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda0;

    invoke-direct/range {v38 .. v38}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda0;-><init>()V

    .end local v5    # "$i$a$-cache-PrincipalKt$Principal$2$1$1\\16\\200\\7":I
    move-object/from16 v5, v38

    .line 201
    .local v5, "value\\15":Ljava/lang/Object;
    move-object/from16 v38, v2

    move-object/from16 v2, v33

    .end local v33    # "$this$cache\\14":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache\\14":Landroidx/compose/runtime/Composer;
    .local v38, "it\\14":Ljava/lang/Object;
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 202
    nop

    .end local v5    # "value\\15":Ljava/lang/Object;
    goto :goto_3

    .line 203
    .end local v38    # "it\\14":Ljava/lang/Object;
    .local v2, "it\\14":Ljava/lang/Object;
    .restart local v33    # "$this$cache\\14":Landroidx/compose/runtime/Composer;
    :cond_6
    move-object/from16 v38, v2

    move-object/from16 v2, v33

    .end local v33    # "$this$cache\\14":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache\\14":Landroidx/compose/runtime/Composer;
    .restart local v38    # "it\\14":Ljava/lang/Object;
    move-object/from16 v5, v38

    .line 198
    .end local v36    # "$i$a$-let-ComposerKt$cache$1\\15\\198\\14":I
    .end local v38    # "it\\14":Ljava/lang/Object;
    :goto_3
    nop

    .line 93
    .end local v2    # "$this$cache\\14":Landroidx/compose/runtime/Composer;
    .end local v34    # "$i$f$cache\\14\\93":I
    .end local v40    # "invalid\\14":Z
    move-object/from16 v33, v5

    check-cast v33, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 91
    nop

    .line 92
    move-object/from16 v36, v35

    check-cast v36, Landroidx/compose/ui/graphics/Shape;

    .line 97
    nop

    .line 96
    nop

    .line 101
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/Typography;)V

    const v5, 0x75d4ab44

    move-object/from16 v46, v6

    .end local v6    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v46, "modifier\\3":Landroidx/compose/ui/Modifier;
    const/16 v6, 0x36

    move-object/from16 v47, v7

    const/4 v7, 0x1

    .end local v7    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v47, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v5, v7, v2, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Lkotlin/jvm/functions/Function3;

    .line 88
    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v44, 0x30000036

    move-object/from16 v34, v45

    const/16 v45, 0x1a4

    move-object/from16 v43, v4

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v43, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v33 .. v45}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 107
    .end local v43    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x10

    .local v5, "$this$dp\\17":I
    const/4 v7, 0x0

    .line 204
    .local v7, "$i$f$getDp\\17\\107":I
    int-to-float v6, v5

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 107
    .end local v5    # "$this$dp\\17":I
    .end local v7    # "$i$f$getDp\\17\\107":I
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move/from16 v5, v26

    invoke-static {v2, v4, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 108
    const v2, 0x3c843156

    invoke-static {v4, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\18":Z
    move-object v5, v4

    .local v5, "$this$cache\\18":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 205
    .local v6, "$i$f$cache\\18\\108":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it\\18":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 206
    .local v33, "$i$a$-let-ComposerKt$cache$1\\19\\205\\18":I
    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v35, v2

    .end local v2    # "invalid\\18":Z
    .local v35, "invalid\\18":Z
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v7, v2, :cond_7

    .line 207
    const/4 v2, 0x0

    .line 108
    .local v2, "$i$a$-cache-PrincipalKt$Principal$2$1$esta$2\\20\\207\\7":I
    move/from16 v34, v2

    .end local v2    # "$i$a$-cache-PrincipalKt$Principal$2$1$esta$2\\20\\207\\7":I
    .local v34, "$i$a$-cache-PrincipalKt$Principal$2$1$esta$2\\20\\207\\7":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move/from16 v36, v6

    move-object/from16 v16, v7

    const/4 v6, 0x2

    const/4 v7, 0x0

    .end local v6    # "$i$f$cache\\18\\108":I
    .end local v7    # "it\\18":Ljava/lang/Object;
    .local v16, "it\\18":Ljava/lang/Object;
    .local v36, "$i$f$cache\\18\\108":I
    invoke-static {v2, v7, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 207
    .end local v34    # "$i$a$-cache-PrincipalKt$Principal$2$1$esta$2\\20\\207\\7":I
    nop

    .line 208
    .local v2, "value\\19":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    move-object v7, v2

    .end local v2    # "value\\19":Ljava/lang/Object;
    goto :goto_4

    .line 210
    .end local v16    # "it\\18":Ljava/lang/Object;
    .end local v36    # "$i$f$cache\\18\\108":I
    .restart local v6    # "$i$f$cache\\18\\108":I
    .restart local v7    # "it\\18":Ljava/lang/Object;
    :cond_7
    move/from16 v36, v6

    move-object/from16 v16, v7

    .line 205
    .end local v6    # "$i$f$cache\\18\\108":I
    .end local v7    # "it\\18":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\19\\205\\18":I
    .restart local v36    # "$i$f$cache\\18\\108":I
    :goto_4
    nop

    .line 108
    .end local v5    # "$this$cache\\18":Landroidx/compose/runtime/Composer;
    .end local v35    # "invalid\\18":Z
    .end local v36    # "$i$f$cache\\18\\108":I
    move-object v2, v7

    check-cast v2, Landroidx/compose/runtime/MutableState;

    .local v2, "esta$delegate\\7":Landroidx/compose/runtime/MutableState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 109
    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->Principal$lambda$14$lambda$13$lambda$5(Landroidx/compose/runtime/MutableState;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x54031d23

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "113@4380L68,109@4220L587"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 111
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 112
    move-object/from16 v16, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    .end local v9    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v16, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v6, v9, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 113
    const/16 v6, 0x10

    .local v6, "$this$dp\\21":I
    const/4 v7, 0x0

    .line 211
    .local v7, "$i$f$getDp\\21\\113":I
    int-to-float v9, v6

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 113
    .end local v6    # "$this$dp\\21":I
    .end local v7    # "$i$f$getDp\\21\\113":I
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v33

    .line 114
    const v5, 0x3c844ed8

    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid\\22":Z
    move-object v6, v4

    .local v6, "$this$cache\\22":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 212
    .local v7, "$i$f$cache\\22\\114":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\22":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 213
    .local v34, "$i$a$-let-ComposerKt$cache$1\\23\\212\\22":I
    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v36, v5

    .end local v5    # "invalid\\22":Z
    .local v36, "invalid\\22":Z
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v9, v5, :cond_8

    .line 214
    const/4 v5, 0x0

    .line 114
    .local v5, "$i$a$-cache-PrincipalKt$Principal$2$1$3\\24\\214\\7":I
    move/from16 v35, v5

    .end local v5    # "$i$a$-cache-PrincipalKt$Principal$2$1$3\\24\\214\\7":I
    .local v35, "$i$a$-cache-PrincipalKt$Principal$2$1$3\\24\\214\\7":I
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 214
    .end local v35    # "$i$a$-cache-PrincipalKt$Principal$2$1$3\\24\\214\\7":I
    nop

    .line 215
    .local v5, "value\\23":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    move-object v9, v5

    .end local v5    # "value\\23":Ljava/lang/Object;
    goto :goto_5

    .line 217
    :cond_8
    nop

    .line 212
    .end local v9    # "it\\22":Ljava/lang/Object;
    .end local v34    # "$i$a$-let-ComposerKt$cache$1\\23\\212\\22":I
    :goto_5
    nop

    .line 114
    .end local v6    # "$this$cache\\22":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\22\\114":I
    .end local v36    # "invalid\\22":Z
    move-object/from16 v38, v9

    check-cast v38, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v39, 0xf

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v33 .. v40}, Landroidx/compose/foundation/ClickableKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 117
    const/4 v6, 0x2

    .local v6, "$this$dp\\25":I
    const/4 v7, 0x0

    .line 218
    .local v7, "$i$f$getDp\\25\\117":I
    int-to-float v9, v6

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 117
    .end local v6    # "$this$dp\\25":I
    .end local v7    # "$i$f$getDp\\25\\117":I
    move-object v7, v10

    .end local v10    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v7, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v9

    move-object/from16 v48, v7

    .end local v7    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v48, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    const/16 v7, 0x8

    .local v7, "$this$dp\\26":I
    const/16 v33, 0x0

    .line 218
    .local v33, "$i$f$getDp\\26\\117":I
    move-object/from16 v49, v11

    .end local v11    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v49, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    int-to-float v11, v7

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 117
    .end local v7    # "$this$dp\\26":I
    .end local v33    # "$i$f$getDp\\26\\117":I
    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v5, v6, v9, v10, v7}, Landroidx/compose/foundation/BorderKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 110
    nop

    .local v5, "modifier\\27":Landroidx/compose/ui/Modifier;
    move-object v6, v4

    .local v6, "$composer\\27":Landroidx/compose/runtime/Composer;
    move/from16 v7, v21

    .local v7, "$changed\\27":I
    const/4 v9, 0x0

    .line 219
    .local v9, "$i$f$Box\\27\\110":I
    const v10, 0x3e277f0a

    const-string v11, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo"

    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 220
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v10

    .line 221
    .local v10, "contentAlignment\\27":Landroidx/compose/ui/Alignment;
    const/4 v11, 0x0

    .line 224
    .local v11, "propagateMinConstraints\\27":Z
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v33

    .line 228
    .local v33, "measurePolicy\\27":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 227
    shl-int/lit8 v34, v7, 0x3

    and-int/lit8 v34, v34, 0x70

    .line 225
    move-object/from16 v35, v33

    .local v35, "measurePolicy\\28":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v36, v6

    .local v34, "$changed\\28":I
    .local v36, "$composer\\28":Landroidx/compose/runtime/Composer;
    move-object/from16 v37, v5

    .local v37, "modifier\\28":Landroidx/compose/ui/Modifier;
    const/16 v38, 0x0

    .line 229
    .local v38, "$i$f$Layout\\28\\225":I
    move-object/from16 v39, v5

    move-object/from16 v22, v6

    move-object/from16 v5, v36

    const v6, -0x451e1427

    .end local v6    # "$composer\\27":Landroidx/compose/runtime/Composer;
    .end local v36    # "$composer\\28":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\28":Landroidx/compose/runtime/Composer;
    .local v22, "$composer\\27":Landroidx/compose/runtime/Composer;
    .local v39, "modifier\\27":Landroidx/compose/ui/Modifier;
    invoke-static {v5, v6, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 230
    move/from16 v6, v21

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    .line 231
    .local v6, "compositeKeyHash\\28":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 232
    .local v8, "localMap\\28":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v21, v6

    move/from16 v36, v7

    move-object/from16 v6, v37

    .end local v7    # "$changed\\27":I
    .end local v37    # "modifier\\28":Landroidx/compose/ui/Modifier;
    .local v6, "modifier\\28":Landroidx/compose/ui/Modifier;
    .local v21, "compositeKeyHash\\28":I
    .local v36, "$changed\\27":I
    invoke-static {v5, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 234
    .local v7, "materialized\\28":Landroidx/compose/ui/Modifier;
    sget-object v37, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v37

    move-object/from16 v40, v5

    .end local v5    # "$composer\\28":Landroidx/compose/runtime/Composer;
    .local v40, "$composer\\28":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v5, v34, 0x6

    and-int/lit16 v5, v5, 0x380

    const/16 v26, 0x6

    or-int/lit8 v5, v5, 0x6

    .line 233
    move-object/from16 v41, v37

    .local v41, "factory\\29":Lkotlin/jvm/functions/Function0;
    move-object/from16 v37, v40

    .local v5, "$changed\\29":I
    .local v37, "$composer\\29":Landroidx/compose/runtime/Composer;
    const/16 v42, 0x0

    .line 235
    .local v42, "$i$f$ReusableComposeNode\\29\\233":I
    move/from16 v43, v5

    move-object/from16 v17, v6

    move-object/from16 v5, v37

    const v6, -0x20f7d59c

    .end local v6    # "modifier\\28":Landroidx/compose/ui/Modifier;
    .end local v37    # "$composer\\29":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\29":Landroidx/compose/runtime/Composer;
    .local v17, "modifier\\28":Landroidx/compose/ui/Modifier;
    .local v43, "$changed\\29":I
    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 236
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 237
    :cond_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 238
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 239
    move-object/from16 v3, v41

    .end local v41    # "factory\\29":Lkotlin/jvm/functions/Function0;
    .local v3, "factory\\29":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 241
    .end local v3    # "factory\\29":Lkotlin/jvm/functions/Function0;
    .restart local v41    # "factory\\29":Lkotlin/jvm/functions/Function0;
    :cond_a
    move-object/from16 v3, v41

    .end local v41    # "factory\\29":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory\\29":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 243
    :goto_6
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240\\30":Landroidx/compose/runtime/Composer;
    const/16 v37, 0x0

    .line 244
    .local v37, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\30\\243\\28":I
    sget-object v41, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v44, v3

    .end local v3    # "factory\\29":Lkotlin/jvm/functions/Function0;
    .local v44, "factory\\29":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    move-object/from16 v41, v5

    move-object/from16 v5, v35

    .end local v35    # "measurePolicy\\28":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v5, "measurePolicy\\28":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v41, "$composer\\29":Landroidx/compose/runtime/Composer;
    invoke-static {v6, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 246
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v35, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v50, v5

    .end local v5    # "measurePolicy\\28":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v50, "measurePolicy\\28":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 248
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    nop

    .line 243
    .end local v6    # "$this$Layout_u24lambda_u240\\30":Landroidx/compose/runtime/Composer;
    .end local v37    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\30\\243\\28":I
    nop

    .line 250
    shr-int/lit8 v3, v43, 0x6

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed\\31":I
    move-object/from16 v5, v41

    .local v5, "$composer\\31":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 226
    .local v6, "$i$a$-Layout-BoxKt$Box$1\\31\\250\\27":I
    move/from16 v35, v3

    .end local v3    # "$changed\\31":I
    .local v35, "$changed\\31":I
    const v3, 0x6d423196

    move/from16 v37, v6

    .end local v6    # "$i$a$-Layout-BoxKt$Box$1\\31\\250\\27":I
    .local v37, "$i$a$-Layout-BoxKt$Box$1\\31\\250\\27":I
    const-string v6, "C72@3469L9:Box.kt#2w3rfo"

    invoke-static {v5, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v36, 0x6

    and-int/lit8 v6, v6, 0x70

    const/16 v26, 0x6

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed\\32":I
    check-cast v3, Landroidx/compose/foundation/layout/BoxScope;

    .local v3, "$this$Principal_u24lambda_u2414_u24lambda_u2413_u24lambda_u249\\32":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v84, v5

    .local v84, "$composer\\32":Landroidx/compose/runtime/Composer;
    const/16 v51, 0x0

    .line 119
    .local v51, "$i$a$-Box-PrincipalKt$Principal$2$1$4\\32\\226\\7":I
    move-object/from16 v52, v3

    .end local v3    # "$this$Principal_u24lambda_u2414_u24lambda_u2413_u24lambda_u249\\32":Landroidx/compose/foundation/layout/BoxScope;
    .local v52, "$this$Principal_u24lambda_u2414_u24lambda_u2413_u24lambda_u249\\32":Landroidx/compose/foundation/layout/BoxScope;
    const v3, 0x13b07254

    move-object/from16 v53, v5

    .end local v5    # "$composer\\31":Landroidx/compose/runtime/Composer;
    .local v53, "$composer\\31":Landroidx/compose/runtime/Composer;
    const-string v5, "C118@4569L220:Principal.kt#8o7o96"

    move/from16 v54, v6

    move-object/from16 v6, v84

    .end local v84    # "$composer\\32":Landroidx/compose/runtime/Composer;
    .local v6, "$composer\\32":Landroidx/compose/runtime/Composer;
    .local v54, "$changed\\32":I
    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v83

    .line 122
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x10

    .local v5, "$this$dp\\33":I
    const/16 v55, 0x0

    .line 251
    .local v55, "$i$f$getDp\\33\\122":I
    nop

    .end local v6    # "$composer\\32":Landroidx/compose/runtime/Composer;
    .restart local v84    # "$composer\\32":Landroidx/compose/runtime/Composer;
    int-to-float v6, v5

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 122
    .end local v5    # "$this$dp\\33":I
    .end local v55    # "$i$f$getDp\\33\\122":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 123
    move-object/from16 v55, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .end local v7    # "materialized\\28":Landroidx/compose/ui/Modifier;
    .local v55, "materialized\\28":Landroidx/compose/ui/Modifier;
    invoke-static {v3, v6, v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v64

    .line 120
    nop

    .line 123
    nop

    .line 121
    nop

    .line 119
    const-string v63, "Consejo"

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const-wide/16 v72, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const-wide/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v85, 0x36

    const/16 v86, 0x0

    const v87, 0xfffc

    invoke-static/range {v63 .. v87}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static/range {v84 .. v84}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 125
    nop

    .line 226
    .end local v51    # "$i$a$-Box-PrincipalKt$Principal$2$1$4\\32\\226\\7":I
    .end local v52    # "$this$Principal_u24lambda_u2414_u24lambda_u2413_u24lambda_u249\\32":Landroidx/compose/foundation/layout/BoxScope;
    .end local v54    # "$changed\\32":I
    .end local v84    # "$composer\\32":Landroidx/compose/runtime/Composer;
    invoke-static/range {v53 .. v53}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 250
    .end local v35    # "$changed\\31":I
    .end local v37    # "$i$a$-Layout-BoxKt$Box$1\\31\\250\\27":I
    .end local v53    # "$composer\\31":Landroidx/compose/runtime/Composer;
    nop

    .line 252
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 235
    invoke-static/range {v41 .. v41}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 253
    nop

    .line 229
    .end local v41    # "$composer\\29":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$f$ReusableComposeNode\\29\\233":I
    .end local v43    # "$changed\\29":I
    .end local v44    # "factory\\29":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v40 .. v40}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 254
    nop

    .line 219
    .end local v8    # "localMap\\28":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v17    # "modifier\\28":Landroidx/compose/ui/Modifier;
    .end local v21    # "compositeKeyHash\\28":I
    .end local v34    # "$changed\\28":I
    .end local v38    # "$i$f$Layout\\28\\225":I
    .end local v40    # "$composer\\28":Landroidx/compose/runtime/Composer;
    .end local v50    # "measurePolicy\\28":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v55    # "materialized\\28":Landroidx/compose/ui/Modifier;
    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 255
    nop

    .line 109
    .end local v9    # "$i$f$Box\\27\\110":I
    .end local v10    # "contentAlignment\\27":Landroidx/compose/ui/Alignment;
    .end local v11    # "propagateMinConstraints\\27":Z
    .end local v22    # "$composer\\27":Landroidx/compose/runtime/Composer;
    .end local v33    # "measurePolicy\\27":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v36    # "$changed\\27":I
    .end local v39    # "modifier\\27":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .end local v16    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v48    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v49    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v9, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v10, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v11, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_b
    move-object/from16 v16, v9

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    .end local v9    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v10    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v11    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v16    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .restart local v48    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v49    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const v3, 0x53c3338e

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 127
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x10

    .local v5, "$this$dp\\34":I
    const/4 v6, 0x0

    .line 256
    .local v6, "$i$f$getDp\\34\\127":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 127
    .end local v5    # "$this$dp\\34":I
    .end local v6    # "$i$f$getDp\\34\\127":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 129
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 130
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 131
    const/16 v5, 0x32

    .local v5, "$this$dp\\35":I
    const/4 v6, 0x0

    .line 257
    .local v6, "$i$f$getDp\\35\\131":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 131
    .end local v5    # "$this$dp\\35":I
    .end local v6    # "$i$f$getDp\\35\\131":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 132
    const/16 v5, 0x32

    .local v5, "$this$dp\\36":I
    const/4 v6, 0x0

    .line 258
    .local v6, "$i$f$getDp\\36\\132":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 132
    .end local v5    # "$this$dp\\36":I
    .end local v6    # "$i$f$getDp\\36\\132":I
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    .line 136
    const/4 v6, 0x2

    .local v6, "$this$dp\\37":I
    const/4 v7, 0x0

    .line 259
    .local v7, "$i$f$getDp\\37\\136":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 136
    .end local v6    # "$this$dp\\37":I
    .end local v7    # "$i$f$getDp\\37\\136":I
    invoke-virtual/range {p1 .. p1}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getButtonBorder-0d7_KjU()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v6

    .line 137
    sget-object v33, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v34

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v36

    sget v7, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v43, v7, 0xc

    .line 137
    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v44, 0xc

    move-object/from16 v42, v4

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v33 .. v44}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v37

    .line 133
    .end local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const v7, 0x3c84a667

    invoke-static {v4, v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\38":Z
    move-object v7, v4

    .local v7, "$this$cache\\38":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 260
    .local v8, "$i$f$cache\\38\\133":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\38":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 261
    .local v10, "$i$a$-let-ComposerKt$cache$1\\39\\260\\38":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_c

    .line 262
    const/4 v11, 0x0

    .line 133
    .local v11, "$i$a$-cache-PrincipalKt$Principal$2$1$5\\40\\262\\7":I
    move/from16 v17, v1

    .end local v1    # "invalid\\38":Z
    .local v17, "invalid\\38":Z
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 262
    .end local v11    # "$i$a$-cache-PrincipalKt$Principal$2$1$5\\40\\262\\7":I
    nop

    .line 263
    .local v1, "value\\39":Ljava/lang/Object;
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 264
    move-object v9, v1

    .end local v1    # "value\\39":Ljava/lang/Object;
    goto :goto_8

    .line 265
    .end local v17    # "invalid\\38":Z
    .local v1, "invalid\\38":Z
    :cond_c
    move/from16 v17, v1

    .line 260
    .end local v1    # "invalid\\38":Z
    .end local v9    # "it\\38":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1\\39\\260\\38":I
    .restart local v17    # "invalid\\38":Z
    :goto_8
    nop

    .line 133
    .end local v7    # "$this$cache\\38":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\38\\133":I
    .end local v17    # "invalid\\38":Z
    move-object/from16 v33, v9

    check-cast v33, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 131
    nop

    .line 132
    move-object/from16 v36, v5

    check-cast v36, Landroidx/compose/ui/graphics/Shape;

    .line 137
    nop

    .line 136
    nop

    .line 141
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/Typography;)V

    const v5, 0x539d3ad

    const/16 v7, 0x36

    const/4 v9, 0x1

    invoke-static {v5, v9, v1, v4, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function3;

    .line 128
    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v44, 0x30000036

    const/16 v45, 0x1a4

    move-object/from16 v34, v3

    move-object/from16 v43, v4

    move-object/from16 v39, v6

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v43, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v33 .. v45}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 68
    move-object/from16 v54, v43

    .end local v43    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v54, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v54 .. v54}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 147
    .end local v2    # "esta$delegate\\7":Landroidx/compose/runtime/MutableState;
    nop

    .line 167
    .end local v54    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v58    # "$i$a$-Column-PrincipalKt$Principal$2$1\\7\\167\\0":I
    .end local v59    # "$this$Principal_u24lambda_u2414_u24lambda_u2413\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v60    # "$changed\\7":I
    invoke-static/range {v61 .. v61}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 191
    .end local v29    # "$changed\\6":I
    .end local v61    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v62    # "$i$a$-Layout-ColumnKt$Column$1\\6\\191\\2":I
    nop

    .line 266
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 176
    invoke-static/range {v31 .. v31}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 267
    nop

    .line 170
    .end local v23    # "$changed\\4":I
    .end local v24    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$ReusableComposeNode\\4\\174":I
    .end local v31    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 268
    nop

    .line 164
    .end local v15    # "$changed\\3":I
    .end local v16    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v18    # "compositeKeyHash\\3":I
    .end local v19    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v20    # "$i$f$Layout\\3\\166":I
    .end local v32    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v46    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v47    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 269
    nop

    .end local v12    # "$changed\\2":I
    .end local v13    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$Column\\2\\61":I
    .end local v28    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v30    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v48    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v49    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_9

    .line 60
    .end local v27    # "$dirty":I
    .local v3, "$dirty":I
    :cond_d
    move/from16 v27, v3

    .end local v3    # "$dirty":I
    .restart local v27    # "$dirty":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 148
    :cond_e
    :goto_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final Principal$lambda$14$lambda$13$lambda$11$lambda$10(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$esta$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 134
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->Principal$lambda$14$lambda$13$lambda$6(Landroidx/compose/runtime/MutableState;Z)V

    .line 135
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final Principal$lambda$14$lambda$13$lambda$12(Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Button"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C141@5415L104:Principal.kt#8o7o96"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous>.<anonymous>.<anonymous> (Principal.kt:141)"

    const v5, 0x539d3ad

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    :cond_1
    nop

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 142
    const-string v0, "Consejo"

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

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 141
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 146
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final Principal$lambda$14$lambda$13$lambda$2$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 95
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final Principal$lambda$14$lambda$13$lambda$3(Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Button"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C101@3934L118:Principal.kt#8o7o96"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous>.<anonymous>.<anonymous> (Principal.kt:101)"

    const v5, 0x75d4ab44

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 103
    :cond_1
    nop

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 102
    const-string v0, "Realizar cuestionario"

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

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 101
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 106
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final Principal$lambda$14$lambda$13$lambda$5(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$esta$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 108
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 160
    .local v3, "$i$f$getValue\\1\\108":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\108":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 108
    return v0
.end method

.method private static final Principal$lambda$14$lambda$13$lambda$6(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$esta$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 108
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

    .line 161
    .local v4, "$i$f$setValue\\1\\108":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 162
    nop

    .line 108
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\108":I
    return-void
.end method

.method static final Principal$lambda$14$lambda$13$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$esta$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->Principal$lambda$14$lambda$13$lambda$6(Landroidx/compose/runtime/MutableState;Z)V

    .line 116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final Principal$lambda$15(Landroidx/navigation/NavController;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->Principal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final PrincipalPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 156
    const v0, -0x3448013c

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v1, "C(PrincipalPreview)156@5718L23,156@5708L34:Principal.kt#8o7o96"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalPreview (Principal.kt:155)"

    invoke-static {v0, p1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-array v0, v1, [Landroidx/navigation/Navigator;

    .line 157
    invoke-static {v0, p0, v1}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    invoke-static {v0, p0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->Principal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 154
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 158
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method static final PrincipalPreview$lambda$16(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->PrincipalPreview(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
