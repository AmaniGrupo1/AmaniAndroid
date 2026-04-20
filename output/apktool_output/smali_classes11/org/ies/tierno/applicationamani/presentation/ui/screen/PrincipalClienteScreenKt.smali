.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;
.super Ljava/lang/Object;
.source "PrincipalClienteScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrincipalClienteScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrincipalClienteScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt\n+ 2 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt__ViewModelKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 7 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 10 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 11 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,198:1\n68#2:199\n57#2,10:200\n599#3:210\n596#3,6:211\n1128#4,3:217\n1131#4,3:221\n1128#4,6:225\n1128#4,6:232\n1128#4,6:239\n1128#4,6:246\n597#5:220\n122#6:224\n122#6:231\n122#6:238\n122#6:245\n122#6:252\n122#6:285\n122#6:286\n122#6:287\n122#6:288\n122#6:323\n122#6:333\n122#6:334\n122#6:366\n87#7:253\n84#7,9:254\n94#7:332\n87#7:335\n85#7,8:336\n94#7:370\n81#8,6:263\n88#8,6:278\n81#8,6:301\n88#8,6:316\n96#8:326\n96#8:331\n81#8,6:344\n88#8,6:359\n96#8:369\n391#9,9:269\n400#9:284\n391#9,9:307\n400#9:322\n401#9,2:324\n401#9,2:329\n391#9,9:350\n400#9:365\n401#9,2:367\n1915#10:289\n1916#10:328\n99#11:290\n95#11,10:291\n106#11:327\n*S KotlinDebug\n*F\n+ 1 PrincipalClienteScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt\n*L\n62#1:199\n62#1:200,10\n66#1:210\n66#1:211,6\n66#1:217,3\n66#1:221,3\n84#1:225,6\n92#1:232,6\n100#1:239,6\n112#1:246,6\n66#1:220\n75#1:224\n85#1:231\n93#1:238\n101#1:245\n157#1:252\n162#1:285\n164#1:286\n169#1:287\n171#1:288\n180#1:323\n130#1:333\n132#1:334\n137#1:366\n156#1:253\n156#1:254,9\n156#1:332\n127#1:335\n127#1:336,8\n127#1:370\n156#1:263,6\n156#1:278,6\n174#1:301,6\n174#1:316,6\n174#1:326\n156#1:331\n127#1:344,6\n127#1:359,6\n127#1:369\n156#1:269,9\n156#1:284\n174#1:307,9\n174#1:322\n174#1:324,2\n156#1:329,2\n127#1:350,9\n127#1:365\n127#1:367,2\n173#1:289\n173#1:328\n174#1:290\n174#1:291,10\n174#1:327\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "PrincipalClienteScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "viewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;Landroidx/compose/runtime/Composer;II)V",
        "PrincipalClienteScreenPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
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
.method public static final PrincipalClienteScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "navController"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const v3, 0xbbc749b

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(PrincipalClienteScreen)N(navController,viewModel)62@2762L11,63@2809L10,64@2842L54,65@2913L24,70@3075L1142,104@4224L3078,68@2993L4309:PrincipalClienteScreen.kt#8o7o96"

    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v1, 0x30

    const/16 v6, 0x10

    if-nez v5, :cond_2

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    move-object/from16 v5, p1

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :cond_1
    move v7, v6

    :goto_0
    or-int/2addr v4, v7

    goto :goto_1

    :cond_2
    move-object/from16 v5, p1

    :goto_1
    and-int/lit8 v7, v4, 0x11

    if-eq v7, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v4, 0x1

    invoke-interface {v11, v6, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v6, "61@2716L11"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v6, v1, 0x1

    const/4 v7, 0x6

    if-eqz v6, :cond_6

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 60
    :cond_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    and-int/lit8 v4, v4, -0x71

    move v15, v4

    move-object v14, v5

    const/16 p2, 0x0

    goto/16 :goto_6

    :cond_5
    const/16 p2, 0x0

    goto/16 :goto_5

    .line 62
    :cond_6
    :goto_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    .local v6, "$changed\\1":I
    move-object v10, v11

    .local v10, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 199
    .local v20, "$i$f$viewModel\\1\\62":I
    const v12, 0x671a9c9b

    const-string v13, "CC(viewModel)N(viewModelStoreOwner,key,factory,extras)56@2573L7,67@2981L63:ViewModel.kt#3tja67"

    invoke-static {v10, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 200
    sget-object v12, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v12, v10, v7}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 203
    .local v13, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/4 v14, 0x0

    .line 204
    .local v14, "key\\1":Ljava/lang/String;
    const/4 v15, 0x0

    .line 206
    .local v15, "factory\\1":Landroidx/lifecycle/ViewModelProvider$Factory;
    instance-of v12, v13, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v12, :cond_7

    .line 207
    move-object v12, v13

    check-cast v12, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v12}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v12

    move-object/from16 v16, v12

    goto :goto_4

    .line 209
    :cond_7
    sget-object v12, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v12, Landroidx/lifecycle/viewmodel/CreationExtras;

    move-object/from16 v16, v12

    :goto_4
    nop

    .local v16, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    const-class v12, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 199
    shl-int/lit8 v17, v6, 0x3

    and-int/lit8 v17, v17, 0x70

    const/16 p2, 0x0

    shl-int/lit8 v8, v6, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int v8, v17, v8

    shl-int/lit8 v9, v6, 0x3

    and-int/lit16 v9, v9, 0x1c00

    or-int/2addr v8, v9

    const v9, 0xe000

    shl-int/lit8 v17, v6, 0x3

    and-int v9, v17, v9

    or-int v18, v8, v9

    const/16 v19, 0x0

    move-object/from16 v17, v10

    .end local v10    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v17, "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-static/range {v12 .. v19}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v8

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v6    # "$changed\\1":I
    .end local v13    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v14    # "key\\1":Ljava/lang/String;
    .end local v15    # "factory\\1":Landroidx/lifecycle/ViewModelProvider$Factory;
    .end local v16    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v17    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$viewModel\\1\\62":I
    move-object v5, v8

    check-cast v5, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;

    .end local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .local v5, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    and-int/lit8 v4, v4, -0x71

    move v15, v4

    move-object v14, v5

    goto :goto_6

    .line 200
    .end local v5    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .restart local v6    # "$changed\\1":I
    .restart local v10    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$i$f$viewModel\\1\\62":I
    .restart local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    :cond_8
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$a$-checkNotNull-ViewModelKt__ViewModelKt$viewModel$1\\2\\200\\1":I
    nop

    .line 200
    .end local v2    # "$i$a$-checkNotNull-ViewModelKt__ViewModelKt$viewModel$1\\2\\200\\1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v6    # "$changed\\1":I
    .end local v10    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$viewModel\\1\\62":I
    :cond_9
    const/16 p2, 0x0

    .line 60
    :goto_5
    move v15, v4

    move-object v14, v5

    .end local v4    # "$dirty":I
    .end local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .local v14, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .local v15, "$dirty":I
    :goto_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen (PrincipalClienteScreen.kt:61)"

    invoke-static {v3, v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 63
    :cond_a
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v11, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v24

    .line 64
    .local v24, "colors":Landroidx/compose/material3/ColorScheme;
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v11, v4}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v3

    .line 65
    .local v3, "typography":Landroidx/compose/material3/Typography;
    sget-object v4, Landroidx/compose/material3/DrawerValue;->Closed:Landroidx/compose/material3/DrawerValue;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v11, v7, v6}, Landroidx/compose/material3/NavigationDrawerKt;->rememberDrawerState(Landroidx/compose/material3/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DrawerState;

    move-result-object v6

    .line 66
    .local v6, "drawerState":Landroidx/compose/material3/DrawerState;
    move/from16 v4, p2

    .local v4, "$changed\\3":I
    move-object v5, v11

    .local v5, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 210
    .local v7, "$i$f$rememberCoroutineScope\\3\\66":I
    const v8, 0x2e20b340

    const-string v9, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 211
    nop

    .line 215
    move-object v8, v5

    .line 216
    .local v8, "composer\\3":Landroidx/compose/runtime/Composer;
    const v9, 0x28c0fdc4

    const-string v10, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v5, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v9, 0x0

    .local v9, "invalid\\4":Z
    move-object v10, v5

    .local v10, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 217
    .local v12, "$i$f$cache\\4\\216":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\4":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 218
    .local v16, "$i$a$-let-ComposerKt$cache$1\\5\\217\\4":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v4

    .end local v4    # "$changed\\3":I
    .local p1, "$changed\\3":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_b

    .line 219
    const/4 v4, 0x0

    .line 216
    .local v4, "$i$a$-cache-EffectsKt$rememberCoroutineScope$2\\6\\219\\3":I
    const/16 v17, 0x0

    .line 220
    .local v17, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1\\7\\216\\0":I
    sget-object v17, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 216
    .end local v17    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1\\7\\216\\0":I
    move/from16 p2, v4

    .end local v4    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$2\\6\\219\\3":I
    .local p2, "$i$a$-cache-EffectsKt$rememberCoroutineScope$2\\6\\219\\3":I
    move-object/from16 v4, v17

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 219
    .end local p2    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$2\\6\\219\\3":I
    nop

    .line 221
    .local v4, "value\\5":Ljava/lang/Object;
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 222
    move-object v13, v4

    .end local v4    # "value\\5":Ljava/lang/Object;
    goto :goto_7

    .line 223
    :cond_b
    nop

    .line 217
    .end local v13    # "it\\4":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1\\5\\217\\4":I
    :goto_7
    nop

    .line 216
    .end local v9    # "invalid\\4":Z
    .end local v10    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache\\4\\216":I
    move-object/from16 v22, v13

    check-cast v22, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 210
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 216
    nop

    .line 66
    .end local v5    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$rememberCoroutineScope\\3\\66":I
    .end local v8    # "composer\\3":Landroidx/compose/runtime/Composer;
    .end local p1    # "$changed\\3":I
    nop

    .line 67
    .local v22, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-virtual {v14}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;->getEspecialidades()Ljava/util/List;

    move-result-object v26

    .line 71
    .local v26, "especialidades":Ljava/util/List;
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/Typography;)V

    const v5, -0x7c129a5e

    const/16 v7, 0x36

    const/4 v8, 0x1

    invoke-static {v5, v8, v4, v11, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 70
    nop

    .line 105
    new-instance v21, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;

    move-object/from16 v25, v3

    move-object/from16 v23, v6

    .end local v3    # "typography":Landroidx/compose/material3/Typography;
    .end local v6    # "drawerState":Landroidx/compose/material3/DrawerState;
    .local v23, "drawerState":Landroidx/compose/material3/DrawerState;
    .local v25, "typography":Landroidx/compose/material3/Typography;
    invoke-direct/range {v21 .. v26}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;)V

    move-object/from16 v3, v21

    .end local v23    # "drawerState":Landroidx/compose/material3/DrawerState;
    .restart local v6    # "drawerState":Landroidx/compose/material3/DrawerState;
    const v5, 0x3d68e3bd

    invoke-static {v5, v8, v3, v11, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 69
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const v12, 0x30006

    const/16 v13, 0x1a

    invoke-static/range {v4 .. v13}, Landroidx/compose/material3/NavigationDrawerKt;->ModalNavigationDrawer-FHprtrg(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v17, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 189
    .end local v6    # "drawerState":Landroidx/compose/material3/DrawerState;
    .end local v22    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local v24    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v25    # "typography":Landroidx/compose/material3/Typography;
    .end local v26    # "especialidades":Ljava/util/List;
    :cond_c
    move v4, v15

    goto :goto_8

    .line 60
    .end local v14    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .end local v15    # "$dirty":I
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$dirty":I
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local p1, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    :cond_d
    move-object/from16 v17, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v14, v5

    .line 189
    .end local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    .restart local v14    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
    :goto_8
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v14, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;II)V

    invoke-interface {v3, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method static final PrincipalClienteScreen$lambda$18(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16
    .param p0, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "$drawerState"    # Landroidx/compose/material3/DrawerState;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$typography"    # Landroidx/compose/material3/Typography;
    .param p4, "$especialidades"    # Ljava/util/List;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v12, p5

    move/from16 v15, p6

    const-string v0, "C106@4265L655,125@4931L2365,105@4234L3062:PrincipalClienteScreen.kt#8o7o96"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v15, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v15, 0x1

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous> (PrincipalClienteScreen.kt:105)"

    const v3, 0x3d68e3bd

    invoke-static {v3, v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 107
    :cond_1
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda11;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda11;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)V

    const v4, 0x503d9279

    const/16 v5, 0x36

    invoke-static {v4, v2, v0, v12, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 126
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda12;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct {v4, v6, v7, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;)V

    const v9, 0x1c84174e

    invoke-static {v9, v2, v4, v12, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function3;

    .line 106
    move-object v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const v13, 0x30000030

    const/16 v14, 0x1fd

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 105
    :cond_2
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 188
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$18$lambda$11(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12
    .param p0, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "$drawerState"    # Landroidx/compose/material3/DrawerState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object v8, p2

    move v11, p3

    const-string v0, "C109@4379L509,107@4283L623:PrincipalClienteScreen.kt#8o7o96"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v11, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v11, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:107)"

    const v3, 0x503d9279

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;->getLambda$32117053$app()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 110
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda6;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)V

    const/16 v3, 0x36

    const v4, 0xeca94bf

    invoke-static {v4, v2, v1, p2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 108
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x186

    const/16 v10, 0xfa

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 125
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$18$lambda$11$lambda$10(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "$drawerState"    # Landroidx/compose/material3/DrawerState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C111@4455L167,110@4405L461:PrincipalClienteScreen.kt#8o7o96"

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

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:110)"

    const v2, 0xeca94bf

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 112
    :cond_1
    const v0, -0x798794da

    const-string v1, "CC(remember):PrincipalClienteScreen.kt#9igjgp"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid\\1":Z
    move-object v1, p2

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 246
    .local v2, "$i$f$cache\\1\\112":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$a$-let-ComposerKt$cache$1\\2\\246\\1":I
    if-nez v0, :cond_3

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 251
    :cond_2
    goto :goto_2

    .line 248
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 112
    .local v5, "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$2$1$1$1\\3\\248\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)V

    .line 248
    .end local v5    # "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$2$1$1$1\\3\\248\\0":I
    nop

    .line 249
    .local v7, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 250
    move-object v3, v7

    .line 246
    .end local v3    # "it\\1":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1\\2\\246\\1":I
    .end local v7    # "value\\2":Ljava/lang/Object;
    :goto_2
    nop

    .line 112
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache\\1\\112":I
    move-object v0, v3

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;->getLambda$470996380$app()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 110
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 123
    :cond_5
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$18$lambda$11$lambda$10$lambda$9$lambda$8(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)Lkotlin/Unit;
    .locals 8
    .param p0, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "$drawerState"    # Landroidx/compose/material3/DrawerState;

    .line 113
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$PrincipalClienteScreen$2$1$1$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$PrincipalClienteScreen$2$1$1$1$1$1;-><init>(Landroidx/compose/material3/DrawerState;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    .end local p0    # "$scope":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "$scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 116
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final PrincipalClienteScreen$lambda$18$lambda$17(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 43
    .param p0, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$especialidades"    # Ljava/util/List;
    .param p3, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "paddingValues"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CN(paddingValues)126@4962L2324:PrincipalClienteScreen.kt#8o7o96"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p5

    .local v2, "$dirty":I
    and-int/lit8 v3, p5, 0x6

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:126)"

    const v7, 0x1c84174e

    invoke-static {v7, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 128
    :cond_3
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 129
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 130
    const/16 v4, 0x10

    .local v4, "$this$dp\\1":I
    const/4 v7, 0x0

    .line 333
    .local v7, "$i$f$getDp\\1\\130":I
    int-to-float v8, v4

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 130
    .end local v4    # "$this$dp\\1":I
    .end local v7    # "$i$f$getDp\\1\\130":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 131
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 132
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v9, 0x14

    .local v9, "$this$dp\\2":I
    const/4 v10, 0x0

    .line 334
    .local v10, "$i$f$getDp\\2\\132":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 132
    .end local v9    # "$this$dp\\2":I
    .end local v10    # "$i$f$getDp\\2\\132":I
    invoke-virtual {v8, v9}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 127
    nop

    .local v8, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/16 v9, 0x30

    .local v9, "$changed\\3":I
    move-object/from16 v10, p4

    .local v3, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v10, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 335
    .local v11, "$i$f$Column\\3\\127":I
    const v12, 0x4ff7456f

    const-string v13, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v10, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 336
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    .line 339
    .local v12, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v13, v9, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v8, v12, v10, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .line 343
    .local v13, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 342
    shl-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 340
    move-object v15, v13

    .local v15, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v16, v3

    .local v16, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object/from16 v17, v10

    .local v14, "$changed\\4":I
    .local v17, "$composer\\4":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 344
    .local v18, "$i$f$Layout\\4\\340":I
    const v4, -0x451e1427

    const-string v6, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v7, v17

    .end local v17    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v7, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v7, v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 345
    invoke-static {v7, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    .line 346
    .local v4, "compositeKeyHash\\4":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 347
    .local v5, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v6, v16

    .end local v16    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v6, "modifier\\4":Landroidx/compose/ui/Modifier;
    invoke-static {v7, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 349
    .local v0, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    shl-int/lit8 v1, v14, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 348
    nop

    .local v1, "$changed\\5":I
    .local v17, "$composer\\5":Landroidx/compose/runtime/Composer;
    move-object/from16 v20, v16

    .local v20, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 350
    .local v16, "$i$f$ReusableComposeNode\\5\\348":I
    move/from16 v21, v1

    .end local v1    # "$changed\\5":I
    .local v21, "$changed\\5":I
    const v1, -0x20f7d59c

    move/from16 v22, v2

    .end local v2    # "$dirty":I
    .local v22, "$dirty":I
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v23, v3

    move-object/from16 v3, v17

    .end local v17    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v23, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 351
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 352
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 353
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    move-object/from16 v1, v20

    .end local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v1, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 356
    .end local v1    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v1, v20

    .end local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 358
    :goto_2
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 359
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\358\\4":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v1

    .end local v1    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v24, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 361
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v3

    .end local v3    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 362
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 363
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 364
    nop

    .line 358
    .end local v2    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\358\\4":I
    nop

    .line 365
    shr-int/lit8 v1, v21, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\7":I
    move-object/from16 v2, v25

    .local v2, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 341
    .local v3, "$i$a$-Layout-ColumnKt$Column$1\\7\\365\\3":I
    move-object/from16 v17, v0

    .end local v0    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v17, "materialized\\4":Landroidx/compose/ui/Modifier;
    const v0, 0x7cc0ae6e

    move/from16 v20, v1

    .end local v1    # "$changed\\7":I
    .local v20, "$changed\\7":I
    const-string v1, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v9, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed\\8":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416\\8":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v35, v2

    .local v35, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 134
    .local v38, "$i$a$-Column-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1\\8\\341\\0":I
    move-object/from16 v39, v0

    .end local v0    # "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .local v39, "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416\\8":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x4a31db7b    # 2914014.8f

    move/from16 v40, v1

    .end local v1    # "$changed\\8":I
    .local v40, "$changed\\8":I
    const-string v1, "C137@5389L89,133@5220L540,151@5906L89,154@6014L1258,148@5777L1495:PrincipalClienteScreen.kt#8o7o96"

    move-object/from16 v41, v2

    .end local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v41, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 135
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 136
    move/from16 v42, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-Layout-ColumnKt$Column$1\\7\\365\\3":I
    .restart local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v42, "$i$a$-Layout-ColumnKt$Column$1\\7\\365\\3":I
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 137
    const/16 v1, 0xc8

    .local v1, "$this$dp\\9":I
    const/4 v2, 0x0

    .line 366
    .local v2, "$i$f$getDp\\9\\137":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 137
    .end local v1    # "$this$dp\\9":I
    .end local v2    # "$i$f$getDp\\9\\137":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 138
    sget-object v26, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v27

    sget v1, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v36, v1, 0xc

    .line 138
    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v37, 0xe

    invoke-virtual/range {v26 .. v37}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v28

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$PrincipalClienteScreenKt;->getLambda$-611778250$app()Lkotlin/jvm/functions/Function3;

    move-result-object v31

    .line 134
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0x30006

    const/16 v34, 0x1a

    move-object/from16 v26, v0

    move-object/from16 v32, v35

    .end local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v32, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v26 .. v34}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 150
    .end local v32    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 151
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 152
    sget-object v26, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v27

    sget v1, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v36, v1, 0xc

    .line 152
    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    invoke-virtual/range {v26 .. v37}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v28

    .line 155
    move-object/from16 v2, v35

    .end local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\8":Landroidx/compose/runtime/Composer;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;

    move-object/from16 v3, p1

    move-object/from16 v26, v0

    move-object/from16 v0, p2

    invoke-direct {v1, v3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/Typography;Ljava/util/List;)V

    const/16 v0, 0x36

    const v3, 0x1454a0ad

    move/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "compositeKeyHash\\4":I
    .local v19, "compositeKeyHash\\4":I
    invoke-static {v3, v4, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lkotlin/jvm/functions/Function3;

    .line 149
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0x30006

    const/16 v34, 0x1a

    move-object/from16 v32, v2

    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v32    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v26 .. v34}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 134
    move-object/from16 v35, v32

    .end local v32    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v35 .. v35}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 186
    nop

    .line 341
    .end local v35    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-Column-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1\\8\\341\\0":I
    .end local v39    # "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v40    # "$changed\\8":I
    invoke-static/range {v41 .. v41}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 365
    .end local v20    # "$changed\\7":I
    .end local v41    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$a$-Layout-ColumnKt$Column$1\\7\\365\\3":I
    nop

    .line 367
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 350
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 368
    nop

    .line 344
    .end local v16    # "$i$f$ReusableComposeNode\\5\\348":I
    .end local v21    # "$changed\\5":I
    .end local v24    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 369
    nop

    .line 335
    .end local v5    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v6    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v7    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v14    # "$changed\\4":I
    .end local v15    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v17    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v18    # "$i$f$Layout\\4\\340":I
    .end local v19    # "compositeKeyHash\\4":I
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 370
    nop

    .end local v8    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v9    # "$changed\\3":I
    .end local v10    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$Column\\3\\127":I
    .end local v12    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v13    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 126
    .end local v22    # "$dirty":I
    .local v2, "$dirty":I
    :cond_6
    move/from16 v22, v2

    .end local v2    # "$dirty":I
    .restart local v22    # "$dirty":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 187
    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$18$lambda$17$lambda$16$lambda$15(Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 90
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$especialidades"    # Ljava/util/List;
    .param p2, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "$this$Card"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C155@6036L1218:PrincipalClienteScreen.kt#8o7o96"

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

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:155)"

    const v6, 0x1454a0ad

    invoke-static {v6, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 157
    :cond_1
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x10

    .local v4, "$this$dp\\1":I
    const/4 v6, 0x0

    .line 252
    .local v6, "$i$f$getDp\\1\\157":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 157
    .end local v4    # "$this$dp\\1":I
    .end local v6    # "$i$f$getDp\\1\\157":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 156
    move-object/from16 v4, p3

    .local v4, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x6

    move v7, v6

    .local v2, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v7, "$changed\\2":I
    const/4 v8, 0x0

    .line 253
    .local v8, "$i$f$Column\\2\\156":I
    const v9, 0x4ff7456f

    const-string v10, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v4, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 254
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v9

    .line 255
    .local v9, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 258
    .local v10, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v9, v10, v4, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 262
    .local v11, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 261
    shl-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 259
    nop

    .local v12, "$changed\\3":I
    move-object v13, v4

    .local v13, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object v14, v2

    .local v14, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object v15, v11

    .local v15, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v16, 0x0

    .line 263
    .local v16, "$i$f$Layout\\3\\259":I
    move/from16 v17, v6

    const v6, -0x451e1427

    const-string v5, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v13, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 264
    const/4 v6, 0x0

    invoke-static {v13, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    .line 265
    .local v6, "compositeKeyHash\\3":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 266
    .local v0, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v13, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 268
    .local v1, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    move-object/from16 v21, v2

    .end local v2    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v21, "modifier\\2":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v2, v12, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 267
    nop

    .local v2, "$changed\\4":I
    move-object/from16 v22, v13

    .local v22, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object/from16 v23, v20

    .local v23, "factory\\4":Lkotlin/jvm/functions/Function0;
    const/16 v20, 0x0

    .line 269
    .local v20, "$i$f$ReusableComposeNode\\4\\267":I
    move/from16 v24, v2

    .end local v2    # "$changed\\4":I
    .local v24, "$changed\\4":I
    const v2, -0x20f7d59c

    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v25, v4

    move-object/from16 v4, v22

    .end local v22    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 270
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 271
    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 272
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    move-object/from16 v2, v23

    .end local v23    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 275
    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v2, v23

    .end local v23    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 277
    :goto_1
    move-object/from16 v23, v2

    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 278
    .local v26, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\277\\3":I
    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v4

    .end local v4    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v28, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v15, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 279
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v0

    .end local v0    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 281
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 282
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 283
    nop

    .line 277
    .end local v2    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\277\\3":I
    nop

    .line 284
    shr-int/lit8 v0, v24, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\6":I
    move-object/from16 v2, v28

    .local v2, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 260
    .local v4, "$i$a$-Layout-ColumnKt$Column$1\\6\\284\\2":I
    move/from16 v26, v0

    .end local v0    # "$changed\\6":I
    .local v26, "$changed\\6":I
    const v0, 0x7cc0ae6e

    move-object/from16 v27, v1

    .end local v1    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v27, "materialized\\3":Landroidx/compose/ui/Modifier;
    const-string v1, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v7, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed\\7":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\7":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v51, v2

    .local v51, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v55, 0x0

    .line 159
    .local v55, "$i$a$-Column-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1$1$1\\7\\260\\0":I
    move-object/from16 v56, v0

    .end local v0    # "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v56, "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\7":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x5645a927

    move/from16 v57, v1

    .end local v1    # "$changed\\7":I
    .local v57, "$changed\\7":I
    const-string v1, "C158@6151L201,163@6377L40,165@6443L196,170@6664L40:PrincipalClienteScreen.kt#8o7o96"

    move-object/from16 v58, v2

    .end local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v58, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v50

    .line 162
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x10

    .local v1, "$this$dp\\8":I
    const/16 v30, 0x0

    .line 285
    .local v30, "$i$f$getDp\\8\\162":I
    nop

    .end local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    int-to-float v2, v1

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 162
    .end local v1    # "$this$dp\\8":I
    .end local v30    # "$i$f$getDp\\8\\162":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v31

    .line 160
    nop

    .line 162
    nop

    .line 161
    nop

    .line 159
    const-string v30, "N. Psico"

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v52, 0x36

    const/16 v53, 0x0

    const v54, 0xfffc

    invoke-static/range {v30 .. v54}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 164
    move-object/from16 v2, v51

    .end local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x8

    .local v1, "$this$dp\\9":I
    const/16 v30, 0x0

    .line 286
    .local v30, "$i$f$getDp\\9\\164":I
    move/from16 v59, v4

    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1\\6\\284\\2":I
    .local v59, "$i$a$-Layout-ColumnKt$Column$1\\6\\284\\2":I
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 164
    .end local v1    # "$this$dp\\9":I
    .end local v30    # "$i$f$getDp\\9\\164":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v1, v17

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v50

    .line 169
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x10

    .local v1, "$this$dp\\10":I
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$f$getDp\\10\\169":I
    nop

    .end local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    int-to-float v2, v1

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 169
    .end local v1    # "$this$dp\\10":I
    .end local v4    # "$i$f$getDp\\10\\169":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v31

    .line 167
    nop

    .line 169
    nop

    .line 168
    nop

    .line 166
    const-string v30, "Biograf\u00eda"

    invoke-static/range {v30 .. v54}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 171
    move-object/from16 v2, v51

    .end local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x8

    .local v1, "$this$dp\\11":I
    const/4 v4, 0x0

    .line 288
    .local v4, "$i$f$getDp\\11\\171":I
    move/from16 v30, v4

    .end local v4    # "$i$f$getDp\\11\\171":I
    .local v30, "$i$f$getDp\\11\\171":I
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 171
    .end local v1    # "$this$dp\\11":I
    .end local v30    # "$i$f$getDp\\11\\171":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x1b8eea4a

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "*173@6799L407"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach\\12":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 289
    .local v1, "$i$f$forEach\\12\\173":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    .local v30, "element\\12":Ljava/lang/Object;
    move-object/from16 v60, v30

    check-cast v60, Ljava/lang/String;

    .local v60, "especialidad\\13":Ljava/lang/String;
    const/16 v31, 0x0

    .line 175
    .local v31, "$i$a$-forEach-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1$1$1$1\\13\\289\\7":I
    sget-object v32, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v32

    .line 174
    move-object/from16 v33, v32

    .local v33, "verticalAlignment\\14":Landroidx/compose/ui/Alignment$Vertical;
    move-object/from16 v32, v2

    .local v32, "$composer\\14":Landroidx/compose/runtime/Composer;
    const/16 v34, 0x180

    .local v34, "$changed\\14":I
    const/16 v35, 0x0

    .line 290
    .local v35, "$i$f$Row\\14\\174":I
    move-object/from16 v36, v0

    .end local v0    # "$this$forEach\\12":Ljava/lang/Iterable;
    .local v36, "$this$forEach\\12":Ljava/lang/Iterable;
    const v0, 0x3255a44b

    move/from16 v37, v1

    .end local v1    # "$i$f$forEach\\12\\173":I
    .local v37, "$i$f$forEach\\12\\173":I
    const-string v1, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    move-object/from16 v51, v2

    .end local v32    # "$composer\\14":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\14":Landroidx/compose/runtime/Composer;
    .restart local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 291
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 292
    .local v0, "modifier\\14":Landroidx/compose/ui/Modifier;
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v1

    .line 296
    .local v1, "horizontalArrangement\\14":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v32, v34, 0x3

    and-int/lit8 v32, v32, 0xe

    shr-int/lit8 v38, v34, 0x3

    and-int/lit8 v38, v38, 0x70

    move-object/from16 v39, v0

    .end local v0    # "modifier\\14":Landroidx/compose/ui/Modifier;
    .local v39, "modifier\\14":Landroidx/compose/ui/Modifier;
    or-int v0, v32, v38

    move-object/from16 v32, v4

    move-object/from16 v4, v33

    .end local v33    # "verticalAlignment\\14":Landroidx/compose/ui/Alignment$Vertical;
    .local v4, "verticalAlignment\\14":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v1, v4, v2, v0}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .line 300
    .local v0, "measurePolicy\\14":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 299
    shl-int/lit8 v33, v34, 0x3

    and-int/lit8 v33, v33, 0x70

    .line 297
    nop

    .local v33, "$changed\\15":I
    move-object/from16 v38, v0

    .local v38, "measurePolicy\\15":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v40, v2

    .local v40, "$composer\\15":Landroidx/compose/runtime/Composer;
    move-object/from16 v41, v39

    .local v41, "modifier\\15":Landroidx/compose/ui/Modifier;
    const/16 v42, 0x0

    .line 301
    .local v42, "$i$f$Layout\\15\\297":I
    move-object/from16 v43, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v40

    const v1, -0x451e1427

    .end local v1    # "horizontalArrangement\\14":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v40    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v19, "horizontalArrangement\\14":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v43, "measurePolicy\\14":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v0, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->hashCode(J)I

    move-result v18

    .line 303
    .local v18, "compositeKeyHash\\15":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 304
    .local v1, "localMap\\15":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v45, v2

    move-object/from16 v2, v41

    move-object/from16 v41, v4

    .end local v4    # "verticalAlignment\\14":Landroidx/compose/ui/Alignment$Vertical;
    .local v2, "modifier\\15":Landroidx/compose/ui/Modifier;
    .local v41, "verticalAlignment\\14":Landroidx/compose/ui/Alignment$Vertical;
    .local v45, "$composer\\14":Landroidx/compose/runtime/Composer;
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 306
    .local v4, "materialized\\15":Landroidx/compose/ui/Modifier;
    sget-object v46, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v46 .. v46}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v46

    move-object/from16 v47, v0

    .end local v0    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v47, "$composer\\15":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v0, v33, 0x6

    and-int/lit16 v0, v0, 0x380

    const/16 v17, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 305
    nop

    .local v0, "$changed\\16":I
    move-object/from16 v48, v47

    .local v48, "$composer\\16":Landroidx/compose/runtime/Composer;
    move-object/from16 v49, v46

    .local v49, "factory\\16":Lkotlin/jvm/functions/Function0;
    const/16 v46, 0x0

    .line 307
    .local v46, "$i$f$ReusableComposeNode\\16\\305":I
    move/from16 v50, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v48

    const v2, -0x20f7d59c

    .end local v2    # "modifier\\15":Landroidx/compose/ui/Modifier;
    .end local v48    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\16":Landroidx/compose/runtime/Composer;
    .local v22, "modifier\\15":Landroidx/compose/ui/Modifier;
    .local v50, "$changed\\16":I
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 308
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 309
    :cond_4
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 310
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    move-object/from16 v2, v49

    .end local v49    # "factory\\16":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\16":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 313
    .end local v2    # "factory\\16":Lkotlin/jvm/functions/Function0;
    .restart local v49    # "factory\\16":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v2, v49

    .end local v49    # "factory\\16":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\16":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 315
    :goto_3
    move-object/from16 v49, v0

    .end local v0    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .local v49, "$composer\\16":Landroidx/compose/runtime/Composer;
    invoke-static/range {v49 .. v49}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240\\17":Landroidx/compose/runtime/Composer;
    const/16 v52, 0x0

    .line 316
    .local v52, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\17\\315\\15":I
    sget-object v53, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v54, v2

    .end local v2    # "factory\\16":Lkotlin/jvm/functions/Function0;
    .local v54, "factory\\16":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v53 .. v53}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    move-object/from16 v53, v3

    move-object/from16 v3, v38

    .end local v38    # "measurePolicy\\15":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v3, "measurePolicy\\15":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 317
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v38, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v85, v1

    .end local v1    # "localMap\\15":Landroidx/compose/runtime/CompositionLocalMap;
    .local v85, "localMap\\15":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 320
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    nop

    .line 315
    .end local v0    # "$this$Layout_u24lambda_u240\\17":Landroidx/compose/runtime/Composer;
    .end local v52    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\17\\315\\15":I
    nop

    .line 322
    shr-int/lit8 v0, v50, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\18":I
    move-object/from16 v1, v49

    .local v1, "$composer\\18":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 298
    .local v2, "$i$a$-Layout-RowKt$Row$1\\18\\322\\14":I
    move/from16 v38, v0

    .end local v0    # "$changed\\18":I
    .local v38, "$changed\\18":I
    const v0, 0x56ccd6f5

    move/from16 v52, v2

    .end local v2    # "$i$a$-Layout-RowKt$Row$1\\18\\322\\14":I
    .local v52, "$i$a$-Layout-RowKt$Row$1\\18\\322\\14":I
    const-string v2, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v34, 0x6

    and-int/lit8 v2, v2, 0x70

    const/16 v17, 0x6

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\19":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413_u24lambda_u2412\\19":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v81, v1

    .local v81, "$composer\\19":Landroidx/compose/runtime/Composer;
    const/16 v86, 0x0

    .line 177
    .local v86, "$i$a$-Row-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1$1$1$1$1\\19\\298\\13":I
    move-object/from16 v87, v0

    .end local v0    # "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413_u24lambda_u2412\\19":Landroidx/compose/foundation/layout/RowScope;
    .local v87, "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413_u24lambda_u2412\\19":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x789da90f

    move-object/from16 v88, v1

    .end local v1    # "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v88, "$composer\\18":Landroidx/compose/runtime/Composer;
    const-string v1, "C176@6947L229:PrincipalClienteScreen.kt#8o7o96"

    move/from16 v89, v2

    move-object/from16 v2, v81

    .end local v81    # "$composer\\19":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\19":Landroidx/compose/runtime/Composer;
    .local v89, "$changed\\19":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v80

    .line 180
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x10

    .local v1, "$this$dp\\20":I
    const/16 v61, 0x0

    .line 323
    .local v61, "$i$f$getDp\\20\\180":I
    nop

    .end local v2    # "$composer\\19":Landroidx/compose/runtime/Composer;
    .restart local v81    # "$composer\\19":Landroidx/compose/runtime/Composer;
    int-to-float v2, v1

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 180
    .end local v1    # "$this$dp\\20":I
    .end local v61    # "$i$f$getDp\\20\\180":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v61

    .line 178
    nop

    .line 180
    nop

    .line 179
    nop

    .line 177
    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-wide/16 v69, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const-wide/16 v73, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v82, 0x30

    const/16 v83, 0x0

    const v84, 0xfffc

    invoke-static/range {v60 .. v84}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static/range {v81 .. v81}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 182
    nop

    .line 298
    .end local v81    # "$composer\\19":Landroidx/compose/runtime/Composer;
    .end local v86    # "$i$a$-Row-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1$1$1$1$1\\19\\298\\13":I
    .end local v87    # "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413_u24lambda_u2412\\19":Landroidx/compose/foundation/layout/RowScope;
    .end local v89    # "$changed\\19":I
    invoke-static/range {v88 .. v88}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 322
    .end local v38    # "$changed\\18":I
    .end local v52    # "$i$a$-Layout-RowKt$Row$1\\18\\322\\14":I
    .end local v88    # "$composer\\18":Landroidx/compose/runtime/Composer;
    nop

    .line 324
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 307
    invoke-static/range {v49 .. v49}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 325
    nop

    .line 301
    .end local v46    # "$i$f$ReusableComposeNode\\16\\305":I
    .end local v49    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .end local v50    # "$changed\\16":I
    .end local v54    # "factory\\16":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v47 .. v47}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 326
    nop

    .line 290
    .end local v3    # "measurePolicy\\15":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v4    # "materialized\\15":Landroidx/compose/ui/Modifier;
    .end local v18    # "compositeKeyHash\\15":I
    .end local v22    # "modifier\\15":Landroidx/compose/ui/Modifier;
    .end local v33    # "$changed\\15":I
    .end local v42    # "$i$f$Layout\\15\\297":I
    .end local v47    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .end local v85    # "localMap\\15":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v45 .. v45}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 327
    nop

    .line 183
    .end local v19    # "horizontalArrangement\\14":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v34    # "$changed\\14":I
    .end local v35    # "$i$f$Row\\14\\174":I
    .end local v39    # "modifier\\14":Landroidx/compose/ui/Modifier;
    .end local v41    # "verticalAlignment\\14":Landroidx/compose/ui/Alignment$Vertical;
    .end local v43    # "measurePolicy\\14":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v45    # "$composer\\14":Landroidx/compose/runtime/Composer;
    nop

    .line 289
    .end local v31    # "$i$a$-forEach-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1$1$1$1\\13\\289\\7":I
    .end local v60    # "especialidad\\13":Ljava/lang/String;
    move-object/from16 v4, v32

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v51

    move-object/from16 v3, v53

    .end local v30    # "element\\12":Ljava/lang/Object;
    goto/16 :goto_2

    .line 328
    .end local v36    # "$this$forEach\\12":Ljava/lang/Iterable;
    .end local v37    # "$i$f$forEach\\12\\173":I
    .end local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v0, "$this$forEach\\12":Ljava/lang/Iterable;
    .local v1, "$i$f$forEach\\12\\173":I
    .local v2, "$composer\\7":Landroidx/compose/runtime/Composer;
    :cond_6
    move-object/from16 v36, v0

    move/from16 v37, v1

    move-object/from16 v51, v2

    .end local v0    # "$this$forEach\\12":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach\\12\\173":I
    .end local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v51 .. v51}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 159
    invoke-static/range {v51 .. v51}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 184
    nop

    .line 260
    .end local v51    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v55    # "$i$a$-Column-PrincipalClienteScreenKt$PrincipalClienteScreen$2$2$1$1$1\\7\\260\\0":I
    .end local v56    # "$this$PrincipalClienteScreen_u24lambda_u2418_u24lambda_u2417_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v57    # "$changed\\7":I
    invoke-static/range {v58 .. v58}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 284
    .end local v26    # "$changed\\6":I
    .end local v58    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v59    # "$i$a$-Layout-ColumnKt$Column$1\\6\\284\\2":I
    nop

    .line 329
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 269
    invoke-static/range {v28 .. v28}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 330
    nop

    .line 263
    .end local v20    # "$i$f$ReusableComposeNode\\4\\267":I
    .end local v23    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$changed\\4":I
    .end local v28    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 331
    nop

    .line 253
    .end local v6    # "compositeKeyHash\\3":I
    .end local v12    # "$changed\\3":I
    .end local v13    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v14    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v15    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "$i$f$Layout\\3\\259":I
    .end local v27    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v29    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 332
    nop

    .end local v7    # "$changed\\2":I
    .end local v8    # "$i$f$Column\\2\\156":I
    .end local v9    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v10    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v11    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v21    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v25    # "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 155
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 185
    :cond_8
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$19(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$7(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C71@3106L1101,71@3089L1118:PrincipalClienteScreen.kt#8o7o96"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous> (PrincipalClienteScreen.kt:71)"

    const v3, -0x7c129a5e

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 72
    :cond_1
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/material3/Typography;)V

    const/16 v1, 0x36

    const v3, 0x7a75697e

    invoke-static {v3, v2, v0, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const/high16 v11, 0x180000

    const/16 v12, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/NavigationDrawerKt;->ModalDrawerSheet-afqeVBk(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 71
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v10, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 104
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final PrincipalClienteScreen$lambda$7$lambda$6(Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 32
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$this$ModalDrawerSheet"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v4, p2

    move/from16 v0, p3

    const-string v1, "$this$ModalDrawerSheet"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C72@3124L165,77@3306L19,83@3550L3,78@3342L269,91@3839L3,86@3628L272,99@4132L3,94@3917L276:PrincipalClienteScreen.kt#8o7o96"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x11

    const/16 v3, 0x10

    const/4 v5, 0x1

    if-eq v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x1

    invoke-interface {v4, v1, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:72)"

    const v6, 0x7a75697e

    invoke-static {v6, v0, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 74
    :cond_1
    nop

    .line 75
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v3, 0x10

    .local v3, "$this$dp\\1":I
    const/4 v6, 0x0

    .line 224
    .local v6, "$i$f$getDp\\1\\75":I
    int-to-float v7, v3

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 75
    .end local v3    # "$this$dp\\1":I
    .end local v6    # "$i$f$getDp\\1\\75":I
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 73
    const-string v0, "Men\u00fa"

    const-wide/16 v2, 0x0

    move v6, v5

    const-wide/16 v4, 0x0

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v11, v9

    const-wide/16 v9, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v15, v13

    const-wide/16 v13, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    const/16 v22, 0x36

    const/16 v23, 0x0

    const v24, 0xfffc

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DividerKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 82
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 83
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 84
    const v0, -0x4d3ec67f

    const-string v13, "CC(remember):PrincipalClienteScreen.kt#9igjgp"

    invoke-static {v4, v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\2":Z
    move-object/from16 v6, p2

    .local v6, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 225
    .local v7, "$i$f$cache\\2\\84":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\2":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 226
    .local v9, "$i$a$-let-ComposerKt$cache$1\\3\\225\\2":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_2

    .line 227
    const/4 v10, 0x0

    .local v10, "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$1$1$1\\4\\227\\0":I
    new-instance v11, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda8;

    invoke-direct {v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda8;-><init>()V

    .line 228
    .end local v10    # "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$1$1$1\\4\\227\\0":I
    .local v11, "value\\3":Ljava/lang/Object;
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    move-object v8, v11

    .end local v11    # "value\\3":Ljava/lang/Object;
    goto :goto_1

    .line 230
    :cond_2
    nop

    .line 225
    .end local v8    # "it\\2":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1\\3\\225\\2":I
    :goto_1
    nop

    .line 84
    .end local v0    # "invalid\\2":Z
    .end local v6    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\2\\84":I
    move-object v10, v8

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/foundation/ClickableKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 85
    const/16 v5, 0x10

    .local v5, "$this$dp\\5":I
    const/4 v6, 0x0

    .line 231
    .local v6, "$i$f$getDp\\5\\85":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 85
    .end local v5    # "$this$dp\\5":I
    .end local v6    # "$i$f$getDp\\5\\85":I
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 80
    nop

    .line 85
    nop

    .line 81
    nop

    .line 79
    move v5, v1

    move-object v1, v0

    const-string v0, "Perfil"

    move-object v6, v2

    move v7, v3

    const-wide/16 v2, 0x0

    move v8, v5

    const-wide/16 v4, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    move v11, v7

    const/4 v7, 0x0

    move v10, v8

    const/4 v8, 0x0

    move-object v12, v9

    move v14, v10

    const-wide/16 v9, 0x0

    move v15, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v13

    move/from16 v18, v14

    const-wide/16 v13, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v21, v16

    const/16 v16, 0x0

    move-object/from16 v22, v17

    const/16 v17, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move/from16 v25, v19

    const/16 v19, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x6

    move/from16 v26, v23

    const/16 v23, 0x0

    move-object/from16 v27, v24

    const v24, 0xfffc

    move-object/from16 v21, p2

    move-object/from16 v28, v27

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 89
    move-object/from16 v4, v21

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 90
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 92
    const v0, -0x4d3ea25f

    move-object/from16 v13, v28

    invoke-static {v4, v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\6":Z
    move-object/from16 v6, p2

    .local v6, "$this$cache\\6":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 232
    .local v7, "$i$f$cache\\6\\92":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\6":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 233
    .local v9, "$i$a$-let-ComposerKt$cache$1\\7\\232\\6":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_3

    .line 234
    const/4 v10, 0x0

    .local v10, "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$1$1$2\\8\\234\\0":I
    new-instance v11, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda9;

    invoke-direct {v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda9;-><init>()V

    .line 235
    .end local v10    # "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$1$1$2\\8\\234\\0":I
    .local v11, "value\\7":Ljava/lang/Object;
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 236
    move-object v8, v11

    .end local v11    # "value\\7":Ljava/lang/Object;
    goto :goto_2

    .line 237
    :cond_3
    nop

    .line 232
    .end local v8    # "it\\6":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1\\7\\232\\6":I
    :goto_2
    nop

    .line 92
    .end local v0    # "invalid\\6":Z
    .end local v6    # "$this$cache\\6":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\6\\92":I
    move-object v10, v8

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/foundation/ClickableKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 93
    const/16 v5, 0x10

    .local v5, "$this$dp\\9":I
    const/4 v6, 0x0

    .line 238
    .local v6, "$i$f$getDp\\9\\93":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 93
    .end local v5    # "$this$dp\\9":I
    .end local v6    # "$i$f$getDp\\9\\93":I
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 88
    nop

    .line 93
    nop

    .line 89
    nop

    .line 87
    move-object v12, v1

    move-object v1, v0

    const-string v0, "Mis citas"

    move v14, v2

    move v7, v3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v11, v7

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move v15, v11

    const/4 v11, 0x0

    move-object/from16 v29, v12

    const/4 v12, 0x0

    move-object/from16 v28, v13

    move/from16 v30, v14

    const-wide/16 v13, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v25, v19

    const/16 v19, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0xfffc

    move-object/from16 v21, p2

    move-object/from16 v31, v28

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 97
    move-object/from16 v4, v21

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 98
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 99
    const/4 v7, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v0, v14, v7, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 100
    const v0, -0x4d3e7dbf

    move-object/from16 v13, v31

    invoke-static {v4, v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\10":Z
    move-object/from16 v1, p2

    .local v1, "$this$cache\\10":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$f$cache\\10\\100":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\10":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 240
    .local v5, "$i$a$-let-ComposerKt$cache$1\\11\\239\\10":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_4

    .line 241
    const/4 v6, 0x0

    .local v6, "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$1$1$3\\12\\241\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda10;-><init>()V

    .line 242
    .end local v6    # "$i$a$-cache-PrincipalClienteScreenKt$PrincipalClienteScreen$1$1$3\\12\\241\\0":I
    .local v7, "value\\11":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 243
    move-object v3, v7

    .end local v7    # "value\\11":Ljava/lang/Object;
    goto :goto_3

    .line 244
    :cond_4
    nop

    .line 239
    .end local v3    # "it\\10":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\11\\239\\10":I
    :goto_3
    nop

    .line 100
    .end local v0    # "invalid\\10":Z
    .end local v1    # "$this$cache\\10":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache\\10\\100":I
    move-object/from16 v26, v3

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v27, 0xf

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v21 .. v28}, Landroidx/compose/foundation/ClickableKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 101
    const/16 v1, 0x10

    .local v1, "$this$dp\\13":I
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$f$getDp\\13\\101":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 101
    .end local v1    # "$this$dp\\13":I
    .end local v2    # "$i$f$getDp\\13\\101":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 96
    nop

    .line 101
    nop

    .line 97
    nop

    .line 95
    const-string v0, "Cerrar sesi\u00f3n"

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

    const v24, 0xfffc

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 72
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 103
    :cond_6
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$7$lambda$6$lambda$1$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 84
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$7$lambda$6$lambda$3$lambda$2()Lkotlin/Unit;
    .locals 1

    .line 92
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PrincipalClienteScreen$lambda$7$lambda$6$lambda$5$lambda$4()Lkotlin/Unit;
    .locals 1

    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final PrincipalClienteScreenPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 196
    const v0, 0x4b9e02be    # 2.071078E7f

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v1, "C(PrincipalClienteScreenPreview)196@7510L23,196@7487L47:PrincipalClienteScreen.kt#8o7o96"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenPreview (PrincipalClienteScreen.kt:195)"

    invoke-static {v0, p1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-array v0, v1, [Landroidx/navigation/Navigator;

    .line 197
    invoke-static {v0, p0, v1}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, p0, v1, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 198
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method static final PrincipalClienteScreenPreview$lambda$20(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreenPreview(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
