.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;
.super Ljava/lang/Object;
.source "ListadoPsicologosScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListadoPsicologosScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListadoPsicologosScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt\n+ 2 ViewModel.kt\norg/koin/androidx/compose/ViewModelKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 8 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,217:1\n49#2:218\n43#2,9:219\n599#3:228\n596#3,6:229\n1128#4,3:235\n1131#4,3:239\n1128#4,6:242\n1128#4,6:248\n1128#4,6:254\n1128#4,6:268\n1128#4,6:287\n1128#4,6:293\n1128#4,6:301\n1128#4,6:307\n597#5:238\n85#6:260\n85#6:261\n117#6,2:262\n85#6:264\n117#6,2:265\n122#7:267\n122#7:299\n122#7:300\n168#8,13:274\n*S KotlinDebug\n*F\n+ 1 ListadoPsicologosScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt\n*L\n57#1:218\n57#1:219,9\n60#1:228\n60#1:229,6\n60#1:235,3\n60#1:239,3\n61#1:242,6\n62#1:248,6\n63#1:254,6\n79#1:268,6\n198#1:287,6\n210#1:293,6\n96#1:301,6\n188#1:307,6\n60#1:238\n59#1:260\n62#1:261\n62#1:262,2\n63#1:264\n63#1:265,2\n83#1:267\n94#1:299\n95#1:300\n97#1:274,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b\u00b2\u0006\u0010\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0010\u001a\u00020\u0011X\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0012\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u008a\u0084\u0002"
    }
    d2 = {
        "ListadoPsicologosScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "loginViewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
        "pacienteId",
        "",
        "viewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V",
        "app",
        "psicologos",
        "",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
        "psicologoSeleccionado",
        "mostrarDialogoBaja",
        "",
        "asignarSuccess",
        "asignarError",
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
.method public static final ListadoPsicologosScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 39
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "pacienteId"    # J
    .param p4, "viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p6

    const-string v3, "navController"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loginViewModel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const v3, 0xf5aeeb4

    move-object/from16 v4, p5

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(ListadoPsicologosScreen)N(navController,loginViewModel,pacienteId,viewModel)58@2687L16,59@2720L24,60@2773L32,61@2839L60,62@2930L34,74@3254L61,75@3340L35,76@3408L402,87@3817L5864,72@3185L6496:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p6

    .local v5, "$dirty":I
    and-int/lit8 v6, v0, 0x6

    if-nez v6, :cond_1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v0, 0x30

    if-nez v6, :cond_3

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v0, 0x180

    if-nez v6, :cond_5

    move-wide/from16 v8, p2

    invoke-interface {v4, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v8, p2

    :goto_3
    and-int/lit16 v6, v0, 0xc00

    if-nez v6, :cond_8

    and-int/lit8 v6, p7, 0x8

    if-nez v6, :cond_6

    move-object/from16 v6, p4

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x800

    goto :goto_4

    :cond_6
    move-object/from16 v6, p4

    :cond_7
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v5, v10

    goto :goto_5

    :cond_8
    move-object/from16 v6, p4

    :goto_5
    and-int/lit16 v10, v5, 0x493

    const/16 v11, 0x492

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v10, v11, :cond_9

    move v10, v13

    goto :goto_6

    :cond_9
    move v10, v12

    :goto_6
    and-int/lit8 v11, v5, 0x1

    invoke-interface {v4, v10, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v10, "56@2624L15"

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_b

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_7

    .line 51
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v10, p7, 0x8

    if-eqz v10, :cond_d

    and-int/lit16 v5, v5, -0x1c01

    goto :goto_8

    .line 58
    :cond_b
    :goto_7
    and-int/lit8 v10, p7, 0x8

    if-eqz v10, :cond_d

    .line 57
    const/4 v10, 0x0

    .local v10, "$changed\\1":I
    move-object v11, v4

    .local v11, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 218
    .local v14, "$i$f$koinViewModel\\1\\57":I
    const v15, -0x6040e0aa

    const-string v7, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {v11, v15, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 219
    const/16 v20, 0x0

    .line 220
    .local v20, "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    sget-object v7, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v15, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v7, v11, v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 221
    .local v7, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v18, 0x0

    .line 222
    .local v18, "key\\1":Ljava/lang/String;
    invoke-static {v7}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v19

    .line 223
    .local v19, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    invoke-static {v11, v12}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v21

    .line 224
    .local v21, "scope\\1":Lorg/koin/core/scope/Scope;
    const/16 v22, 0x0

    .local v22, "parameters\\1":Lkotlin/jvm/functions/Function0;
    const-class v15, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    .line 227
    invoke-interface {v7}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v17

    .line 226
    invoke-static/range {v16 .. v22}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v15

    .line 218
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 226
    nop

    .end local v7    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v10    # "$changed\\1":I
    .end local v11    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$koinViewModel\\1\\57":I
    .end local v18    # "key\\1":Ljava/lang/String;
    .end local v19    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v20    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .end local v21    # "scope\\1":Lorg/koin/core/scope/Scope;
    .end local v22    # "parameters\\1":Lkotlin/jvm/functions/Function0;
    move-object v6, v15

    check-cast v6, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;

    .end local p4    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .local v6, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    and-int/lit16 v5, v5, -0x1c01

    move-object/from16 v19, v6

    goto :goto_9

    .line 220
    .end local v6    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .restart local v10    # "$changed\\1":I
    .restart local v11    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$i$f$koinViewModel\\1\\57":I
    .restart local v20    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .restart local p4    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    :cond_c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    .end local v10    # "$changed\\1":I
    .end local v11    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$koinViewModel\\1\\57":I
    .end local v20    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    :cond_d
    :goto_8
    move-object/from16 v19, v6

    .end local p4    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .local v19, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    :goto_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen (ListadoPsicologosScreen.kt:57)"

    invoke-static {v3, v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 59
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;->getPsicologos()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 60
    .local v3, "psicologos$delegate":Landroidx/compose/runtime/State;
    move-object v7, v4

    .local v7, "$composer\\2":Landroidx/compose/runtime/Composer;
    move v10, v12

    .local v10, "$changed\\2":I
    const/4 v11, 0x0

    .line 228
    .local v11, "$i$f$rememberCoroutineScope\\2\\60":I
    const v14, 0x2e20b340

    const-string v15, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    invoke-static {v7, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 229
    nop

    .line 233
    move-object v14, v7

    .line 234
    .local v14, "composer\\2":Landroidx/compose/runtime/Composer;
    const v15, 0x28c0fdc4

    move/from16 v16, v12

    const-string v12, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v7, v15, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "invalid\\3":Z
    move-object v15, v7

    .local v15, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 235
    .local v17, "$i$f$cache\\3\\234":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\3":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 236
    .local v20, "$i$a$-let-ComposerKt$cache$1\\4\\235\\3":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v13, v6, :cond_f

    .line 237
    const/4 v6, 0x0

    .line 234
    .local v6, "$i$a$-cache-EffectsKt$rememberCoroutineScope$2\\5\\237\\2":I
    const/16 v21, 0x0

    .line 238
    .local v21, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1\\6\\234\\0":I
    sget-object v21, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 234
    .end local v21    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1\\6\\234\\0":I
    move-object/from16 v0, v21

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v14}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 237
    .end local v6    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$2\\5\\237\\2":I
    nop

    .line 239
    .local v0, "value\\4":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 240
    move-object v13, v0

    .end local v0    # "value\\4":Ljava/lang/Object;
    goto :goto_a

    .line 241
    :cond_f
    nop

    .line 235
    .end local v13    # "it\\3":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1\\4\\235\\3":I
    :goto_a
    nop

    .line 234
    .end local v12    # "invalid\\3":Z
    .end local v15    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache\\3\\234":I
    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 228
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 234
    nop

    .line 60
    .end local v7    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v10    # "$changed\\2":I
    .end local v11    # "$i$f$rememberCoroutineScope\\2\\60":I
    .end local v14    # "composer\\2":Landroidx/compose/runtime/Composer;
    nop

    .line 61
    .local v13, "scope":Lkotlinx/coroutines/CoroutineScope;
    const v0, -0x5ba5bfec

    const-string v6, "CC(remember):ListadoPsicologosScreen.kt#9igjgp"

    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\7":Z
    move-object v7, v4

    .local v7, "$this$cache\\7":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 242
    .local v10, "$i$f$cache\\7\\61":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it\\7":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 243
    .local v12, "$i$a$-let-ComposerKt$cache$1\\8\\242\\7":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_10

    .line 244
    const/4 v14, 0x0

    .line 61
    .local v14, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$snackbarHostState$1\\9\\244\\0":I
    new-instance v15, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v15}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    .line 244
    .end local v14    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$snackbarHostState$1\\9\\244\\0":I
    nop

    .line 245
    .local v15, "value\\8":Ljava/lang/Object;
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    move-object v11, v15

    .end local v15    # "value\\8":Ljava/lang/Object;
    goto :goto_b

    .line 247
    :cond_10
    nop

    .line 242
    .end local v11    # "it\\7":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1\\8\\242\\7":I
    :goto_b
    nop

    .line 61
    .end local v0    # "invalid\\7":Z
    .end local v7    # "$this$cache\\7":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache\\7\\61":I
    move-object v0, v11

    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    .local v0, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 62
    const v7, -0x5ba5b790

    invoke-static {v4, v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid\\10":Z
    move-object v10, v4

    .local v10, "$this$cache\\10":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 248
    .local v11, "$i$f$cache\\10\\62":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it\\10":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 249
    .local v14, "$i$a$-let-ComposerKt$cache$1\\11\\248\\10":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v12, v15, :cond_11

    .line 250
    const/4 v15, 0x0

    .line 62
    .local v15, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$psicologoSeleccionado$2\\12\\250\\0":I
    move-object/from16 v17, v3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .end local v3    # "psicologos$delegate":Landroidx/compose/runtime/State;
    .local v17, "psicologos$delegate":Landroidx/compose/runtime/State;
    invoke-static {v3, v3, v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    .line 250
    .end local v15    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$psicologoSeleccionado$2\\12\\250\\0":I
    nop

    .line 251
    .local v15, "value\\11":Ljava/lang/Object;
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    move-object v12, v15

    .end local v15    # "value\\11":Ljava/lang/Object;
    goto :goto_c

    .line 253
    .end local v17    # "psicologos$delegate":Landroidx/compose/runtime/State;
    .restart local v3    # "psicologos$delegate":Landroidx/compose/runtime/State;
    :cond_11
    move-object/from16 v17, v3

    .line 248
    .end local v3    # "psicologos$delegate":Landroidx/compose/runtime/State;
    .end local v12    # "it\\10":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1\\11\\248\\10":I
    .restart local v17    # "psicologos$delegate":Landroidx/compose/runtime/State;
    :goto_c
    nop

    .line 62
    .end local v7    # "invalid\\10":Z
    .end local v10    # "$this$cache\\10":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache\\10\\62":I
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/MutableState;

    .local v15, "psicologoSeleccionado$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 63
    const v2, -0x5ba5ac4a

    invoke-static {v4, v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\13":Z
    move-object v3, v4

    .local v3, "$this$cache\\13":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 254
    .local v6, "$i$f$cache\\13\\63":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it\\13":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 255
    .local v10, "$i$a$-let-ComposerKt$cache$1\\14\\254\\13":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v7, v11, :cond_12

    .line 256
    const/4 v11, 0x0

    .line 63
    .local v11, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$mostrarDialogoBaja$2\\15\\256\\0":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move/from16 p4, v2

    const/4 v2, 0x0

    const/4 v14, 0x2

    .end local v2    # "invalid\\13":Z
    .local p4, "invalid\\13":Z
    invoke-static {v12, v2, v14, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 256
    .end local v11    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$mostrarDialogoBaja$2\\15\\256\\0":I
    nop

    .line 257
    .local v2, "value\\14":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    move-object v7, v2

    .end local v2    # "value\\14":Ljava/lang/Object;
    goto :goto_d

    .line 259
    .end local p4    # "invalid\\13":Z
    .local v2, "invalid\\13":Z
    :cond_12
    move/from16 p4, v2

    .line 254
    .end local v2    # "invalid\\13":Z
    .end local v7    # "it\\13":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1\\14\\254\\13":I
    .restart local p4    # "invalid\\13":Z
    :goto_d
    nop

    .line 63
    .end local v3    # "$this$cache\\13":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache\\13\\63":I
    .end local p4    # "invalid\\13":Z
    move-object/from16 v16, v7

    check-cast v16, Landroidx/compose/runtime/MutableState;

    .local v16, "mostrarDialogoBaja$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 65
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getRoboto()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v10

    .line 66
    .local v10, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    const/4 v2, 0x1

    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getBarlowCondensed()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v18

    .line 68
    .local v18, "balow":Landroidx/compose/ui/text/font/FontFamily;
    const-wide v6, 0xfff5f5f5L

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v20

    .line 69
    .local v20, "backgroundColor":J
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v6

    .line 70
    .local v6, "cardColor":J
    const-wide v11, 0xff6c63ffL

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v11

    .line 71
    .local v11, "primaryColor":J
    const-wide v22, 0xffd32f2fL

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v22

    .line 75
    .local v22, "deleteColor":J
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    const v14, 0x75ef1470

    const/16 v1, 0x36

    invoke-static {v14, v2, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lkotlin/jvm/functions/Function2;

    .line 76
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/SnackbarHostState;)V

    const v14, 0x3c1fb9ae

    invoke-static {v14, v2, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lkotlin/jvm/functions/Function2;

    .line 77
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v3, v11, v12}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda2;-><init>(J)V

    const v14, 0x1f380c4d

    invoke-static {v14, v2, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lkotlin/jvm/functions/Function2;

    .line 74
    nop

    .line 88
    move v3, v2

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda3;

    move-wide/from16 v37, v22

    move/from16 v22, v5

    move-object v5, v13

    move-wide/from16 v13, v37

    move-wide/from16 v37, v8

    move-wide v8, v6

    move-wide/from16 v6, v37

    move-object/from16 v3, v17

    move-object/from16 v17, v0

    move-object v0, v4

    move-object/from16 v4, p1

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "cardColor":J
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "psicologos$delegate":Landroidx/compose/runtime/State;
    .local v5, "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v8, "cardColor":J
    .local v13, "deleteColor":J
    .local v17, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v22, "$dirty":I
    invoke-direct/range {v2 .. v18}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/text/font/FontFamily;)V

    move-object v4, v2

    move-object v2, v5

    move-wide/from16 v31, v8

    move-object/from16 v29, v10

    move-wide/from16 v33, v11

    move-wide/from16 v35, v13

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move-object/from16 v23, v17

    move-object/from16 v30, v18

    .end local v5    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local v8    # "cardColor":J
    .end local v10    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .end local v11    # "primaryColor":J
    .end local v13    # "deleteColor":J
    .end local v15    # "psicologoSeleccionado$delegate":Landroidx/compose/runtime/MutableState;
    .end local v16    # "mostrarDialogoBaja$delegate":Landroidx/compose/runtime/MutableState;
    .end local v17    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local v18    # "balow":Landroidx/compose/ui/text/font/FontFamily;
    .local v2, "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v23, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v27, "psicologoSeleccionado$delegate":Landroidx/compose/runtime/MutableState;
    .local v28, "mostrarDialogoBaja$delegate":Landroidx/compose/runtime/MutableState;
    .local v29, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .local v30, "balow":Landroidx/compose/ui/text/font/FontFamily;
    .local v31, "cardColor":J
    .local v33, "primaryColor":J
    .local v35, "deleteColor":J
    const v5, -0x4aa46b7b    # -8.179998E-7f

    const/4 v6, 0x1

    invoke-static {v5, v6, v4, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function3;

    .line 73
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const v17, 0x30186c30

    const/16 v18, 0x1a5

    move-object/from16 v16, v0

    move-wide/from16 v10, v20

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "backgroundColor":J
    .local v10, "backgroundColor":J
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 217
    .end local v2    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local v3    # "psicologos$delegate":Landroidx/compose/runtime/State;
    .end local v10    # "backgroundColor":J
    .end local v23    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local v27    # "psicologoSeleccionado$delegate":Landroidx/compose/runtime/MutableState;
    .end local v28    # "mostrarDialogoBaja$delegate":Landroidx/compose/runtime/MutableState;
    .end local v29    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .end local v30    # "balow":Landroidx/compose/ui/text/font/FontFamily;
    .end local v31    # "cardColor":J
    .end local v33    # "primaryColor":J
    .end local v35    # "deleteColor":J
    :cond_13
    move-object/from16 v5, v19

    goto :goto_e

    .line 51
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .end local v22    # "$dirty":I
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$dirty":I
    .local p4, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    :cond_14
    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v22, v5

    move-object v5, v6

    .line 217
    .end local p4    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .local v5, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;
    .restart local v22    # "$dirty":I
    :goto_e
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;II)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method private static final ListadoPsicologosScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$psicologos$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;"
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

    .line 260
    .local v3, "$i$f$getValue\\1\\59":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\59":I
    check-cast v0, Ljava/util/List;

    .line 59
    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$12(JLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 14
    .param p0, "$primaryColor"    # J
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v10, p2

    move/from16 v13, p3

    const-string v0, "C78@3470L105,77@3422L378:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v13, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v13, 0x1

    invoke-interface {v10, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:77)"

    const v2, 0x1f380c4d

    invoke-static {v2, v13, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 83
    :cond_1
    const/16 v0, 0x32

    .local v0, "$this$dp\\1":I
    const/4 v1, 0x0

    .line 267
    .local v1, "$i$f$getDp\\1\\83":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 83
    .end local v0    # "$this$dp\\1":I
    .end local v1    # "$i$f$getDp\\1\\83":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    .line 79
    const v1, 0x31663536

    const-string v2, "CC(remember):ListadoPsicologosScreen.kt#9igjgp"

    invoke-static {v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\2":Z
    move-object/from16 v2, p2

    .local v2, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 268
    .local v3, "$i$f$cache\\2\\79":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\2":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 269
    .local v5, "$i$a$-let-ComposerKt$cache$1\\3\\268\\2":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 270
    const/4 v6, 0x0

    .local v6, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$3$1\\4\\270\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda5;-><init>()V

    .line 271
    .end local v6    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$3$1\\4\\270\\0":I
    .local v7, "value\\3":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 272
    move-object v4, v7

    .end local v7    # "value\\3":Ljava/lang/Object;
    goto :goto_1

    .line 273
    :cond_2
    nop

    .line 268
    .end local v4    # "it\\2":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\3\\268\\2":I
    :goto_1
    nop

    .line 79
    .end local v1    # "invalid\\2":Z
    .end local v2    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\2\\79":I
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 83
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    .line 82
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ComposableSingletons$ListadoPsicologosScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ComposableSingletons$ListadoPsicologosScreenKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ComposableSingletons$ListadoPsicologosScreenKt;->getLambda$-1826493045$app()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .line 78
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v11, 0xc00c06

    const/16 v12, 0x72

    move-object v0, v4

    move-wide v3, p0

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 77
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 87
    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$12$lambda$11$lambda$10()Lkotlin/Unit;
    .locals 1

    .line 81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28(Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 26
    .param p0, "$psicologos$delegate"    # Landroidx/compose/runtime/State;
    .param p1, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p3, "$pacienteId"    # J
    .param p5, "$cardColor"    # J
    .param p7, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p8, "$primaryColor"    # J
    .param p10, "$deleteColor"    # J
    .param p12, "$psicologoSeleccionado$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p13, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p14, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p15, "$balow"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p16, "padding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p17, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p18, "$changed"    # I

    move-object/from16 v8, p2

    move-object/from16 v0, p16

    move-object/from16 v1, p17

    const-string v2, "padding"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CN(padding)95@4053L4346,89@3839L4560:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p18

    .local v2, "$dirty":I
    and-int/lit8 v3, p18, 0x6

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

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:89)"

    const v6, -0x4aa46b7b    # -8.179998E-7f

    invoke-static {v6, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 91
    :cond_3
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 92
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 93
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 94
    const/16 v4, 0x10

    .local v4, "$this$dp\\1":I
    const/4 v6, 0x0

    .line 299
    .local v6, "$i$f$getDp\\1\\94":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 94
    .end local v4    # "$this$dp\\1":I
    .end local v6    # "$i$f$getDp\\1\\94":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 95
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v4, 0xc

    .local v4, "$this$dp\\2":I
    const/4 v6, 0x0

    .line 300
    .local v6, "$i$f$getDp\\2\\95":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 95
    .end local v4    # "$this$dp\\2":I
    .end local v6    # "$i$f$getDp\\2\\95":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 96
    const v3, -0x33374a41

    const-string v4, "CC(remember):ListadoPsicologosScreen.kt#9igjgp"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v7, p1

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    move-wide/from16 v9, p3

    invoke-interface {v1, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    or-int v18, v6, v11

    .local v18, "invalid\\3":Z
    move-object/from16 v6, p17

    .local v6, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 301
    .local v19, "$i$f$cache\\3\\96":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it\\3":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 302
    .local v20, "$i$a$-let-ComposerKt$cache$1\\4\\301\\3":I
    if-nez v18, :cond_5

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_4

    goto :goto_2

    .line 306
    :cond_4
    move-object/from16 v14, p7

    move-object/from16 v15, p13

    move/from16 v22, v2

    move-object/from16 v25, v4

    move-object v1, v6

    move-object v13, v8

    goto :goto_3

    .line 303
    :cond_5
    :goto_2
    const/16 v21, 0x0

    .line 96
    .local v21, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1\\5\\303\\0":I
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda6;

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v22, v2

    move-object v1, v3

    move-object/from16 v25, v4

    move-object/from16 v23, v6

    move-object v5, v7

    move-object/from16 v24, v11

    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    move-wide/from16 v6, p8

    move-wide/from16 v11, p10

    .end local v2    # "$dirty":I
    .end local v6    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v11    # "it\\3":Ljava/lang/Object;
    .local v22, "$dirty":I
    .local v23, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .local v24, "it\\3":Ljava/lang/Object;
    invoke-direct/range {v0 .. v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/State;JLandroidx/compose/ui/text/font/FontFamily;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;)V

    .line 303
    move-object v13, v8

    move-object v15, v14

    move-object v14, v4

    .end local v21    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1\\5\\303\\0":I
    move-object v11, v0

    .line 304
    .local v11, "value\\4":Ljava/lang/Object;
    move-object/from16 v1, v23

    .end local v23    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache\\3":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 305
    nop

    .line 301
    .end local v11    # "value\\4":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1\\4\\301\\3":I
    .end local v24    # "it\\3":Ljava/lang/Object;
    :goto_3
    nop

    .line 96
    .end local v1    # "$this$cache\\3":Landroidx/compose/runtime/Composer;
    .end local v18    # "invalid\\3":Z
    .end local v19    # "$i$f$cache\\3\\96":I
    move-object v9, v11

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static/range {p17 .. p17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x6000

    const/16 v12, 0x1ee

    move-object/from16 v10, p17

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 186
    move-object v1, v10

    invoke-static {v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$6(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static/range {p12 .. p12}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$3(Landroidx/compose/runtime/MutableState;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    move-result-object v0

    if-eqz v0, :cond_7

    const v0, -0x3370ad5c    # -7.5142432E7f

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "187@8528L30,195@8895L540,208@9469L182,188@8584L46,189@8655L206,186@8480L1185"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 188
    const v0, -0x33352bbd

    move-object/from16 v2, v25

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\6":Z
    move-object/from16 v2, p17

    .local v2, "$this$cache\\6":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 307
    .local v3, "$i$f$cache\\6\\188":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\6":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 308
    .local v5, "$i$a$-let-ComposerKt$cache$1\\7\\307\\6":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_6

    .line 309
    const/4 v6, 0x0

    .line 188
    .local v6, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$2\\8\\309\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda7;

    invoke-direct {v7, v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 309
    .end local v6    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$2\\8\\309\\0":I
    nop

    .line 310
    .local v7, "value\\7":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    move-object v4, v7

    .end local v7    # "value\\7":Ljava/lang/Object;
    goto :goto_4

    .line 312
    :cond_6
    nop

    .line 307
    .end local v4    # "it\\6":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\7\\307\\6":I
    :goto_4
    nop

    .line 188
    .end local v0    # "invalid\\6":Z
    .end local v2    # "$this$cache\\6":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\6\\188":I
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 196
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda8;

    move-object/from16 v3, p14

    invoke-direct {v2, v13, v3, v15, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;)V

    const v4, 0x2575ec98

    const/16 v5, 0x36

    const/4 v6, 0x1

    invoke-static {v4, v6, v2, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 209
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda9;

    invoke-direct {v4, v15, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;)V

    const v7, -0x291b2d2a

    invoke-static {v7, v6, v4, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 189
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda10;

    move-object/from16 v8, p15

    invoke-direct {v7, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const v9, -0x77ac46ec

    invoke-static {v9, v6, v7, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 190
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda11;

    move-object/from16 v10, p12

    invoke-direct {v9, v14, v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;)V

    const v11, 0x610b2c33

    invoke-static {v11, v6, v9, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 187
    move-object v1, v2

    const/4 v2, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    move-object v5, v7

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v19, 0x1b0c36

    const/16 v20, 0x0

    const/16 v21, 0x3f94

    move-object/from16 v18, p17

    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    .line 186
    move-object/from16 v1, v18

    goto :goto_5

    :cond_7
    const v0, -0x33f16963    # -3.7378676E7f

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_5
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 88
    .end local v22    # "$dirty":I
    .local v2, "$dirty":I
    :cond_8
    move/from16 v22, v2

    .end local v2    # "$dirty":I
    .restart local v22    # "$dirty":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 216
    :cond_9
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14(Landroidx/compose/runtime/State;JLandroidx/compose/ui/text/font/FontFamily;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 22
    .param p0, "$psicologos$delegate"    # Landroidx/compose/runtime/State;
    .param p1, "$cardColor"    # J
    .param p3, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p4, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p5, "$primaryColor"    # J
    .param p7, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p8, "$pacienteId"    # J
    .param p10, "$deleteColor"    # J
    .param p12, "$psicologoSeleccionado$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p13, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p14, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p15, "$this$LazyColumn"    # Landroidx/compose/foundation/lazy/LazyListScope;

    const-string v0, "$this$LazyColumn"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    .local v0, "items\\1":Ljava/util/List;
    move-object/from16 v2, p15

    .local v2, "$this$items_u24default\\1":Landroidx/compose/foundation/lazy/LazyListScope;
    move-object v4, v0

    .line 274
    .end local v0    # "items\\1":Ljava/util/List;
    .local v4, "items\\1":Ljava/util/List;
    nop

    .line 276
    const/4 v0, 0x0

    .line 274
    .local v0, "key\\1":Lkotlin/jvm/functions/Function1;
    nop

    .line 277
    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$1;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 274
    .local v3, "contentType\\1":Lkotlin/jvm/functions/Function1;
    const/16 v19, 0x0

    .line 280
    .local v19, "$i$f$items\\1\\97":I
    nop

    .line 281
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 282
    nop

    .line 280
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$3;

    invoke-direct {v6, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 284
    move-object v7, v3

    .end local v3    # "contentType\\1":Lkotlin/jvm/functions/Function1;
    .local v7, "contentType\\1":Lkotlin/jvm/functions/Function1;
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v21, v0

    move v0, v5

    move-object v1, v6

    move-object/from16 v20, v7

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    .end local v0    # "key\\1":Lkotlin/jvm/functions/Function1;
    .end local v7    # "contentType\\1":Lkotlin/jvm/functions/Function1;
    .local v20, "contentType\\1":Lkotlin/jvm/functions/Function1;
    .local v21, "key\\1":Lkotlin/jvm/functions/Function1;
    invoke-direct/range {v3 .. v18}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4;-><init>(Ljava/util/List;JLandroidx/compose/ui/text/font/FontFamily;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLkotlinx/coroutines/CoroutineScope;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;)V

    const v5, 0x2fd4df92

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function4;

    .line 280
    const/4 v5, 0x0

    invoke-interface {v2, v0, v5, v1, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 286
    nop

    .line 184
    .end local v2    # "$this$items_u24default\\1":Landroidx/compose/foundation/lazy/LazyListScope;
    .end local v4    # "items\\1":Ljava/util/List;
    .end local v19    # "$i$f$items\\1\\97":I
    .end local v20    # "contentType\\1":Lkotlin/jvm/functions/Function1;
    .end local v21    # "key\\1":Lkotlin/jvm/functions/Function1;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$17$lambda$16(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$21(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16
    .param p0, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p2, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p3, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move/from16 v14, p5

    const-string v1, "C197@8959L347,204@9329L88,196@8917L500:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v14, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v14, 0x1

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:196)"

    const v4, 0x2575ec98

    invoke-static {v4, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 198
    :cond_1
    const v1, -0x6052d00d

    const-string v2, "CC(remember):ListadoPsicologosScreen.kt#9igjgp"

    invoke-static {v11, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\1":Z
    move-object/from16 v2, p4

    .local v2, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$f$cache\\1\\198":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it\\1":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 288
    .local v6, "$i$a$-let-ComposerKt$cache$1\\2\\287\\1":I
    if-nez v1, :cond_3

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    move-object/from16 v15, p1

    move-object/from16 v9, p2

    goto :goto_2

    .line 289
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .line 198
    .local v7, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1\\3\\289\\0":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda14;

    move-object/from16 v15, p1

    move-object/from16 v9, p2

    invoke-direct {v8, v0, v15, v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda14;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;)V

    .line 289
    .end local v7    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1\\3\\289\\0":I
    nop

    .line 290
    .local v8, "value\\2":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    move-object v5, v8

    .line 287
    .end local v5    # "it\\1":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1\\2\\287\\1":I
    .end local v8    # "value\\2":Ljava/lang/Object;
    :goto_2
    nop

    .line 198
    .end local v1    # "invalid\\1":Z
    .end local v2    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache\\1\\198":I
    move-object v1, v5

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 205
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda15;

    move-object/from16 v4, p3

    invoke-direct {v2, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda15;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v5, 0x36

    const v6, 0x703a6ea8

    invoke-static {v6, v3, v2, v11, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function3;

    .line 197
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 196
    :cond_4
    move-object/from16 v15, p1

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 208
    :cond_5
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$21$lambda$19$lambda$18(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 8
    .param p0, "$scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p2, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 199
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

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

    .line 204
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$21$lambda$20(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Button"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C205@9355L40:ListadoPsicologosScreen.kt#6w2cjo"

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

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:205)"

    const v5, 0x703a6ea8

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 206
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Dar de baja"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const v22, 0x180006

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 205
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 207
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$25(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16
    .param p0, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v10, p2

    move/from16 v13, p3

    const-string v0, "C209@9516L30,209@9548L85,209@9491L142:ListadoPsicologosScreen.kt#6w2cjo"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v13, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v13, 0x1

    invoke-interface {v10, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:209)"

    const v3, -0x291b2d2a

    invoke-static {v3, v13, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 210
    :cond_1
    const v0, -0x4f0484ac

    const-string v1, "CC(remember):ListadoPsicologosScreen.kt#9igjgp"

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\1":Z
    move-object/from16 v1, p2

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$f$cache\\1\\210":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 294
    .local v5, "$i$a$-let-ComposerKt$cache$1\\2\\293\\1":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 295
    const/4 v6, 0x0

    .line 210
    .local v6, "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$4$1\\3\\295\\0":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda12;

    move-object/from16 v14, p0

    invoke-direct {v7, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 295
    .end local v6    # "$i$a$-cache-ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$4$1\\3\\295\\0":I
    nop

    .line 296
    .local v7, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 297
    move-object v4, v7

    .end local v7    # "value\\2":Ljava/lang/Object;
    goto :goto_1

    .line 298
    :cond_2
    move-object/from16 v14, p0

    .line 293
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\2\\293\\1":I
    :goto_1
    nop

    .line 210
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\1\\210":I
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda13;

    move-object/from16 v15, p1

    invoke-direct {v1, v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v3, 0x36

    const v4, 0x33b7d424

    invoke-static {v4, v2, v1, v10, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const v11, 0x30000006

    const/16 v12, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 209
    :cond_3
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 213
    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$25$lambda$23$lambda$22(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 210
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$25$lambda$24(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$this$OutlinedButton"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$OutlinedButton"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C210@9574L37:ListadoPsicologosScreen.kt#6w2cjo"

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

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:210)"

    const v5, 0x33b7d424

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 211
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Cancelar"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const v22, 0x180006

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 210
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 212
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$28$lambda$26(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$balow"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C188@8586L42:ListadoPsicologosScreen.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:188)"

    const v4, -0x77ac46ec

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 189
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Confirmar baja"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const v22, 0x180006

    move-object/from16 v8, p0

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

.method static final ListadoPsicologosScreen$lambda$28$lambda$27(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$psicologoSeleccionado$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "C190@8677L166:ListadoPsicologosScreen.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:190)"

    const v4, 0x610b2c33

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 192
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$3(Landroidx/compose/runtime/MutableState;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;->getNombre()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00bfSeguro que deseas dar de baja a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    nop

    .line 191
    const/4 v1, 0x0

    move-object v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const/high16 v22, 0x180000

    const/16 v23, 0x0

    const v24, 0x1ffbe

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 190
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 195
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ListadoPsicologosScreen$lambda$29(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9

    or-int/lit8 v0, p5, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v8, p6

    move-object/from16 v6, p7

    invoke-static/range {v1 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final ListadoPsicologosScreen$lambda$3(Landroidx/compose/runtime/MutableState;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;
    .locals 4
    .param p0, "$psicologoSeleccionado$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;"
        }
    .end annotation

    .line 62
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 261
    .local v3, "$i$f$getValue\\1\\62":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\62":I
    check-cast v0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    .line 62
    return-object v0
.end method

.method private static final ListadoPsicologosScreen$lambda$4(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;)V
    .locals 5
    .param p0, "$psicologoSeleccionado$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ")V"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 262
    .local v4, "$i$f$setValue\\1\\62":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 263
    nop

    .line 62
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\62":I
    return-void
.end method

.method private static final ListadoPsicologosScreen$lambda$6(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 63
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 264
    .local v3, "$i$f$getValue\\1\\63":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\63":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 63
    return v0
.end method

.method private static final ListadoPsicologosScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 63
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

    .line 265
    .local v4, "$i$f$setValue\\1\\63":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 266
    nop

    .line 63
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\63":I
    return-void
.end method

.method static final ListadoPsicologosScreen$lambda$8(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C74@3256L57:ListadoPsicologosScreen.kt#6w2cjo"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:74)"

    const v2, 0x75ef1470

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 75
    :cond_1
    const/4 v10, 0x6

    const/16 v11, 0x3c

    const-string v3, "Listado de psic\u00f3logos"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, p1

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$navController":Landroidx/navigation/NavController;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v11}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt;->MenuAdministrador(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .end local v4    # "$navController":Landroidx/navigation/NavController;
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$navController":Landroidx/navigation/NavController;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v4, p0

    move-object v9, p1

    .end local p0    # "$navController":Landroidx/navigation/NavController;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$navController":Landroidx/navigation/NavController;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final ListadoPsicologosScreen$lambda$9(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C75@3342L31:ListadoPsicologosScreen.kt#6w2cjo"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:75)"

    const v2, 0x3c1fb9ae

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 76
    :cond_1
    const/4 v7, 0x6

    const/4 v8, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p1

    .end local p0    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/SnackbarHostKt;->SnackbarHost(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .end local v3    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v3, p0

    move-object v6, p1

    .end local p0    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$ListadoPsicologosScreen$lambda$4(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;)V
    .locals 0
    .param p0, "$psicologoSeleccionado$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    .line 1
    invoke-static {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$4(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;)V

    return-void
.end method

.method public static final synthetic access$ListadoPsicologosScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$mostrarDialogoBaja$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z

    .line 1
    invoke-static {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->ListadoPsicologosScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
