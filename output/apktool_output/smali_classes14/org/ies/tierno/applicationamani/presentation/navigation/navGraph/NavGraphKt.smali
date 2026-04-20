.class public final Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;
.super Ljava/lang/Object;
.source "NavGraph.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\norg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt\n+ 2 ViewModel.kt\norg/koin/androidx/compose/ViewModelKt\n+ 3 Koin.kt\norg/koin/core/Koin\n+ 4 Scope.kt\norg/koin/core/scope/Scope\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,206:1\n49#2:207\n43#2,9:208\n49#2:224\n43#2,9:225\n49#2:240\n43#2,9:241\n130#3,4:217\n153#4:221\n85#5:222\n85#5:223\n1128#6,6:234\n1128#6,6:250\n1128#6,6:256\n*S KotlinDebug\n*F\n+ 1 NavGraph.kt\norg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt\n*L\n57#1:207\n57#1:208,9\n174#1:224\n174#1:225,9\n196#1:240\n196#1:241,9\n58#1:217,4\n58#1:221\n59#1:222\n60#1:223\n196#1:234,6\n200#1:250,6\n83#1:256,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u008a\u0084\u0002"
    }
    d2 = {
        "NavGraph",
        "",
        "navController",
        "Landroidx/navigation/NavHostController;",
        "startDestination",
        "",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V",
        "app",
        "session",
        "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
        "currentBackStackEntry",
        "Landroidx/navigation/NavBackStackEntry;"
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
.method public static final NavGraph(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "navController"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const v3, -0x3f9da2d3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(NavGraph)N(navController,startDestination)56@3517L15,58@3654L48,59@3750L30,68@4066L412,77@4485L4837,67@4036L5286:NavGraph.kt#cx1nnv"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v1, 0x6

    if-nez v5, :cond_1

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    :cond_1
    and-int/lit8 v5, v1, 0x30

    if-nez v5, :cond_4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2

    move-object/from16 v5, p1

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    move-object/from16 v5, p1

    :cond_3
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    :goto_2
    and-int/lit8 v6, v4, 0x13

    const/16 v7, 0x12

    const/4 v8, 0x0

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move v6, v8

    :goto_3
    and-int/lit8 v7, v4, 0x1

    invoke-interface {v9, v6, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 51
    :cond_6
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_8

    and-int/lit8 v4, v4, -0x71

    goto :goto_5

    .line 56
    :cond_7
    :goto_4
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_8

    .line 55
    sget-object v6, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;

    invoke-virtual {v6}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->getRoute()Ljava/lang/String;

    move-result-object v5

    .end local p1    # "startDestination":Ljava/lang/String;
    .local v5, "startDestination":Ljava/lang/String;
    and-int/lit8 v4, v4, -0x71

    move v14, v4

    move-object v13, v5

    goto :goto_6

    .line 51
    .end local v5    # "startDestination":Ljava/lang/String;
    .restart local p1    # "startDestination":Ljava/lang/String;
    :cond_8
    :goto_5
    move v14, v4

    move-object v13, v5

    .end local v4    # "$dirty":I
    .end local p1    # "startDestination":Ljava/lang/String;
    .local v13, "startDestination":Ljava/lang/String;
    .local v14, "$dirty":I
    :goto_6
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph (NavGraph.kt:55)"

    invoke-static {v3, v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 57
    :cond_9
    move v3, v8

    .local v3, "$changed\\1":I
    move-object v4, v9

    .local v4, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 207
    .local v5, "$i$f$koinViewModel\\1\\57":I
    const v6, -0x6040e0aa

    const-string v7, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 208
    const/16 v19, 0x0

    .line 209
    .local v19, "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    sget-object v6, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v7, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v6, v4, v7}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 210
    .local v6, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v17, 0x0

    .line 211
    .local v17, "key\\1":Ljava/lang/String;
    invoke-static {v6}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v18

    .line 212
    .local v18, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    invoke-static {v4, v8}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v20

    .line 213
    .local v20, "scope\\1":Lorg/koin/core/scope/Scope;
    const/16 v21, 0x0

    .local v21, "parameters\\1":Lkotlin/jvm/functions/Function0;
    const-class v7, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 216
    invoke-interface {v6}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v16

    .line 215
    invoke-static/range {v15 .. v21}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v7

    .line 207
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 215
    nop

    .line 57
    .end local v3    # "$changed\\1":I
    .end local v4    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$koinViewModel\\1\\57":I
    .end local v6    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v17    # "key\\1":Ljava/lang/String;
    .end local v18    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v19    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .end local v20    # "scope\\1":Lorg/koin/core/scope/Scope;
    .end local v21    # "parameters\\1":Lkotlin/jvm/functions/Function0;
    move-object v3, v7

    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 58
    .local v3, "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v4

    .line 217
    .local v4, "$this\\2":Lorg/koin/core/Koin;
    nop

    .line 218
    const/4 v5, 0x0

    .line 217
    .local v5, "qualifier\\2":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 219
    const/4 v6, 0x0

    .line 217
    .local v6, "parameters\\2":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$f$get\\2\\58":I
    invoke-virtual {v4}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v8

    invoke-virtual {v8}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v8

    .local v8, "this_\\3":Lorg/koin/core/scope/Scope;
    move-object v10, v6

    .local v10, "parameters\\3":Lkotlin/jvm/functions/Function0;
    move-object v11, v5

    .local v11, "qualifier\\3":Lorg/koin/core/qualifier/Qualifier;
    const/4 v15, 0x0

    .line 221
    .local v15, "$i$f$get\\3\\220":I
    const-class v16, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v8, v12, v11, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    .line 220
    .end local v8    # "this_\\3":Lorg/koin/core/scope/Scope;
    .end local v10    # "parameters\\3":Lkotlin/jvm/functions/Function0;
    .end local v11    # "qualifier\\3":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "$i$f$get\\3\\220":I
    nop

    .line 58
    .end local v4    # "$this\\2":Lorg/koin/core/Koin;
    .end local v5    # "qualifier\\2":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters\\2":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$get\\2\\58":I
    move-object v12, v8

    check-cast v12, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    .line 59
    .local v12, "userSessionDataStore":Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    invoke-virtual {v12}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->getSessionFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const/16 v10, 0x30

    const/16 v11, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v19

    .line 60
    .local v19, "session$delegate":Landroidx/compose/runtime/State;
    move-object v4, v0

    check-cast v4, Landroidx/navigation/NavController;

    and-int/lit8 v5, v14, 0xe

    invoke-static {v4, v9, v5}, Landroidx/navigation/compose/NavHostControllerKt;->currentBackStackEntryAsState(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 62
    .local v4, "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    invoke-static/range {v19 .. v19}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;->NavGraph$lambda$0(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/data/local/UserSession;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getRol()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_a

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v6, "admin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_8

    :sswitch_1
    const-string v6, "psic\u00f3loga"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    :sswitch_2
    const-string v6, "psicologo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    :sswitch_3
    const-string v6, "psicologa"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    .line 64
    :cond_b
    sget-object v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Psicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Psicologo;

    check-cast v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;

    goto :goto_9

    .line 62
    :sswitch_4
    const-string v6, "administrador"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_8

    .line 63
    :cond_c
    sget-object v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Admin;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Admin;

    check-cast v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;

    goto :goto_9

    .line 65
    :cond_d
    :goto_8
    sget-object v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Paciente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig$Paciente;

    check-cast v5, Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;

    .line 62
    :goto_9
    nop

    .line 69
    .local v5, "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda29;

    invoke-direct {v6, v0, v5, v4}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda29;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/runtime/State;)V

    const v7, 0x3e0d4dc8

    const/16 v8, 0x36

    const/4 v10, 0x1

    invoke-static {v7, v10, v6, v9, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 78
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda30;

    invoke-direct {v7, v0, v13, v3, v12}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda30;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V

    const v11, -0x3f7f0442

    invoke-static {v11, v10, v7, v9, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lkotlin/jvm/functions/Function3;

    .line 68
    move-object v7, v4

    .end local v4    # "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    .local v7, "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    const/4 v4, 0x0

    move-object v8, v5

    .end local v5    # "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .local v8, "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    const/4 v5, 0x0

    move-object v10, v7

    .end local v7    # "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    .local v10, "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    const/4 v7, 0x0

    move-object v11, v8

    .end local v8    # "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .local v11, "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    const/4 v8, 0x0

    move-object/from16 v16, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    .end local v10    # "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    .end local v11    # "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .local v17, "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    .local v18, "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    const-wide/16 v10, 0x0

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    .end local v12    # "userSessionDataStore":Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .end local v13    # "startDestination":Ljava/lang/String;
    .local v20, "userSessionDataStore":Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .local v21, "startDestination":Ljava/lang/String;
    const-wide/16 v12, 0x0

    move/from16 v22, v14

    .end local v14    # "$dirty":I
    .local v22, "$dirty":I
    const/4 v14, 0x0

    move-object/from16 v23, v17

    .end local v17    # "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    .local v23, "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    const v17, 0x30000180

    move-object/from16 v24, v18

    .end local v18    # "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .local v24, "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    const/16 v18, 0x1fb

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 206
    .end local v3    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .end local v19    # "session$delegate":Landroidx/compose/runtime/State;
    .end local v20    # "userSessionDataStore":Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .end local v23    # "currentBackStackEntry$delegate":Landroidx/compose/runtime/State;
    .end local v24    # "bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    :cond_e
    move-object/from16 v5, v21

    move/from16 v4, v22

    goto :goto_a

    .line 209
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "startDestination":Ljava/lang/String;
    .end local v22    # "$dirty":I
    .local v3, "$changed\\1":I
    .local v4, "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v5, "$i$f$koinViewModel\\1\\57":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "startDestination":Ljava/lang/String;
    .restart local v14    # "$dirty":I
    .local v19, "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v3    # "$changed\\1":I
    .end local v5    # "$i$f$koinViewModel\\1\\57":I
    .end local v13    # "startDestination":Ljava/lang/String;
    .end local v14    # "$dirty":I
    .end local v19    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .local v4, "$dirty":I
    .restart local p1    # "startDestination":Ljava/lang/String;
    :cond_10
    move-object/from16 v16, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 206
    .end local p1    # "startDestination":Ljava/lang/String;
    .local v5, "startDestination":Ljava/lang/String;
    :goto_a
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda31;

    invoke-direct {v6, v0, v5, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda31;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;II)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x26e07943 -> :sswitch_4
        -0x163b3db1 -> :sswitch_3
        -0x163b3da3 -> :sswitch_2
        -0xef71f2d -> :sswitch_1
        0x586034f -> :sswitch_0
    .end sparse-switch
.end method

.method private static final NavGraph$lambda$0(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/data/local/UserSession;
    .locals 4
    .param p0, "$session$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 222
    .local v3, "$i$f$getValue\\1\\59":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\59":I
    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 59
    return-object v0
.end method

.method private static final NavGraph$lambda$1(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;
    .locals 4
    .param p0, "$currentBackStackEntry$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 223
    .local v3, "$i$f$getValue\\1\\60":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\60":I
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 60
    return-object v0
.end method

.method static final NavGraph$lambda$2(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$bottomBarConfig"    # Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .param p2, "$currentBackStackEntry$delegate"    # Landroidx/compose/runtime/State;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "C:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p4, 0x1

    invoke-interface {p3, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous> (NavGraph.kt:69)"

    const v4, 0x3e0d4dc8

    invoke-static {v4, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 70
    :cond_1
    invoke-static {p2}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;->NavGraph$lambda$1(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 71
    .local v0, "currentRoute":Ljava/lang/String;
    :goto_1
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    .line 71
    :cond_4
    nop

    .line 74
    .local v2, "hideBottomBar":Z
    if-nez v2, :cond_5

    const v1, 0xe336e2c

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "74@4408L46"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 75
    move-object v3, p0

    check-cast v3, Landroidx/navigation/NavController;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p3

    .end local p1    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarKt;->AmaniBottomBar(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 74
    goto :goto_2

    .end local v4    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .restart local p3    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_5
    move-object v4, p1

    move-object v6, p3

    .end local p1    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    const p1, 0xdf0ed9a

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_2
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "currentRoute":Ljava/lang/String;
    .end local v2    # "hideBottomBar":Z
    goto :goto_3

    .line 69
    .end local v4    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .restart local p3    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_6
    move-object v4, p1

    move-object v6, p3

    .end local p1    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$bottomBarConfig":Lorg/ies/tierno/applicationamani/presentation/ui/componente/BottomBarConfig;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 77
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final NavGraph$lambda$35(Landroidx/navigation/NavHostController;Ljava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$startDestination"    # Ljava/lang/String;
    .param p2, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p3, "$userSessionDataStore"    # Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .param p4, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v11, p5

    const-string v3, "innerPadding"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(innerPadding)82@4676L4640,78@4511L4805:NavGraph.kt#cx1nnv"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p6

    .local v3, "$dirty":I
    and-int/lit8 v4, p6, 0x6

    if-nez v4, :cond_1

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous> (NavGraph.kt:78)"

    const v6, -0x3f7f0442

    invoke-static {v6, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 80
    :cond_3
    nop

    .line 81
    nop

    .line 82
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-static {v4, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 83
    const v5, -0x5bced1c2

    const-string v6, "CC(remember):NavGraph.kt#9igjgp"

    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    .local v5, "invalid\\1":Z
    move-object/from16 v6, p5

    .local v6, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 256
    .local v7, "$i$f$cache\\1\\83":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\1":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 257
    .local v9, "$i$a$-let-ComposerKt$cache$1\\2\\256\\1":I
    if-nez v5, :cond_5

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_4

    goto :goto_2

    .line 261
    :cond_4
    goto :goto_3

    .line 258
    :cond_5
    :goto_2
    const/4 v10, 0x0

    .line 83
    .local v10, "$i$a$-cache-NavGraphKt$NavGraph$2$1\\3\\258\\0":I
    new-instance v12, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v15, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V

    .line 258
    .end local v10    # "$i$a$-cache-NavGraphKt$NavGraph$2$1\\3\\258\\0":I
    nop

    .line 259
    .local v12, "value\\2":Ljava/lang/Object;
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    move-object v8, v12

    .line 256
    .end local v8    # "it\\1":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1\\2\\256\\1":I
    .end local v12    # "value\\2":Ljava/lang/Object;
    :goto_3
    nop

    .line 83
    .end local v5    # "invalid\\1":Z
    .end local v6    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\1\\83":I
    move-object v10, v8

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 79
    move v5, v3

    .end local v3    # "$dirty":I
    .local v5, "$dirty":I
    const/4 v3, 0x0

    move-object v2, v4

    const/4 v4, 0x0

    move v6, v5

    .end local v5    # "$dirty":I
    .local v6, "$dirty":I
    const/4 v5, 0x0

    move v7, v6

    .end local v6    # "$dirty":I
    .local v7, "$dirty":I
    const/4 v6, 0x0

    move v8, v7

    .end local v7    # "$dirty":I
    .local v8, "$dirty":I
    const/4 v7, 0x0

    move v9, v8

    .end local v8    # "$dirty":I
    .local v9, "$dirty":I
    const/4 v8, 0x0

    move v12, v9

    .end local v9    # "$dirty":I
    .local v12, "$dirty":I
    const/4 v9, 0x0

    move v13, v12

    .end local v12    # "$dirty":I
    .local v13, "$dirty":I
    const/4 v12, 0x0

    move v14, v13

    .end local v13    # "$dirty":I
    .local v14, "$dirty":I
    const/4 v13, 0x0

    move/from16 v16, v14

    .end local v14    # "$dirty":I
    .local v16, "$dirty":I
    const/16 v14, 0x3f8

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v14}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 78
    .end local v16    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_6
    move/from16 v16, v3

    .end local v3    # "$dirty":I
    .restart local v16    # "$dirty":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 205
    :cond_7
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;
    .locals 16
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$userSessionDataStore"    # Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .param p3, "$this$NavHost"    # Landroidx/navigation/NavGraphBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$NavHost"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavHostController;)V

    const v5, -0x736007df

    const/4 v15, 0x1

    invoke-static {v5, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    const/16 v13, 0xfe

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 87
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda12;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    const v3, 0x1c9b65d8

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 91
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda19;

    move-object/from16 v3, p2

    invoke-direct {v2, v3, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda19;-><init>(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavHostController;)V

    const v5, -0x15451467

    invoke-static {v5, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    const/4 v5, 0x0

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 94
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda20;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    const v3, -0x47258ea6

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 97
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$questionnaire;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$questionnaire;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$questionnaire;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda21;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x790608e5

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 100
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda22;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, 0x55197cdc

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 103
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda23;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, 0x2339029d

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 106
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    const v3, -0xea777a2

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 109
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda25;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda25;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x4087f1e1

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 112
    nop

    .line 113
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;->getRoute()Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda26;-><init>()V

    const-string v3, "pacienteId"

    invoke-static {v3, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v2

    .line 114
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 112
    nop

    .line 119
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    const v3, -0x72686c20

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    .line 112
    const/16 v13, 0xfc

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 127
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x22b03f34

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    const/16 v13, 0xfe

    const/4 v5, 0x0

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 130
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    const v3, -0x5490b973

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 133
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPacienteAdmin;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPacienteAdmin;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPacienteAdmin;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    const v3, 0x798ecc4e

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 136
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda6;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, 0x47ae520f

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 139
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, 0x15cdd7d0

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 142
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda8;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x1c12a26f

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 145
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$calendario;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$calendario;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$calendario;->getRoute()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;->getLambda$-1307778222$app()Lkotlin/jvm/functions/Function4;

    move-result-object v12

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 148
    nop

    .line 149
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;->getRoute()Ljava/lang/String;

    move-result-object v4

    .line 151
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda9;-><init>()V

    const-string v3, "psicologoId"

    invoke-static {v3, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v2

    .line 150
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 148
    nop

    .line 155
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda10;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x7fd396ed

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    .line 148
    const/16 v13, 0xfc

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 161
    nop

    .line 162
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;->getRoute()Ljava/lang/String;

    move-result-object v4

    .line 164
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "idPaciente"

    invoke-static {v3, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v2

    .line 163
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 161
    nop

    .line 168
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda13;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, 0x4e4beed4    # 8.5535667E8f

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    .line 161
    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 173
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;->getRoute()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda14;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, 0x1c6b7495

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    const/16 v13, 0xfe

    const/4 v5, 0x0

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 178
    nop

    .line 179
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;->getRoute()Ljava/lang/String;

    move-result-object v4

    .line 181
    const/4 v2, 0x3

    new-array v2, v2, [Landroidx/navigation/NamedNavArgument;

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda15;-><init>()V

    const-string v5, "currentUserId"

    invoke-static {v5, v3}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 184
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda16;-><init>()V

    const-string v5, "otherUserId"

    invoke-static {v5, v3}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v3

    aput-object v3, v2, v15

    .line 181
    nop

    .line 187
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda17;-><init>()V

    const-string v5, "otherUserName"

    invoke-static {v5, v3}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 181
    nop

    .line 180
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 178
    nop

    .line 191
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda18;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x2cdf0cd5

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    .line 178
    const/16 v13, 0xfc

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 204
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$10(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)106@5611L52:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:106)"

    const v2, -0xea777a2

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 107
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    invoke-static {v0, p1, p4, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt;->AgregaPsicologoScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 108
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$11(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)109@5739L25:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:109)"

    const v2, -0x4087f1e1

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 110
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->TestScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 111
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$12(Landroidx/navigation/NavArgumentBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$13(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backStackEntry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(backStackEntry)120@6131L174:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:119)"

    const v2, -0x72686c20

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p3}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pacienteId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v4, v0

    .line 122
    .local v4, "idPaciente":J
    move-object v2, p0

    check-cast v2, Landroidx/navigation/NavController;

    .line 123
    nop

    .line 124
    nop

    .line 121
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v3, p1

    move-object v7, p4

    .end local p1    # "$loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 126
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$14(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)127@6382L37:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:127)"

    const v2, -0x22b03f34

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 128
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->ListadoPacientesScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 129
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$15(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)130@6503L51:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:130)"

    const v2, -0x5490b973

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 131
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    invoke-static {v0, p1, p4, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 132
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$16(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)133@6646L64:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:133)"

    const v2, 0x798ecc4e

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 134
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    invoke-static {v0, p1, p4, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 135
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$17(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)136@6791L33:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:136)"

    const v2, 0x47ae520f

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 137
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt;->ViewAdminPrincipal(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 138
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$18(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)139@6911L36:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:139)"

    const v2, 0x15cdd7d0

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 140
    :cond_0
    move-object v3, p0

    check-cast v3, Landroidx/navigation/NavController;

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->PsicologoAgendaScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 141
    :cond_1
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p3
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$19(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)142@7024L26:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:142)"

    const v2, -0x1c12a26f

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->CitasScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 144
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$20(Landroidx/navigation/NavArgumentBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 153
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$21(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backStackEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(backStackEntry)156@7518L50:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:155)"

    const v2, -0x7fd396ed

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "psicologoId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v2, v0

    .line 157
    .local v2, "idPsicologo":J
    move-object v4, p0

    check-cast v4, Landroidx/navigation/NavController;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v6, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v8}, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;->PsicologoProfileScreen(JLandroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 158
    :cond_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p3
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$22(Landroidx/navigation/NavArgumentBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 166
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$23(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backStackEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(backStackEntry)169@7930L53:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:168)"

    const v2, 0x4e4beed4    # 8.5535667E8f

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "idPaciente"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v3, v0

    .line 170
    .local v3, "idPaciente":J
    move-object v2, p0

    check-cast v2, Landroidx/navigation/NavController;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v6, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;->ViewPacientePrincipalScreen(Landroidx/navigation/NavController;JLorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 171
    :cond_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p3
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$24(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    const-string v1, "$this$composable"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CN(it)173@8095L15,174@8127L68:NavGraph.kt#cx1nnv"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:173)"

    const v5, 0x1c6b7495

    move/from16 v6, p4

    invoke-static {v5, v6, v1, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    .line 174
    :goto_0
    move-object/from16 v1, p3

    .local v1, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "$changed\\1":I
    const/4 v7, 0x0

    .line 224
    .local v7, "$i$f$koinViewModel\\1\\174":I
    const v8, -0x6040e0aa

    const-string v9, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {v1, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 225
    const/4 v14, 0x0

    .line 226
    .local v14, "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    sget-object v8, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v9, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v8, v1, v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 227
    .local v8, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/4 v12, 0x0

    .line 228
    .local v12, "key\\1":Ljava/lang/String;
    invoke-static {v8}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v13

    .line 229
    .local v13, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    invoke-static {v1, v4}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v15

    .line 230
    .local v15, "scope\\1":Lorg/koin/core/scope/Scope;
    const/16 v16, 0x0

    .local v16, "parameters\\1":Lkotlin/jvm/functions/Function0;
    const-class v9, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 233
    invoke-interface {v8}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v11

    .line 232
    invoke-static/range {v10 .. v16}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v9

    .line 224
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 232
    nop

    .line 174
    .end local v1    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "$changed\\1":I
    .end local v7    # "$i$f$koinViewModel\\1\\174":I
    .end local v8    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v12    # "key\\1":Ljava/lang/String;
    .end local v13    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v14    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "scope\\1":Lorg/koin/core/scope/Scope;
    .end local v16    # "parameters\\1":Lkotlin/jvm/functions/Function0;
    move-object v1, v9

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    .line 175
    .local v1, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;
    move-object/from16 v5, p0

    check-cast v5, Landroidx/navigation/NavController;

    invoke-static {v5, v1, v0, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 176
    :cond_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 226
    .local v1, "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$changed\\1":I
    .restart local v7    # "$i$f$koinViewModel\\1\\174":I
    .restart local v14    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v8, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$25(Landroidx/navigation/NavArgumentBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 183
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$26(Landroidx/navigation/NavArgumentBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 186
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$27(Landroidx/navigation/NavArgumentBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 189
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$3(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)84@4744L24:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:84)"

    const v2, -0x736007df

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 85
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalKt;->Principal(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 86
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$32(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    const-string v1, "$this$composable"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backStackEntry"

    move-object/from16 v8, p2

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CN(backStackEntry)195@9036L44,195@9009L72,199@9191L32,197@9099L193:NavGraph.kt#cx1nnv"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:191)"

    const v3, -0x2cdf0cd5

    move/from16 v9, p4

    invoke-static {v3, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v9, p4

    .line 192
    :goto_0
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const-string v5, "currentUserId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v2

    :goto_1
    move-wide v10, v5

    .line 193
    .local v10, "currentUserId":J
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "otherUserId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    move-wide v12, v2

    .line 194
    .local v12, "otherUserId":J
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "otherUserName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ""

    :cond_4
    move-object v3, v1

    .line 196
    .local v3, "otherUserName":Ljava/lang/String;
    const v1, -0x714efce9

    const-string v2, "CC(remember):NavGraph.kt#9igjgp"

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    invoke-interface {v4, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    or-int/2addr v1, v5

    .local v1, "invalid\\1":Z
    move-object/from16 v5, p3

    .local v5, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 234
    .local v6, "$i$f$cache\\1\\196":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it\\1":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 235
    .local v15, "$i$a$-let-ComposerKt$cache$1\\2\\234\\1":I
    if-nez v1, :cond_6

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v17, v1

    .end local v1    # "invalid\\1":Z
    .local v17, "invalid\\1":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_5

    goto :goto_2

    .line 239
    :cond_5
    goto :goto_3

    .line 235
    .end local v17    # "invalid\\1":Z
    .restart local v1    # "invalid\\1":Z
    :cond_6
    move/from16 v17, v1

    .line 236
    .end local v1    # "invalid\\1":Z
    .restart local v17    # "invalid\\1":Z
    :goto_2
    const/4 v1, 0x0

    .line 196
    .local v1, "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$viewModel$1\\3\\236\\0":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$viewModel$1\\3\\236\\0":I
    .local v16, "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$viewModel$1\\3\\236\\0":I
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;

    invoke-direct {v1, v10, v11, v12, v13}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;-><init>(JJ)V

    .line 236
    .end local v16    # "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$viewModel$1\\3\\236\\0":I
    nop

    .line 237
    .local v1, "value\\2":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    move-object v14, v1

    .line 234
    .end local v1    # "value\\2":Ljava/lang/Object;
    .end local v14    # "it\\1":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1\\2\\234\\1":I
    :goto_3
    nop

    .line 196
    .end local v5    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache\\1\\196":I
    .end local v17    # "invalid\\1":Z
    move-object/from16 v24, v14

    check-cast v24, Lkotlin/jvm/functions/Function0;

    .local v24, "parameters\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    .local v1, "$changed\\4":I
    move-object/from16 v5, p3

    .local v5, "$composer\\4":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 240
    .local v6, "$i$f$koinViewModel\\4\\196":I
    const v14, -0x6040e0aa

    const-string v15, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {v5, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 241
    const/16 v22, 0x0

    .line 242
    .local v22, "qualifier\\4":Lorg/koin/core/qualifier/Qualifier;
    sget-object v14, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v15, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v14, v5, v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 243
    .local v14, "viewModelStoreOwner\\4":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v20, 0x0

    .line 244
    .local v20, "key\\4":Ljava/lang/String;
    invoke-static {v14}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v21

    .line 245
    .local v21, "extras\\4":Landroidx/lifecycle/viewmodel/CreationExtras;
    const/4 v15, 0x0

    invoke-static {v5, v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v23

    .local v23, "scope\\4":Lorg/koin/core/scope/Scope;
    const-class v15, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    .line 249
    invoke-interface {v14}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v19

    .line 248
    invoke-static/range {v18 .. v24}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v15

    .line 240
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 248
    nop

    .line 196
    .end local v1    # "$changed\\4":I
    .end local v5    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$koinViewModel\\4\\196":I
    .end local v14    # "viewModelStoreOwner\\4":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v20    # "key\\4":Ljava/lang/String;
    .end local v21    # "extras\\4":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v22    # "qualifier\\4":Lorg/koin/core/qualifier/Qualifier;
    .end local v23    # "scope\\4":Lorg/koin/core/scope/Scope;
    .end local v24    # "parameters\\4":Lkotlin/jvm/functions/Function0;
    move-object v1, v15

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 199
    .local v1, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    nop

    .line 200
    const v5, -0x714ee995

    invoke-static {v4, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\5":Z
    move-object/from16 v5, p3

    .local v5, "$this$cache\\5":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 250
    .local v6, "$i$f$cache\\5\\200":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it\\5":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 251
    .local v15, "$i$a$-let-ComposerKt$cache$1\\6\\250\\5":I
    if-nez v2, :cond_8

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v17, v1

    .end local v1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    .local v17, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_7

    goto :goto_4

    .line 255
    :cond_7
    goto :goto_5

    .line 251
    .end local v17    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    .restart local v1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    :cond_8
    move-object/from16 v17, v1

    .line 252
    .end local v1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    .restart local v17    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    :goto_4
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$1\\7\\252\\0":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$1\\7\\252\\0":I
    .local v16, "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$1\\7\\252\\0":I
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda28;-><init>(Landroidx/navigation/NavHostController;)V

    .line 252
    .end local v16    # "$i$a$-cache-NavGraphKt$NavGraph$2$1$1$26$1\\7\\252\\0":I
    nop

    .line 253
    .local v1, "value\\6":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 254
    move-object v14, v1

    .line 250
    .end local v1    # "value\\6":Ljava/lang/Object;
    .end local v14    # "it\\5":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1\\6\\250\\5":I
    :goto_5
    nop

    .line 200
    .end local v2    # "invalid\\5":Z
    .end local v5    # "$this$cache\\5":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache\\5\\200":I
    move-object v2, v14

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 201
    nop

    .line 198
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v17

    .end local v17    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    .local v1, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    invoke-static/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->ChatScreen(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 203
    :cond_9
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 242
    .local v1, "$changed\\4":I
    .local v5, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v6, "$i$f$koinViewModel\\4\\196":I
    .restart local v22    # "qualifier\\4":Lorg/koin/core/qualifier/Qualifier;
    .restart local v24    # "parameters\\4":Lkotlin/jvm/functions/Function0;
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$32$lambda$29$lambda$28(JJ)Lorg/koin/core/parameter/ParametersHolder;
    .locals 2
    .param p0, "$currentUserId"    # J
    .param p2, "$otherUserId"    # J

    .line 196
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$32$lambda$31$lambda$30(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;

    .line 200
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$4(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)87@4845L42:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:87)"

    const v2, 0x1c9b65d8

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 88
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    invoke-static {v0, p1, p4, v1, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 89
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$5(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10
    .param p0, "$userSessionDataStore"    # Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .param p1, "$navController"    # Landroidx/navigation/NavHostController;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)91@4973L58:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:91)"

    const v2, -0x15451467

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 92
    :cond_0
    move-object v4, p1

    check-cast v4, Landroidx/navigation/NavController;

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, p4

    .end local p0    # "$userSessionDataStore":Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$userSessionDataStore":Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->ViewPsicologoPrincipal(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 93
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$6(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)94@5111L45:NavGraph.kt#cx1nnv"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:94)"

    const v2, -0x47258ea6

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 95
    :cond_0
    move-object v3, p0

    check-cast v3, Landroidx/navigation/NavController;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p4

    .end local p1    # "$loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;->RegisterScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 96
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$7(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)97@5241L34:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:97)"

    const v2, -0x790608e5

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 98
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;->QuestionnaireScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 99
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$8(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)100@5363L37:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:100)"

    const v2, 0x55197cdc

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 101
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 102
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$35$lambda$34$lambda$33$lambda$9(Landroidx/navigation/NavHostController;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)103@5487L36:NavGraph.kt#cx1nnv"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph.<anonymous>.<anonymous>.<anonymous>.<anonymous> (NavGraph.kt:103)"

    const v2, 0x2339029d

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 104
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, p3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/SettingsClienteScreenKt;->SettingsClienteScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 105
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final NavGraph$lambda$36(Landroidx/navigation/NavHostController;Ljava/lang/String;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;->NavGraph(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
