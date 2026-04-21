.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;
.super Ljava/lang/Object;
.source "LoginScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt\n+ 2 ViewModel.kt\norg/koin/androidx/compose/ViewModelKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 6 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 10 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,351:1\n49#2:352\n43#2,9:353\n1128#3,6:362\n1128#3,6:368\n1128#3,6:374\n1128#3,6:381\n1128#3,6:428\n1128#3,6:434\n1128#3,6:440\n1128#3,6:446\n1128#3,6:455\n75#4:380\n122#5:387\n122#5:388\n122#5:417\n122#5:418\n122#5:494\n122#5:495\n122#5:496\n122#5:501\n122#5:502\n122#5:534\n122#5:535\n87#6,6:389\n94#6:422\n87#6:503\n85#6,8:504\n94#6:539\n81#7,6:395\n88#7,6:410\n96#7:421\n81#7,6:472\n88#7,6:487\n96#7:499\n81#7,6:512\n88#7,6:527\n96#7:538\n391#8,9:401\n400#8:416\n401#8,2:419\n391#8,9:478\n400#8:493\n401#8,2:497\n391#8,9:518\n400#8:533\n401#8,2:536\n85#9:423\n85#9:424\n85#9:425\n85#9:426\n85#9:427\n85#9:452\n117#9,2:453\n99#10:461\n95#10,10:462\n106#10:500\n*S KotlinDebug\n*F\n+ 1 LoginScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt\n*L\n79#1:352\n79#1:353,9\n87#1:362,6\n90#1:368,6\n100#1:374,6\n167#1:381,6\n135#1:428,6\n137#1:434,6\n140#1:440,6\n141#1:446,6\n254#1:455,6\n125#1:380\n172#1:387\n174#1:388\n179#1:417\n187#1:418\n297#1:494\n298#1:495\n301#1:496\n192#1:501\n193#1:502\n279#1:534\n289#1:535\n169#1:389,6\n169#1:422\n189#1:503\n189#1:504,8\n189#1:539\n169#1:395,6\n169#1:410,6\n169#1:421\n292#1:472,6\n292#1:487,6\n292#1:499\n189#1:512,6\n189#1:527,6\n189#1:538\n169#1:401,9\n169#1:416\n169#1:419,2\n292#1:478,9\n292#1:493\n292#1:497,2\n189#1:518,9\n189#1:533\n189#1:536,2\n81#1:423\n82#1:424\n83#1:425\n84#1:426\n85#1:427\n167#1:452\n167#1:453,2\n292#1:461\n292#1:462,10\n292#1:500\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\u0093\u0001\u0010\u0007\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007\u00a2\u0006\u0002\u0010\u001c\u001a\r\u0010\u001d\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u001e\u00a8\u0006\u001f\u00b2\u0006\n\u0010\n\u001a\u00020\u000bX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000e\u001a\u00020\u000bX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0010\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\u000c\u0010#\u001a\u0004\u0018\u00010\u000bX\u008a\u0084\u0002\u00b2\u0006\n\u0010$\u001a\u00020\u0011X\u008a\u008e\u0002"
    }
    d2 = {
        "LoginScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "loginViewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V",
        "LoginScreenContent",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "username",
        "",
        "onUsernameChange",
        "Lkotlin/Function1;",
        "password",
        "onPasswordChange",
        "isLoggingIn",
        "",
        "isLoginEnabled",
        "onLogin",
        "Lkotlin/Function0;",
        "onRegisterClick",
        "colors",
        "Landroidx/compose/material3/ColorScheme;",
        "amaniColors",
        "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;",
        "typography",
        "Landroidx/compose/material3/Typography;",
        "(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;III)V",
        "LoginScreenPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "app",
        "loginResult",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
        "loginError",
        "isPasswordVisible"
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
.method public static final LoginScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v2, p0

    move/from16 v9, p3

    move/from16 v10, p4

    const-string v0, "navController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const v0, -0x54b6315a

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LoginScreen)N(navController,loginViewModel)80@3629L16,81@3690L16,82@3757L16,83@3824L16,84@3889L16,86@3935L32,89@4056L235,89@4029L262,99@4408L830,99@4380L858,123@5271L11,124@5322L7,125@5365L10,129@5469L47,130@5523L750,127@5381L892:LoginScreen.kt#8o7o96"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_1

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_4

    and-int/lit8 v3, v10, 0x2

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    :cond_3
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v1, v4

    goto :goto_2

    :cond_4
    move-object/from16 v3, p1

    :goto_2
    and-int/lit8 v4, v1, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eq v4, v5, :cond_5

    move v4, v12

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v4, "78@3565L15"

    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 76
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_9

    and-int/lit8 v1, v1, -0x71

    goto :goto_5

    .line 80
    :cond_7
    :goto_4
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_9

    .line 79
    const/4 v4, 0x0

    .local v4, "$changed\\1":I
    move-object v5, v11

    .local v5, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 352
    .local v7, "$i$f$koinViewModel\\1\\79":I
    const v8, -0x6040e0aa

    const-string v13, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {v5, v8, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 353
    const/16 v18, 0x0

    .line 354
    .local v18, "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    sget-object v8, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v13, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v8, v5, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 355
    .local v8, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v16, 0x0

    .line 356
    .local v16, "key\\1":Ljava/lang/String;
    invoke-static {v8}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v17

    .line 357
    .local v17, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    invoke-static {v5, v6}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v19

    .line 358
    .local v19, "scope\\1":Lorg/koin/core/scope/Scope;
    const/16 v20, 0x0

    .local v20, "parameters\\1":Lkotlin/jvm/functions/Function0;
    const-class v13, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 361
    invoke-interface {v8}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v15

    .line 360
    invoke-static/range {v14 .. v20}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v13

    .line 352
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 360
    nop

    .end local v4    # "$changed\\1":I
    .end local v5    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$koinViewModel\\1\\79":I
    .end local v8    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v16    # "key\\1":Ljava/lang/String;
    .end local v17    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v18    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .end local v19    # "scope\\1":Lorg/koin/core/scope/Scope;
    .end local v20    # "parameters\\1":Lkotlin/jvm/functions/Function0;
    move-object v3, v13

    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .end local p1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v3, "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    and-int/lit8 v1, v1, -0x71

    move v13, v1

    move-object v1, v3

    goto :goto_6

    .line 354
    .end local v3    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .restart local v4    # "$changed\\1":I
    .restart local v5    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$i$f$koinViewModel\\1\\79":I
    .restart local v18    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    .end local v4    # "$changed\\1":I
    .end local v5    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$koinViewModel\\1\\79":I
    .end local v18    # "qualifier\\1":Lorg/koin/core/qualifier/Qualifier;
    :cond_9
    :goto_5
    move v13, v1

    move-object v1, v3

    .end local p1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v1, "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v13, "$dirty":I
    :goto_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen (LoginScreen.kt:79)"

    invoke-static {v0, v13, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 81
    :cond_a
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getUsername()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v11, v6, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 82
    .local v0, "username$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getPassword()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v3, v11, v6, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 83
    .local v7, "password$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getLoginResult()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v3, v11, v6, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 84
    .local v14, "loginResult$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isLoggingIn()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v3, v11, v6, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 85
    .local v8, "isLoggingIn$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getLoginError()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v3, v11, v6, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v15

    .line 87
    .local v15, "loginError$delegate":Landroidx/compose/runtime/State;
    const v4, 0x10f806

    const-string v5, "CC(remember):LoginScreen.kt#9igjgp"

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid\\2":Z
    move-object/from16 p1, v11

    .local p1, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 362
    .local v16, "$i$f$cache\\2\\87":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it\\2":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 363
    .local v17, "$i$a$-let-ComposerKt$cache$1\\3\\362\\2":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v12, v6, :cond_b

    .line 364
    const/4 v6, 0x0

    .line 87
    .local v6, "$i$a$-cache-LoginScreenKt$LoginScreen$snackbarHostState$1\\4\\364\\0":I
    new-instance v18, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct/range {v18 .. v18}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    .line 364
    .end local v6    # "$i$a$-cache-LoginScreenKt$LoginScreen$snackbarHostState$1\\4\\364\\0":I
    move-object/from16 v6, v18

    .line 365
    .local v6, "value\\3":Ljava/lang/Object;
    move-object/from16 v3, p1

    .end local p1    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    move-object v12, v6

    .end local v6    # "value\\3":Ljava/lang/Object;
    goto :goto_7

    .line 367
    .end local v3    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    :cond_b
    move-object/from16 v3, p1

    .line 362
    .end local v12    # "it\\2":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1\\3\\362\\2":I
    .end local p1    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    :goto_7
    nop

    .line 87
    .end local v3    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v4    # "invalid\\2":Z
    .end local v16    # "$i$f$cache\\2\\87":I
    check-cast v12, Landroidx/compose/material3/SnackbarHostState;

    .local v12, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 90
    invoke-static {v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1107f1

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid\\5":Z
    move-object v6, v11

    .local v6, "$this$cache\\5":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 368
    .local v16, "$i$f$cache\\5\\90":I
    move-object/from16 p1, v0

    .end local v0    # "username$delegate":Landroidx/compose/runtime/State;
    .local p1, "username$delegate":Landroidx/compose/runtime/State;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it\\5":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 369
    .local v17, "$i$a$-let-ComposerKt$cache$1\\6\\368\\5":I
    if-nez v4, :cond_d

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v21, v4

    .end local v4    # "invalid\\5":Z
    .local v21, "invalid\\5":Z
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_c

    goto :goto_8

    .line 373
    :cond_c
    goto :goto_9

    .line 369
    .end local v21    # "invalid\\5":Z
    .restart local v4    # "invalid\\5":Z
    :cond_d
    move/from16 v21, v4

    .line 370
    .end local v4    # "invalid\\5":Z
    .restart local v21    # "invalid\\5":Z
    :goto_8
    const/4 v4, 0x0

    .line 90
    .local v4, "$i$a$-cache-LoginScreenKt$LoginScreen$1\\7\\370\\0":I
    move-object/from16 v20, v0

    .end local v0    # "it\\5":Ljava/lang/Object;
    .local v20, "it\\5":Ljava/lang/Object;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;

    move/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "$i$a$-cache-LoginScreenKt$LoginScreen$1\\7\\370\\0":I
    .local v22, "$i$a$-cache-LoginScreenKt$LoginScreen$1\\7\\370\\0":I
    invoke-direct {v0, v12, v15, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 370
    .end local v22    # "$i$a$-cache-LoginScreenKt$LoginScreen$1\\7\\370\\0":I
    nop

    .line 371
    .local v0, "value\\6":Ljava/lang/Object;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 372
    nop

    .line 368
    .end local v0    # "value\\6":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1\\6\\368\\5":I
    .end local v20    # "it\\5":Ljava/lang/Object;
    :goto_9
    nop

    .line 90
    .end local v6    # "$this$cache\\5":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache\\5\\90":I
    .end local v21    # "invalid\\5":Z
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-static {v3, v0, v11, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 100
    invoke-static {v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/Result;

    move-result-object v0

    const v3, 0x113644

    invoke-static {v11, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .local v3, "invalid\\8":Z
    move-object v4, v11

    .local v4, "$this$cache\\8":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 374
    .local v5, "$i$f$cache\\8\\100":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\8":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 375
    .local v16, "$i$a$-let-ComposerKt$cache$1\\9\\374\\8":I
    if-nez v3, :cond_f

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v3

    .end local v3    # "invalid\\8":Z
    .local v20, "invalid\\8":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_e

    goto :goto_a

    .line 379
    :cond_e
    move/from16 v21, v5

    goto :goto_b

    .line 375
    .end local v20    # "invalid\\8":Z
    .restart local v3    # "invalid\\8":Z
    :cond_f
    move/from16 v20, v3

    .line 376
    .end local v3    # "invalid\\8":Z
    .restart local v20    # "invalid\\8":Z
    :goto_a
    const/4 v3, 0x0

    .line 100
    .local v3, "$i$a$-cache-LoginScreenKt$LoginScreen$2\\10\\376\\0":I
    move/from16 v17, v3

    .end local v3    # "$i$a$-cache-LoginScreenKt$LoginScreen$2\\10\\376\\0":I
    .local v17, "$i$a$-cache-LoginScreenKt$LoginScreen$2\\10\\376\\0":I
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$cache\\8\\100":I
    .local v21, "$i$f$cache\\8\\100":I
    invoke-direct {v3, v14, v2, v1, v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 376
    .end local v17    # "$i$a$-cache-LoginScreenKt$LoginScreen$2\\10\\376\\0":I
    nop

    .line 377
    .local v3, "value\\9":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 378
    move-object v6, v3

    .line 374
    .end local v3    # "value\\9":Ljava/lang/Object;
    .end local v6    # "it\\8":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1\\9\\374\\8":I
    :goto_b
    nop

    .line 100
    .end local v4    # "$this$cache\\8":Landroidx/compose/runtime/Composer;
    .end local v20    # "invalid\\8":Z
    .end local v21    # "$i$f$cache\\8\\100":I
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-static {v0, v6, v11, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 124
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v11, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    .line 125
    .local v3, "colors":Landroidx/compose/material3/ColorScheme;
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->getLocalAmaniColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_\\11":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x6

    .local v4, "$changed\\11":I
    move-object v5, v11

    .local v5, "$composer\\11":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 380
    .local v6, "$i$f$getCurrent\\11\\125":I
    move-object/from16 v16, v1

    .end local v1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v16, "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    const v1, 0x789c5f52

    const-string v2, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 125
    .end local v0    # "this_\\11":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed\\11":I
    .end local v5    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$getCurrent\\11\\125":I
    move-object v4, v1

    check-cast v4, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    .line 126
    .local v4, "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v11, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v5

    .line 129
    .local v5, "typography":Landroidx/compose/material3/Typography;
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getScreenBackground-0d7_KjU()J

    move-result-wide v17

    .line 130
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda17;

    invoke-direct {v0, v12}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda17;-><init>(Landroidx/compose/material3/SnackbarHostState;)V

    const v1, 0x3309ad20

    const/16 v2, 0x36

    const/4 v6, 0x1

    invoke-static {v1, v6, v0, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function2;

    .line 129
    nop

    .line 131
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda18;

    move-object/from16 p2, v12

    move-object/from16 v1, v16

    move v12, v2

    move/from16 v16, v13

    move-object/from16 v2, p0

    move v13, v6

    move-object/from16 v6, p1

    .end local v12    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .end local v13    # "$dirty":I
    .end local p1    # "username$delegate":Landroidx/compose/runtime/State;
    .restart local v1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v6, "username$delegate":Landroidx/compose/runtime/State;
    .local v16, "$dirty":I
    .local p2, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    invoke-direct/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda18;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    move-object/from16 p1, v1

    .end local v1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local p1, "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    const v1, -0x549792c9

    invoke-static {v1, v13, v0, v11, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function3;

    .line 128
    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v15

    .end local v15    # "loginError$delegate":Landroidx/compose/runtime/State;
    .local v0, "loginError$delegate":Landroidx/compose/runtime/State;
    const/4 v15, 0x0

    move/from16 v1, v16

    .end local v16    # "$dirty":I
    .local v1, "$dirty":I
    const/16 v16, 0x0

    move-object/from16 v21, v14

    move-object/from16 v14, v19

    .end local v14    # "loginResult$delegate":Landroidx/compose/runtime/State;
    .local v21, "loginResult$delegate":Landroidx/compose/runtime/State;
    const-wide/16 v19, 0x0

    move-object/from16 v24, v21

    .end local v21    # "loginResult$delegate":Landroidx/compose/runtime/State;
    .local v24, "loginResult$delegate":Landroidx/compose/runtime/State;
    const/16 v21, 0x0

    move-object/from16 v25, v24

    .end local v24    # "loginResult$delegate":Landroidx/compose/runtime/State;
    .local v25, "loginResult$delegate":Landroidx/compose/runtime/State;
    const v24, 0x30000c00

    move-object/from16 v26, v25

    .end local v25    # "loginResult$delegate":Landroidx/compose/runtime/State;
    .local v26, "loginResult$delegate":Landroidx/compose/runtime/State;
    const/16 v25, 0x1b7

    move-object/from16 v27, p2

    .end local p2    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    .local v27, "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    invoke-static/range {v11 .. v25}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 150
    .end local v0    # "loginError$delegate":Landroidx/compose/runtime/State;
    .end local v3    # "colors":Landroidx/compose/material3/ColorScheme;
    .end local v4    # "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .end local v5    # "typography":Landroidx/compose/material3/Typography;
    .end local v6    # "username$delegate":Landroidx/compose/runtime/State;
    .end local v7    # "password$delegate":Landroidx/compose/runtime/State;
    .end local v8    # "isLoggingIn$delegate":Landroidx/compose/runtime/State;
    .end local v26    # "loginResult$delegate":Landroidx/compose/runtime/State;
    .end local v27    # "snackbarHostState":Landroidx/compose/material3/SnackbarHostState;
    :cond_10
    move-object/from16 v3, p1

    goto :goto_c

    .line 76
    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_11
    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v23    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 150
    .end local p1    # "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .local v3, "loginViewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    :goto_c
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda19;

    invoke-direct {v4, v2, v3, v9, v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda19;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;II)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method private static final LoginScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$username$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 423
    .local v3, "$i$f$getValue\\1\\81":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\81":I
    check-cast v0, Ljava/lang/String;

    .line 81
    return-object v0
.end method

.method private static final LoginScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$password$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$f$getValue\\1\\82":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\82":I
    check-cast v0, Ljava/lang/String;

    .line 82
    return-object v0
.end method

.method static final LoginScreen$lambda$17(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 19
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$amaniColors"    # Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .param p4, "$typography"    # Landroidx/compose/material3/Typography;
    .param p5, "$username$delegate"    # Landroidx/compose/runtime/State;
    .param p6, "$password$delegate"    # Landroidx/compose/runtime/State;
    .param p7, "$isLoggingIn$delegate"    # Landroidx/compose/runtime/State;
    .param p8, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v15, p9

    const-string v3, "paddingValues"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(paddingValues)134@5690L34,136@5790L34,139@5967L26,140@6025L127,131@5550L717:LoginScreen.kt#8o7o96"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p10

    .local v3, "$dirty":I
    and-int/lit8 v4, p10, 0x6

    if-nez v4, :cond_1

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    invoke-interface {v15, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen.<anonymous> (LoginScreen.kt:131)"

    const v8, -0x549792c9

    invoke-static {v8, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 133
    :cond_3
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-static {v4, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 134
    move v5, v3

    move-object v3, v4

    .end local v3    # "$dirty":I
    .local v5, "$dirty":I
    invoke-static/range {p5 .. p5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v4

    .line 135
    const v8, 0x73021079

    const-string v9, "CC(remember):LoginScreen.kt#9igjgp"

    invoke-static {v15, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid\\1":Z
    move-object/from16 v10, p9

    .local v10, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 428
    .local v11, "$i$f$cache\\1\\135":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it\\1":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 429
    .local v13, "$i$a$-let-ComposerKt$cache$1\\2\\428\\1":I
    if-nez v8, :cond_5

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_4

    goto :goto_2

    .line 433
    :cond_4
    goto :goto_3

    .line 430
    :cond_5
    :goto_2
    const/4 v14, 0x0

    .line 135
    .local v14, "$i$a$-cache-LoginScreenKt$LoginScreen$4$1\\3\\430\\0":I
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda0;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 430
    .end local v14    # "$i$a$-cache-LoginScreenKt$LoginScreen$4$1\\3\\430\\0":I
    nop

    .line 431
    .local v6, "value\\2":Ljava/lang/Object;
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 432
    move-object v12, v6

    .line 428
    .end local v6    # "value\\2":Ljava/lang/Object;
    .end local v12    # "it\\1":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1\\2\\428\\1":I
    :goto_3
    nop

    .line 135
    .end local v8    # "invalid\\1":Z
    .end local v10    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache\\1\\135":I
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 136
    invoke-static/range {p6 .. p6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v6

    .line 137
    const v8, 0x73021cf9

    invoke-static {v15, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid\\4":Z
    move-object/from16 v10, p9

    .local v10, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 434
    .local v11, "$i$f$cache\\4\\137":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\4":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 435
    .local v14, "$i$a$-let-ComposerKt$cache$1\\5\\434\\4":I
    if-nez v8, :cond_7

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v13, v7, :cond_6

    goto :goto_4

    .line 439
    :cond_6
    goto :goto_5

    .line 436
    :cond_7
    :goto_4
    const/4 v7, 0x0

    .line 137
    .local v7, "$i$a$-cache-LoginScreenKt$LoginScreen$4$2\\6\\436\\0":I
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 436
    .end local v7    # "$i$a$-cache-LoginScreenKt$LoginScreen$4$2\\6\\436\\0":I
    nop

    .line 437
    .local v2, "value\\5":Ljava/lang/Object;
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 438
    move-object v13, v2

    .line 434
    .end local v2    # "value\\5":Ljava/lang/Object;
    .end local v13    # "it\\4":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1\\5\\434\\4":I
    :goto_5
    nop

    .line 137
    .end local v8    # "invalid\\4":Z
    .end local v10    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache\\4\\137":I
    move-object v7, v13

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 138
    invoke-static/range {p7 .. p7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result v8

    .line 139
    invoke-static/range {p7 .. p7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isLoginFormValid()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    .line 140
    :goto_6
    const v2, 0x73023311

    invoke-static {v15, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\7":Z
    move-object/from16 v10, p9

    .local v10, "$this$cache\\7":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 440
    .local v11, "$i$f$cache\\7\\140":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\7":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 441
    .local v14, "$i$a$-let-ComposerKt$cache$1\\8\\440\\7":I
    if-nez v2, :cond_a

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v2

    .end local v2    # "invalid\\7":Z
    .local v18, "invalid\\7":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v13, v2, :cond_9

    goto :goto_7

    .line 445
    :cond_9
    goto :goto_8

    .line 441
    .end local v18    # "invalid\\7":Z
    .restart local v2    # "invalid\\7":Z
    :cond_a
    move/from16 v18, v2

    .line 442
    .end local v2    # "invalid\\7":Z
    .restart local v18    # "invalid\\7":Z
    :goto_7
    const/4 v2, 0x0

    .line 140
    .local v2, "$i$a$-cache-LoginScreenKt$LoginScreen$4$3\\9\\442\\0":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-cache-LoginScreenKt$LoginScreen$4$3\\9\\442\\0":I
    .local v17, "$i$a$-cache-LoginScreenKt$LoginScreen$4$3\\9\\442\\0":I
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda2;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 442
    .end local v17    # "$i$a$-cache-LoginScreenKt$LoginScreen$4$3\\9\\442\\0":I
    nop

    .line 443
    .local v2, "value\\8":Ljava/lang/Object;
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    move-object v13, v2

    .line 440
    .end local v2    # "value\\8":Ljava/lang/Object;
    .end local v13    # "it\\7":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1\\8\\440\\7":I
    :goto_8
    nop

    .line 140
    .end local v10    # "$this$cache\\7":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache\\7\\140":I
    .end local v18    # "invalid\\7":Z
    move-object v10, v13

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 141
    const v2, 0x73023ab6

    invoke-static {v15, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    .local v2, "invalid\\10":Z
    move-object/from16 v9, p9

    .local v9, "$this$cache\\10":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 446
    .local v11, "$i$f$cache\\10\\141":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\10":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 447
    .local v14, "$i$a$-let-ComposerKt$cache$1\\11\\446\\10":I
    if-nez v2, :cond_c

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v2

    .end local v2    # "invalid\\10":Z
    .local v18, "invalid\\10":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v13, v2, :cond_b

    goto :goto_9

    .line 451
    :cond_b
    goto :goto_a

    .line 447
    .end local v18    # "invalid\\10":Z
    .restart local v2    # "invalid\\10":Z
    :cond_c
    move/from16 v18, v2

    .line 448
    .end local v2    # "invalid\\10":Z
    .restart local v18    # "invalid\\10":Z
    :goto_9
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$a$-cache-LoginScreenKt$LoginScreen$4$4\\12\\448\\0":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-cache-LoginScreenKt$LoginScreen$4$4\\12\\448\\0":I
    .local v17, "$i$a$-cache-LoginScreenKt$LoginScreen$4$4\\12\\448\\0":I
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda3;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;)V

    .line 448
    .end local v17    # "$i$a$-cache-LoginScreenKt$LoginScreen$4$4\\12\\448\\0":I
    nop

    .line 449
    .local v2, "value\\11":Ljava/lang/Object;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 450
    move-object v13, v2

    .line 446
    .end local v2    # "value\\11":Ljava/lang/Object;
    .end local v13    # "it\\10":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1\\11\\446\\10":I
    :goto_a
    nop

    .line 141
    .end local v9    # "$this$cache\\10":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache\\10\\141":I
    .end local v18    # "invalid\\10":Z
    move-object v11, v13

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 132
    move/from16 v9, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move v2, v5

    move-object v5, v12

    move-object/from16 v12, p2

    .end local v5    # "$dirty":I
    .local v2, "$dirty":I
    invoke-static/range {v3 .. v18}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_b

    .line 131
    .end local v2    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_d
    move v2, v3

    .end local v3    # "$dirty":I
    .restart local v2    # "$dirty":I
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 149
    :cond_e
    :goto_b
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method

.method static final LoginScreen$lambda$17$lambda$10$lambda$9(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setUsername(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreen$lambda$17$lambda$12$lambda$11(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setPassword(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreen$lambda$17$lambda$14$lambda$13(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 140
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->login()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreen$lambda$17$lambda$16$lambda$15(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 7
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "$navController"    # Landroidx/navigation/NavController;

    .line 142
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->resetLoginState()V

    .line 143
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;->getRoute()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .end local p1    # "$navController":Landroidx/navigation/NavController;
    .local v1, "$navController":Landroidx/navigation/NavController;
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 144
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final LoginScreen$lambda$18(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final LoginScreen$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/Result;
    .locals 4
    .param p0, "$loginResult$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;"
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 425
    .local v3, "$i$f$getValue\\1\\83":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\83":I
    check-cast v0, Lkotlin/Result;

    .line 83
    return-object v0
.end method

.method private static final LoginScreen$lambda$3(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$isLoggingIn$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 426
    .local v3, "$i$f$getValue\\1\\84":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\84":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 84
    return v0
.end method

.method private static final LoginScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$loginError$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 427
    .local v3, "$i$f$getValue\\1\\85":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\85":I
    check-cast v0, Ljava/lang/String;

    .line 85
    return-object v0
.end method

.method static final LoginScreen$lambda$8(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C129@5471L43:LoginScreen.kt#8o7o96"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen.<anonymous> (LoginScreen.kt:129)"

    const v2, 0x3309ad20

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 130
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

.method public static final LoginScreenContent(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;III)V
    .locals 58
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "onUsernameChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onPasswordChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "isLoggingIn"    # Z
    .param p6, "isLoginEnabled"    # Z
    .param p7, "onLogin"    # Lkotlin/jvm/functions/Function0;
    .param p8, "onRegisterClick"    # Lkotlin/jvm/functions/Function0;
    .param p9, "colors"    # Landroidx/compose/material3/ColorScheme;
    .param p10, "amaniColors"    # Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .param p11, "typography"    # Landroidx/compose/material3/Typography;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/ColorScheme;",
            "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;",
            "Landroidx/compose/material3/Typography;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v12, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v1, p11

    move/from16 v13, p13

    const-string v0, "username"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUsernameChange"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPasswordChange"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLogin"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRegisterClick"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amaniColors"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typography"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    const v0, 0x780e1755

    move-object/from16 v7, p12

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v7, "C(LoginScreenContent)N(modifier,username,onUsernameChange,password,onPasswordChange,isLoggingIn,isLoginEnabled,onLogin,onRegisterClick,colors,amaniColors,typography)166@6763L25,166@6746L42,168@6794L6997:LoginScreen.kt#8o7o96"

    invoke-static {v14, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v7, p13

    .local v7, "$dirty":I
    move/from16 v9, p14

    .local v9, "$dirty1":I
    and-int/lit8 v15, p15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    if-eqz v15, :cond_0

    or-int/lit8 v7, v7, 0x6

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v18, v13, 0x6

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    move/from16 v19, v16

    goto :goto_0

    :cond_1
    move/from16 v19, v17

    :goto_0
    or-int v7, v7, v19

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    :goto_1
    and-int/lit8 v19, v13, 0x30

    const/16 v20, 0x20

    const/16 v21, 0x10

    if-nez v19, :cond_4

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move/from16 v19, v20

    goto :goto_2

    :cond_3
    move/from16 v19, v21

    :goto_2
    or-int v7, v7, v19

    :cond_4
    and-int/lit16 v0, v13, 0x180

    if-nez v0, :cond_6

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x100

    goto :goto_3

    :cond_5
    const/16 v0, 0x80

    :goto_3
    or-int/2addr v7, v0

    :cond_6
    and-int/lit16 v0, v13, 0xc00

    if-nez v0, :cond_8

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x800

    goto :goto_4

    :cond_7
    const/16 v0, 0x400

    :goto_4
    or-int/2addr v7, v0

    :cond_8
    and-int/lit16 v0, v13, 0x6000

    if-nez v0, :cond_a

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x4000

    goto :goto_5

    :cond_9
    const/16 v0, 0x2000

    :goto_5
    or-int/2addr v7, v0

    :cond_a
    const/high16 v0, 0x30000

    and-int/2addr v0, v13

    if-nez v0, :cond_c

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v0, 0x10000

    :goto_6
    or-int/2addr v7, v0

    :cond_c
    const/high16 v0, 0x180000

    and-int/2addr v0, v13

    if-nez v0, :cond_e

    move/from16 v0, p6

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_d

    const/high16 v19, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v19, 0x80000

    :goto_7
    or-int v7, v7, v19

    goto :goto_8

    :cond_e
    move/from16 v0, p6

    :goto_8
    const/high16 v19, 0xc00000

    and-int v19, v13, v19

    if-nez v19, :cond_10

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v19, 0x400000

    :goto_9
    or-int v7, v7, v19

    :cond_10
    const/high16 v19, 0x6000000

    and-int v19, v13, v19

    if-nez v19, :cond_12

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/high16 v19, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v19, 0x2000000

    :goto_a
    or-int v7, v7, v19

    :cond_12
    const/high16 v19, 0x30000000

    and-int v22, v13, v19

    if-nez v22, :cond_14

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v22, 0x10000000

    :goto_b
    or-int v7, v7, v22

    :cond_14
    and-int/lit8 v22, p14, 0x6

    if-nez v22, :cond_16

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    goto :goto_c

    :cond_15
    move/from16 v16, v17

    :goto_c
    or-int v9, v9, v16

    :cond_16
    and-int/lit8 v16, p14, 0x30

    if-nez v16, :cond_18

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    goto :goto_d

    :cond_17
    move/from16 v20, v21

    :goto_d
    or-int v9, v9, v20

    :cond_18
    const v16, 0x12492493

    and-int v0, v7, v16

    const v1, 0x12492492

    if-ne v0, v1, :cond_1a

    and-int/lit8 v0, v9, 0x13

    const/16 v1, 0x12

    if-eq v0, v1, :cond_19

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v0, 0x1

    :goto_f
    and-int/lit8 v1, v7, 0x1

    invoke-interface {v14, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v15, :cond_1b

    .line 154
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v15, v0

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 166
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object/from16 v15, p0

    .line 154
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent (LoginScreen.kt:165)"

    const v1, 0x780e1755

    invoke-static {v1, v7, v9, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 167
    const v0, -0x531a2d12

    const-string v2, "CC(remember):LoginScreen.kt#9igjgp"

    invoke-static {v14, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\1":Z
    move-object v2, v14

    .local v2, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 381
    .local v18, "$i$f$cache\\1\\167":I
    move/from16 p0, v0

    .end local v0    # "invalid\\1":Z
    .local p0, "invalid\\1":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it\\1":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 382
    .local v21, "$i$a$-let-ComposerKt$cache$1\\2\\381\\1":I
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1d

    .line 383
    const/4 v3, 0x0

    .local v3, "$i$a$-cache-LoginScreenKt$LoginScreenContent$isPasswordVisible$2\\3\\383\\0":I
    new-instance v22, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda13;

    invoke-direct/range {v22 .. v22}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda13;-><init>()V

    .end local v3    # "$i$a$-cache-LoginScreenKt$LoginScreenContent$isPasswordVisible$2\\3\\383\\0":I
    move-object/from16 v3, v22

    .line 384
    .local v3, "value\\2":Ljava/lang/Object;
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 385
    move-object v0, v3

    .end local v3    # "value\\2":Ljava/lang/Object;
    goto :goto_11

    .line 386
    :cond_1d
    nop

    .line 381
    .end local v0    # "it\\1":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1\\2\\381\\1":I
    :goto_11
    nop

    .line 167
    .end local v2    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache\\1\\167":I
    .end local p0    # "invalid\\1":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v2, 0x30

    invoke-static {v1, v0, v14, v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 170
    .local v0, "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    nop

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 p0, v0

    const/4 v3, 0x1

    .end local v0    # "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    .local p0, "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v15, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 172
    const/16 v3, 0x18

    .local v3, "$this$dp\\4":I
    const/16 v18, 0x0

    .line 387
    .local v18, "$i$f$getDp\\4\\172":I
    int-to-float v1, v3

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 172
    .end local v3    # "$this$dp\\4":I
    .end local v18    # "$i$f$getDp\\4\\172":I
    const/16 v3, 0x14

    .local v3, "$this$dp\\5":I
    const/16 v18, 0x0

    .line 387
    .local v18, "$i$f$getDp\\5\\172":I
    int-to-float v2, v3

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 172
    .end local v3    # "$this$dp\\5":I
    .end local v18    # "$i$f$getDp\\5\\172":I
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 173
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 174
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v3, 0x14

    .local v3, "$this$dp\\6":I
    const/16 v18, 0x0

    .line 388
    .local v18, "$i$f$getDp\\6\\174":I
    move-object/from16 v22, v0

    int-to-float v0, v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 174
    .end local v3    # "$this$dp\\6":I
    .end local v18    # "$i$f$getDp\\6\\174":I
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    .line 172
    nop

    .line 174
    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 173
    nop

    .line 169
    move-object v2, v14

    .local v1, "horizontalAlignment\\7":Landroidx/compose/ui/Alignment$Horizontal;
    .local v2, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v3, 0x1b0

    move/from16 v18, v3

    .local v0, "verticalArrangement\\7":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v18, "$changed\\7":I
    .local v22, "modifier\\7":Landroidx/compose/ui/Modifier;
    const/16 v23, 0x0

    .line 389
    .local v23, "$i$f$Column\\7\\169":I
    const v3, 0x4ff7456f

    const-string v4, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 390
    shr-int/lit8 v3, v18, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v18, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v24

    .line 394
    .local v24, "measurePolicy\\7":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 393
    shl-int/lit8 v3, v18, 0x3

    and-int/lit8 v3, v3, 0x70

    .line 391
    move-object/from16 v4, v22

    .local v4, "modifier\\8":Landroidx/compose/ui/Modifier;
    move-object/from16 v25, v24

    .local v25, "measurePolicy\\8":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v26, v2

    .local v26, "$composer\\8":Landroidx/compose/runtime/Composer;
    move/from16 v27, v3

    .local v27, "$changed\\8":I
    const/16 v28, 0x0

    .line 395
    .local v28, "$i$f$Layout\\8\\391":I
    const v3, -0x451e1427

    move-object/from16 v29, v0

    .end local v0    # "verticalArrangement\\7":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v29, "verticalArrangement\\7":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v12, v26

    .end local v26    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v12, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v12, v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->hashCode(J)I

    move-result v26

    .line 397
    .local v26, "compositeKeyHash\\8":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 398
    .local v0, "localMap\\8":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v12, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 400
    .local v3, "materialized\\8":Landroidx/compose/ui/Modifier;
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v30

    move-object/from16 v31, v1

    .end local v1    # "horizontalAlignment\\7":Landroidx/compose/ui/Alignment$Horizontal;
    .local v31, "horizontalAlignment\\7":Landroidx/compose/ui/Alignment$Horizontal;
    shl-int/lit8 v1, v27, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 399
    move-object/from16 v32, v30

    .local v32, "factory\\9":Lkotlin/jvm/functions/Function0;
    move/from16 v30, v1

    .local v30, "$changed\\9":I
    move-object v1, v12

    .local v1, "$composer\\9":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 401
    .local v33, "$i$f$ReusableComposeNode\\9\\399":I
    move-object/from16 v34, v2

    .end local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v34, "$composer\\7":Landroidx/compose/runtime/Composer;
    const v2, -0x20f7d59c

    move-object/from16 v35, v4

    .end local v4    # "modifier\\8":Landroidx/compose/ui/Modifier;
    .local v35, "modifier\\8":Landroidx/compose/ui/Modifier;
    const-string v4, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 402
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 403
    :cond_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 404
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 405
    move-object/from16 v2, v32

    .end local v32    # "factory\\9":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\9":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 407
    .end local v2    # "factory\\9":Lkotlin/jvm/functions/Function0;
    .restart local v32    # "factory\\9":Lkotlin/jvm/functions/Function0;
    :cond_1f
    move-object/from16 v2, v32

    .end local v32    # "factory\\9":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\9":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 409
    :goto_12
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240\\10":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 410
    .local v32, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\10\\409\\8":I
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v37, v1

    .end local v1    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .local v37, "$composer\\9":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    move-object/from16 v36, v12

    move-object/from16 v12, v25

    .end local v25    # "measurePolicy\\8":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v12, "measurePolicy\\8":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v36, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 411
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 412
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v38, v0

    .end local v0    # "localMap\\8":Landroidx/compose/runtime/CompositionLocalMap;
    .local v38, "localMap\\8":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 413
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 414
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    nop

    .line 409
    .end local v4    # "$this$Layout_u24lambda_u240\\10":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\10\\409\\8":I
    nop

    .line 416
    shr-int/lit8 v0, v30, 0x6

    and-int/lit8 v25, v0, 0xe

    .local v25, "$changed\\11":I
    move-object/from16 v0, v37

    .local v0, "$composer\\11":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 392
    .local v32, "$i$a$-Layout-ColumnKt$Column$1\\11\\416\\7":I
    const v1, 0x7cc0ae6e

    const-string v4, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v4, v18, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v39, v4, 0x6

    .local v39, "$changed\\12":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$LoginScreenContent_u24lambda_u2436\\12":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v4, v0

    .local v4, "$composer\\12":Landroidx/compose/runtime/Composer;
    move-object/from16 v52, v1

    .end local v1    # "$this$LoginScreenContent_u24lambda_u2436\\12":Landroidx/compose/foundation/layout/ColumnScope;
    .local v52, "$this$LoginScreenContent_u24lambda_u2436\\12":Landroidx/compose/foundation/layout/ColumnScope;
    const/16 v53, 0x0

    .line 176
    .local v53, "$i$a$-Column-LoginScreenKt$LoginScreenContent$1\\12\\392\\0":I
    const v1, -0xc310c76

    move-object/from16 v54, v0

    .end local v0    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v54, "$composer\\11":Landroidx/compose/runtime/Composer;
    const-string v0, "C176@7080L37,175@7051L196,184@7345L6,185@7393L43,186@7475L38,187@7524L5911,182@7257L6178,313@13541L244,310@13445L340:LoginScreen.kt#8o7o96"

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 177
    sget v0, Lorg/ies/tierno/applicationamani/R$drawable;->logo:I

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v40

    .line 178
    nop

    .line 179
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0xb4

    .local v1, "$this$dp\\13":I
    const/16 v17, 0x0

    .line 417
    .local v17, "$i$f$getDp\\13\\179":I
    move-object/from16 v55, v2

    .end local v2    # "factory\\9":Lkotlin/jvm/functions/Function0;
    .local v55, "factory\\9":Lkotlin/jvm/functions/Function0;
    int-to-float v2, v1

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 179
    .end local v1    # "$this$dp\\13":I
    .end local v17    # "$i$f$getDp\\13\\179":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v42

    .line 180
    const v0, 0x301b0

    sget v1, Landroidx/compose/ui/graphics/painter/Painter;->$stable:I

    or-int v48, v1, v0

    .line 176
    const-string v41, "Logo de Amani"

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/high16 v45, 0x3f800000    # 1.0f

    const/16 v46, 0x0

    const/16 v49, 0x58

    move-object/from16 v47, v4

    .end local v4    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v47, "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-static/range {v40 .. v49}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 184
    move-object/from16 v0, v47

    .end local v47    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\12":Landroidx/compose/runtime/Composer;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 p12, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .end local v3    # "materialized\\8":Landroidx/compose/ui/Modifier;
    .local p12, "materialized\\8":Landroidx/compose/ui/Modifier;
    invoke-static {v1, v4, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 185
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/ui/graphics/Shape;

    .line 186
    sget-object v40, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v41

    sget v1, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v50, v1, 0xc

    const/16 v51, 0xe

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    move-object/from16 v49, v0

    .end local v0    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v49, "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v40 .. v51}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v21

    .line 187
    move-object/from16 v47, v49

    .end local v49    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .restart local v47    # "$composer\\12":Landroidx/compose/runtime/Composer;
    sget-object v40, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    const/4 v0, 0x6

    .local v0, "$this$dp\\14":I
    const/4 v1, 0x0

    .line 418
    .local v1, "$i$f$getDp\\14\\187":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v41

    .end local v0    # "$this$dp\\14":I
    .end local v1    # "$i$f$getDp\\14\\187":I
    sget v0, Landroidx/compose/material3/CardDefaults;->$stable:I

    const/16 v16, 0x12

    shl-int/lit8 v0, v0, 0x12

    or-int/lit8 v48, v0, 0x6

    .line 187
    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x3e

    invoke-virtual/range {v40 .. v49}, Landroidx/compose/material3/CardDefaults;->cardElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardElevation;

    move-result-object v43

    .line 188
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda14;

    move-object/from16 v1, p11

    move-object/from16 v49, p12

    move v13, v3

    move v4, v6

    move/from16 v16, v9

    move-object v2, v10

    move-object/from16 v51, v12

    move-object/from16 v12, v47

    move-object/from16 v50, v54

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v10, p6

    move-object v9, v8

    move-object/from16 v54, v37

    move-object v8, v5

    move-object v5, v11

    move-object/from16 v37, v35

    move-object/from16 v11, p0

    move-object/from16 v35, v29

    move/from16 v29, v7

    move-object/from16 v7, p3

    .end local v7    # "$dirty":I
    .end local v9    # "$dirty1":I
    .end local v47    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .end local p0    # "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    .end local p12    # "materialized\\8":Landroidx/compose/ui/Modifier;
    .local v11, "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    .local v12, "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v16, "$dirty1":I
    .local v29, "$dirty":I
    .local v35, "verticalArrangement\\7":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v37, "modifier\\8":Landroidx/compose/ui/Modifier;
    .local v49, "materialized\\8":Landroidx/compose/ui/Modifier;
    .local v50, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v51, "measurePolicy\\8":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v54, "$composer\\9":Landroidx/compose/runtime/Composer;
    invoke-direct/range {v0 .. v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda14;-><init>(Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Ljava/lang/String;ZLorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move v0, v4

    move-object/from16 v56, v11

    .end local v11    # "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    .local v56, "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    const v4, -0x3e9968c3

    const/16 v5, 0x36

    invoke-static {v4, v13, v3, v12, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Lkotlin/jvm/functions/Function3;

    .line 183
    const/16 v44, 0x0

    const v47, 0x30006

    const/16 v48, 0x10

    move-object/from16 v46, v12

    move-object/from16 v40, v17

    move-object/from16 v41, v20

    move-object/from16 v42, v21

    .end local v12    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v46, "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-static/range {v40 .. v48}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 312
    move-object/from16 v10, v46

    .line 313
    .end local v46    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v10, "$composer\\12":Landroidx/compose/runtime/Composer;
    xor-int/lit8 v3, v0, 0x1

    .line 314
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;

    invoke-direct {v4, v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;-><init>(Landroidx/compose/material3/Typography;ZLandroidx/compose/material3/ColorScheme;)V

    const v6, 0x4da70008    # 3.5022464E8f

    invoke-static {v6, v13, v4, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v4, v29, 0x18

    and-int/lit8 v4, v4, 0xe

    or-int v11, v4, v19

    .line 311
    const/4 v1, 0x0

    move v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x1fa

    move-object/from16 v0, p8

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 176
    move-object/from16 v47, v10

    .end local v10    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .restart local v47    # "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-static/range {v47 .. v47}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 321
    nop

    .line 392
    .end local v39    # "$changed\\12":I
    .end local v47    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .end local v52    # "$this$LoginScreenContent_u24lambda_u2436\\12":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v53    # "$i$a$-Column-LoginScreenKt$LoginScreenContent$1\\12\\392\\0":I
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 416
    .end local v25    # "$changed\\11":I
    .end local v32    # "$i$a$-Layout-ColumnKt$Column$1\\11\\416\\7":I
    .end local v50    # "$composer\\11":Landroidx/compose/runtime/Composer;
    nop

    .line 419
    invoke-interface/range {v54 .. v54}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 401
    invoke-static/range {v54 .. v54}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 420
    nop

    .line 395
    .end local v30    # "$changed\\9":I
    .end local v33    # "$i$f$ReusableComposeNode\\9\\399":I
    .end local v54    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .end local v55    # "factory\\9":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v36 .. v36}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 421
    nop

    .line 389
    .end local v26    # "compositeKeyHash\\8":I
    .end local v27    # "$changed\\8":I
    .end local v28    # "$i$f$Layout\\8\\391":I
    .end local v36    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v37    # "modifier\\8":Landroidx/compose/ui/Modifier;
    .end local v38    # "localMap\\8":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v49    # "materialized\\8":Landroidx/compose/ui/Modifier;
    .end local v51    # "measurePolicy\\8":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v34 .. v34}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 422
    nop

    .end local v18    # "$changed\\7":I
    .end local v22    # "modifier\\7":Landroidx/compose/ui/Modifier;
    .end local v23    # "$i$f$Column\\7\\169":I
    .end local v24    # "measurePolicy\\7":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v31    # "horizontalAlignment\\7":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v34    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v35    # "verticalArrangement\\7":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 322
    .end local v56    # "isPasswordVisible$delegate":Landroidx/compose/runtime/MutableState;
    :cond_20
    move-object v1, v15

    goto :goto_13

    .line 152
    .end local v15    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v16    # "$dirty1":I
    .end local v29    # "$dirty":I
    .restart local v7    # "$dirty":I
    .restart local v9    # "$dirty1":I
    .local p0, "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    move/from16 v29, v7

    move/from16 v16, v9

    .end local v7    # "$dirty":I
    .end local v9    # "$dirty1":I
    .restart local v16    # "$dirty1":I
    .restart local v29    # "$dirty":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v1, p0

    .line 322
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    :goto_13
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_22

    move-object v2, v0

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda16;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v15, p15

    move-object/from16 v57, v2

    move-object/from16 v34, v14

    move-object/from16 v2, p1

    move/from16 v14, p14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v34, "$composer":Landroidx/compose/runtime/Composer;
    invoke-direct/range {v0 .. v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda16;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;III)V

    move-object/from16 v2, v57

    invoke-interface {v2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v34    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_22
    move-object/from16 v34, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v34    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14
    return-void
.end method

.method static final LoginScreenContent$lambda$20$lambda$19()Landroidx/compose/runtime/MutableState;
    .locals 3

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    return-object v0
.end method

.method private static final LoginScreenContent$lambda$21(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$isPasswordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 167
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 452
    .local v3, "$i$f$getValue\\1\\167":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\167":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 167
    return v0
.end method

.method private static final LoginScreenContent$lambda$22(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$isPasswordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 167
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

    .line 453
    .local v4, "$i$f$setValue\\1\\167":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 454
    nop

    .line 167
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\167":I
    return-void
.end method

.method static final LoginScreenContent$lambda$36$lambda$34(Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Ljava/lang/String;ZLorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 150
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p2, "$username"    # Ljava/lang/String;
    .param p3, "$isLoggingIn"    # Z
    .param p4, "$amaniColors"    # Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .param p5, "$onUsernameChange"    # Lkotlin/jvm/functions/Function1;
    .param p6, "$password"    # Ljava/lang/String;
    .param p7, "$onPasswordChange"    # Lkotlin/jvm/functions/Function1;
    .param p8, "$onLogin"    # Lkotlin/jvm/functions/Function0;
    .param p9, "$isLoginEnabled"    # Z
    .param p10, "$isPasswordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p11, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p12

    move/from16 v4, p13

    const-string v5, "$this$Card"

    move-object/from16 v6, p11

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "C188@7538L5887:LoginScreen.kt#8o7o96"

    invoke-static {v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v4, 0x11

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v7, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    and-int/lit8 v7, v4, 0x1

    invoke-interface {v3, v5, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous> (LoginScreen.kt:188)"

    const v10, -0x3e9968c3

    invoke-static {v10, v4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 190
    :cond_1
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 191
    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v7, v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 192
    const/16 v11, 0x14

    .local v11, "$this$dp\\1":I
    const/4 v12, 0x0

    .line 501
    .local v12, "$i$f$getDp\\1\\192":I
    int-to-float v13, v11

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 192
    .end local v11    # "$this$dp\\1":I
    .end local v12    # "$i$f$getDp\\1\\192":I
    invoke-static {v5, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 193
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v12, 0x10

    .local v12, "$this$dp\\2":I
    const/4 v13, 0x0

    .line 502
    .local v13, "$i$f$getDp\\2\\193":I
    int-to-float v14, v12

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    .line 193
    .end local v12    # "$this$dp\\2":I
    .end local v13    # "$i$f$getDp\\2\\193":I
    invoke-virtual {v11, v12}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 189
    nop

    .local v11, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    move-object/from16 v30, v5

    .local v30, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object/from16 v5, p12

    .local v5, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v12, 0x36

    move/from16 v31, v12

    .local v31, "$changed\\3":I
    const/16 v32, 0x0

    .line 503
    .local v32, "$i$f$Column\\3\\189":I
    const v13, 0x4ff7456f

    const-string v14, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v5, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 504
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v13

    .line 507
    .local v13, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v14, v31, 0x3

    and-int/lit8 v14, v14, 0xe

    shr-int/lit8 v15, v31, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v14, v15

    invoke-static {v11, v13, v5, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v33

    .line 511
    .local v33, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 510
    shl-int/lit8 v14, v31, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 508
    move/from16 v34, v14

    .local v34, "$changed\\4":I
    move-object v14, v5

    .local v14, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object/from16 v15, v30

    .local v15, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object/from16 v35, v33

    .local v35, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v36, 0x0

    .line 512
    .local v36, "$i$f$Layout\\4\\508":I
    const v12, -0x451e1427

    const-string v7, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v14, v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 513
    invoke-static {v14, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v37

    .line 514
    .local v37, "compositeKeyHash\\4":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 515
    .local v7, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v14, v15}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 517
    .local v12, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    shl-int/lit8 v8, v34, 0x6

    and-int/lit16 v8, v8, 0x380

    const/4 v6, 0x6

    or-int/2addr v8, v6

    .line 516
    move-object/from16 v38, v18

    .local v38, "factory\\5":Lkotlin/jvm/functions/Function0;
    move-object/from16 v39, v14

    .local v39, "$composer\\5":Landroidx/compose/runtime/Composer;
    move/from16 v40, v8

    .local v40, "$changed\\5":I
    const/16 v41, 0x0

    .line 518
    .local v41, "$i$f$ReusableComposeNode\\5\\516":I
    const v8, -0x20f7d59c

    move/from16 v18, v6

    const-string v6, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v20, v11

    move-object/from16 v11, v39

    .end local v39    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v11, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v20, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v11, v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 519
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 520
    :cond_2
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 521
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 522
    move-object/from16 v6, v38

    .end local v38    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v6, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 524
    .end local v6    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v38    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v6, v38

    .end local v38    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 526
    :goto_1
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .local v8, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 527
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\526\\4":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    move-object/from16 v22, v6

    move-object/from16 v6, v35

    .end local v35    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v22, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-static {v8, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 528
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v8, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 529
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 530
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 531
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 532
    nop

    .line 526
    .end local v8    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\526\\4":I
    nop

    .line 533
    shr-int/lit8 v8, v40, 0x6

    and-int/lit8 v35, v8, 0xe

    .local v35, "$changed\\7":I
    move-object v8, v11

    .local v8, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 509
    .local v38, "$i$a$-Layout-ColumnKt$Column$1\\7\\533\\3":I
    const v9, 0x7cc0ae6e

    const-string v10, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v8, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v9, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v10, v31, 0x6

    and-int/lit8 v10, v10, 0x70

    or-int/lit8 v39, v10, 0x6

    .local v39, "$changed\\8":I
    check-cast v9, Landroidx/compose/foundation/layout/ColumnScope;

    .local v9, "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433\\8":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v10, v8

    .local v10, "$composer\\8":Landroidx/compose/runtime/Composer;
    move-object/from16 v136, v9

    .end local v9    # "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .local v136, "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433\\8":Landroidx/compose/foundation/layout/ColumnScope;
    const/16 v137, 0x0

    .line 195
    .local v137, "$i$a$-Column-LoginScreenKt$LoginScreenContent$1$1$1\\8\\509\\0":I
    const v9, 0x669aefd6

    const-string v3, "C194@7753L164,199@7934L188,223@9154L6,224@9224L425,209@8335L61,212@8610L417,205@8140L1527,264@11349L6,265@11419L425,238@9880L53,251@10661L561,241@10102L393,234@9685L2177,279@12050L6,282@12194L292,289@12580L831,275@11880L1531:LoginScreen.kt#8o7o96"

    invoke-static {v10, v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v62

    .line 198
    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v44

    .line 196
    nop

    .line 198
    nop

    .line 197
    nop

    .line 195
    const-string v42, "Iniciar sesi\u00f3n"

    const/16 v43, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x6

    const/16 v65, 0x0

    const v66, 0xfffa

    move-object/from16 v63, v10

    .end local v10    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v63, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v42 .. v66}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 202
    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v62

    .line 203
    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v44

    .line 201
    nop

    .line 203
    nop

    .line 202
    nop

    .line 200
    const-string v42, "Accede a tu espacio terap\u00e9utico"

    invoke-static/range {v42 .. v66}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 207
    move-object/from16 v3, v63

    .end local v63    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object/from16 v17, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .end local v5    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v17, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v10, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 212
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v4, Lkotlin/text/Regex;

    const-string v10, "^[A-Za-z0-9+_.-]+@(.+)$"

    invoke-direct {v4, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 223
    :goto_2
    nop

    .line 224
    move-object v4, v15

    move v15, v5

    .end local v15    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v4, "modifier\\4":Landroidx/compose/ui/Modifier;
    xor-int/lit8 v5, p3, 0x1

    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    move-object/from16 v24, v4

    .end local v4    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v24, "modifier\\4":Landroidx/compose/ui/Modifier;
    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v10, v3, v4}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/Shapes;->getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v4

    .line 225
    sget-object v42, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 226
    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v64

    .line 227
    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v66

    .line 228
    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v70

    .line 229
    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v59

    .line 230
    invoke-virtual/range {p4 .. p4}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getTextFieldContainer-0d7_KjU()J

    move-result-wide v51

    .line 231
    invoke-virtual/range {p4 .. p4}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getTextFieldContainer-0d7_KjU()J

    move-result-wide v53

    .line 225
    nop

    .line 230
    nop

    .line 231
    nop

    .line 229
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 225
    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v104, 0x0

    const-wide/16 v106, 0x0

    const-wide/16 v108, 0x0

    const-wide/16 v110, 0x0

    const-wide/16 v112, 0x0

    const-wide/16 v114, 0x0

    const-wide/16 v116, 0x0

    const-wide/16 v118, 0x0

    const-wide/16 v120, 0x0

    const-wide/16 v122, 0x0

    const-wide/16 v124, 0x0

    const-wide/16 v126, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0xc00

    const v134, 0x7fffa6cf

    const/16 v135, 0xfff

    move-object/from16 v128, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v128, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v42 .. v135}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v3

    .line 208
    move-object/from16 v10, v128

    .line 209
    .end local v128    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer\\8":Landroidx/compose/runtime/Composer;
    nop

    .line 207
    nop

    .line 223
    nop

    .line 210
    move-object/from16 v26, v3

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/material3/Typography;)V

    move-object/from16 v27, v4

    const v4, 0x533be5cd

    move/from16 v28, v5

    move-object/from16 v16, v6

    const/16 v5, 0x36

    const/4 v6, 0x1

    .end local v6    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v16, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v4, v6, v3, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    sget-object v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;->getLambda$693038124$app()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 213
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda6;

    invoke-direct {v5, v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;)V

    const v2, 0x69df69a

    move-object/from16 v29, v3

    const/16 v3, 0x36

    invoke-static {v2, v6, v5, v10, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 212
    nop

    .line 222
    nop

    .line 224
    move-object/from16 v23, v27

    check-cast v23, Landroidx/compose/ui/graphics/Shape;

    .line 225
    nop

    .line 206
    move v5, v6

    const/4 v6, 0x0

    move-object/from16 v27, v7

    .end local v7    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    const/4 v7, 0x0

    move-object/from16 v63, v10

    .end local v10    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v63    # "$composer\\8":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    move-object/from16 v42, v11

    .end local v11    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    move-object/from16 v43, v12

    .end local v12    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v43, "materialized\\4":Landroidx/compose/ui/Modifier;
    const/4 v12, 0x0

    move-object/from16 v44, v13

    .end local v13    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .local v44, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    const/4 v13, 0x0

    move-object/from16 v45, v16

    .end local v16    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v45, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v16, 0x0

    move-object/from16 v46, v17

    .end local v17    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v46, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    move/from16 v47, v18

    const/16 v18, 0x0

    const/16 v48, 0x0

    const/16 v19, 0x1

    move-object/from16 v49, v20

    .end local v20    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v49, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/16 v20, 0x0

    const/16 v50, 0x0

    const/16 v21, 0x0

    move-object/from16 v51, v22

    .end local v22    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v51, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v22, 0x0

    move-object/from16 v52, v24

    move-object/from16 v24, v26

    .end local v24    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v52, "modifier\\4":Landroidx/compose/ui/Modifier;
    const v26, 0xd80180

    move-object/from16 v53, v27

    .end local v27    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .local v53, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    const v27, 0xc00180

    move/from16 v54, v5

    move/from16 v5, v28

    const/16 v28, 0x0

    move-object/from16 v128, v8

    move-object/from16 v8, v29

    .end local v8    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v128, "$composer\\7":Landroidx/compose/runtime/Composer;
    const v29, 0x1dcf30

    move-object v0, v9

    move-object v9, v4

    move-object v4, v0

    move-object/from16 v3, p5

    move-object/from16 v141, v14

    move-object/from16 v147, v42

    move-object/from16 v145, v43

    move-object/from16 v140, v44

    move-object/from16 v143, v45

    move-object/from16 v139, v46

    move-object/from16 v138, v49

    move/from16 v1, v50

    move-object/from16 v146, v51

    move-object/from16 v142, v52

    move-object/from16 v144, v53

    move-object/from16 v25, v63

    move-object/from16 v148, v128

    const/4 v0, 0x0

    move-object v14, v2

    move-object/from16 v2, p2

    .end local v14    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v42    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local v43    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v44    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v45    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v46    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v49    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v51    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v52    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v53    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v63    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v128    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v138, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v139, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v140, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .local v141, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v142, "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v143, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v144, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .local v145, "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v146, "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v147, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v148, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v29}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 236
    move-object/from16 v3, v25

    .end local v25    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x1

    invoke-static {v2, v1, v4, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 241
    move-object/from16 v5, p6

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_5

    move v15, v4

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 251
    :goto_3
    invoke-static/range {p10 .. p10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$21(Landroidx/compose/runtime/MutableState;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v5

    goto :goto_4

    :cond_6
    new-instance v5, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v0}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>(CILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v5, Landroidx/compose/ui/text/input/VisualTransformation;

    :goto_4
    move-object/from16 v16, v5

    .line 264
    nop

    .line 265
    move/from16 v5, p3

    xor-int/lit8 v6, v5, 0x1

    sget-object v7, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v8, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v7, v3, v8}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material3/Shapes;->getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    .line 266
    sget-object v42, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v64

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v66

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v70

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v59

    .line 271
    invoke-virtual/range {p4 .. p4}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getTextFieldContainer-0d7_KjU()J

    move-result-wide v51

    .line 272
    invoke-virtual/range {p4 .. p4}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getTextFieldContainer-0d7_KjU()J

    move-result-wide v53

    .line 266
    nop

    .line 271
    nop

    .line 272
    nop

    .line 270
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 266
    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v104, 0x0

    const-wide/16 v106, 0x0

    const-wide/16 v108, 0x0

    const-wide/16 v110, 0x0

    const-wide/16 v112, 0x0

    const-wide/16 v114, 0x0

    const-wide/16 v116, 0x0

    const-wide/16 v118, 0x0

    const-wide/16 v120, 0x0

    const-wide/16 v122, 0x0

    const-wide/16 v124, 0x0

    const-wide/16 v126, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0xc00

    const v134, 0x7fffa6cf

    const/16 v135, 0xfff

    move-object/from16 v128, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v128, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v42 .. v135}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v24

    .line 237
    .end local v128    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    nop

    .line 238
    nop

    .line 236
    nop

    .line 264
    nop

    .line 239
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda7;

    move-object/from16 v9, p0

    invoke-direct {v8, v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/material3/Typography;)V

    const v10, -0x286dd5bc

    const/16 v11, 0x36

    invoke-static {v10, v4, v8, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    check-cast v8, Lkotlin/jvm/functions/Function2;

    sget-object v10, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;

    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;->getLambda$1962743011$app()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .line 252
    new-instance v12, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda8;

    move-object/from16 v13, p10

    invoke-direct {v12, v13, v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;Z)V

    const v14, -0x502d15df

    invoke-static {v14, v4, v12, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 242
    new-instance v14, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;

    move-object/from16 v0, p1

    move-object/from16 v17, v2

    move-object/from16 v2, p6

    invoke-direct {v14, v2, v9, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;)V

    const v1, 0x3ab33bd1

    invoke-static {v1, v4, v14, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 241
    nop

    .line 251
    nop

    .line 263
    nop

    .line 265
    move-object/from16 v23, v7

    check-cast v23, Landroidx/compose/ui/graphics/Shape;

    .line 266
    nop

    .line 235
    move v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v10

    const/4 v10, 0x0

    move/from16 v149, v11

    move-object v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v54, v4

    move-object/from16 v4, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v26, 0x30d80180

    const v27, 0xc00180

    const/16 v28, 0x0

    const v29, 0x1d8d30

    move-object/from16 v1, p0

    move-object/from16 v25, v3

    move/from16 v0, v54

    move-object/from16 v3, p7

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v29}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 277
    move-object/from16 v3, v25

    .end local v25    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 278
    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v10, v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 279
    const/16 v4, 0x34

    .local v4, "$this$dp\\9":I
    const/4 v5, 0x0

    .line 534
    .local v5, "$i$f$getDp\\9\\279":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 279
    .end local v4    # "$this$dp\\9":I
    .end local v5    # "$i$f$getDp\\9\\279":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 280
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v3, v5}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/Shapes;->getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v4

    .line 283
    sget-object v42, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v43

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v45

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v47

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v49

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v52, v5, 0xc

    .line 283
    const/16 v53, 0x0

    move-object/from16 v51, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v51, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v42 .. v53}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v46

    .line 289
    .end local v51    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x1

    .local v5, "$this$dp\\10":I
    const/4 v6, 0x0

    .line 535
    .local v6, "$i$f$getDp\\10\\289":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 289
    .end local v5    # "$this$dp\\10":I
    .end local v6    # "$i$f$getDp\\10\\289":I
    invoke-virtual/range {p4 .. p4}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getButtonBorder-0d7_KjU()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v48

    .line 281
    nop

    .line 279
    nop

    .line 282
    nop

    .line 280
    move-object/from16 v45, v4

    check-cast v45, Landroidx/compose/ui/graphics/Shape;

    .line 283
    nop

    .line 289
    nop

    .line 290
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda10;

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-direct {v4, v6, v1, v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda10;-><init>(ZLandroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;)V

    const v7, -0xadd81dd

    const/16 v11, 0x36

    invoke-static {v7, v0, v4, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v51, v0

    check-cast v51, Lkotlin/jvm/functions/Function3;

    .line 276
    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const v53, 0x30000030

    const/16 v54, 0x1a0

    move-object/from16 v42, p8

    move/from16 v44, p9

    move-object/from16 v43, v2

    move-object/from16 v52, v3

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v52, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v42 .. v54}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 195
    .end local v52    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 308
    nop

    .line 509
    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v39    # "$changed\\8":I
    .end local v136    # "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v137    # "$i$a$-Column-LoginScreenKt$LoginScreenContent$1$1$1\\8\\509\\0":I
    invoke-static/range {v148 .. v148}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 533
    .end local v35    # "$changed\\7":I
    .end local v38    # "$i$a$-Layout-ColumnKt$Column$1\\7\\533\\3":I
    .end local v148    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 536
    invoke-interface/range {v147 .. v147}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 518
    invoke-static/range {v147 .. v147}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 537
    nop

    .line 512
    .end local v40    # "$changed\\5":I
    .end local v41    # "$i$f$ReusableComposeNode\\5\\516":I
    .end local v146    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v147    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static/range {v141 .. v141}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 538
    nop

    .line 503
    .end local v34    # "$changed\\4":I
    .end local v36    # "$i$f$Layout\\4\\508":I
    .end local v37    # "compositeKeyHash\\4":I
    .end local v141    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v142    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v143    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v144    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v145    # "materialized\\4":Landroidx/compose/ui/Modifier;
    invoke-static/range {v139 .. v139}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 539
    nop

    .end local v30    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v31    # "$changed\\3":I
    .end local v32    # "$i$f$Column\\3\\189":I
    .end local v33    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v138    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v139    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v140    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 188
    :cond_7
    move/from16 v6, p3

    move-object v5, v1

    move-object v1, v0

    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 309
    :cond_8
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$23(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C209@8337L57:LoginScreen.kt#8o7o96"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:209)"

    const v4, 0x533be5cd

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 210
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/16 v23, 0x0

    const v24, 0xfffe

    const-string v0, "Correo electr\u00f3nico"

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

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$24(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$username"    # Ljava/lang/String;
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "C:LoginScreen.kt#8o7o96"

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

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:213)"

    const v4, 0x69df69a

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 214
    :cond_1
    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "^[A-Za-z0-9+_.-]+@(.+)$"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x85e1069

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "214@8748L231"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v2

    .line 216
    nop

    .line 218
    nop

    .line 217
    nop

    .line 215
    const-string v0, "Introduce un correo electr\u00f3nico v\u00e1lido"

    const/4 v1, 0x0

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

    const v24, 0xfffa

    move-object/from16 v21, p3

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 214
    move-object/from16 v0, v21

    goto :goto_1

    :cond_2
    const v1, 0x7d9f388

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 213
    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 221
    :cond_4
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$25(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C238@9882L49:LoginScreen.kt#8o7o96"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:238)"

    const v4, -0x286dd5bc

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 239
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/16 v23, 0x0

    const v24, 0xfffe

    const-string v0, "Contrase\u00f1a"

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

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29(Landroidx/compose/runtime/MutableState;ZLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$isPasswordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$isLoggingIn"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C253@10737L42,255@10858L342,252@10687L513:LoginScreen.kt#8o7o96"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:252)"

    const v3, -0x502d15df

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 254
    :cond_1
    const v0, 0x6c0ef8b

    const-string v1, "CC(remember):LoginScreen.kt#9igjgp"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid\\1":Z
    move-object v1, p2

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 455
    .local v3, "$i$f$cache\\1\\254":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 456
    .local v5, "$i$a$-let-ComposerKt$cache$1\\2\\455\\1":I
    if-nez v0, :cond_3

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_2

    goto :goto_1

    .line 460
    :cond_2
    goto :goto_2

    .line 457
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .line 254
    .local v7, "$i$a$-cache-LoginScreenKt$LoginScreenContent$1$1$1$4$1\\3\\457\\0":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda11;

    invoke-direct {v8, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 457
    .end local v7    # "$i$a$-cache-LoginScreenKt$LoginScreenContent$1$1$1$4$1\\3\\457\\0":I
    nop

    .line 458
    .local v8, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 459
    move-object v4, v8

    .line 455
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\2\\455\\1":I
    .end local v8    # "value\\2":Ljava/lang/Object;
    :goto_2
    nop

    .line 254
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\1\\254":I
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 255
    xor-int/lit8 v1, p1, 0x1

    .line 256
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v4, 0x36

    const v5, 0xce3f024

    invoke-static {v5, v2, v3, p2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 253
    move v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x30000

    const/16 v8, 0x1a

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 252
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 262
    :cond_5
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29$lambda$27$lambda$26(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$isPasswordVisible$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 254
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$21(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$22(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$29$lambda$28(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$isPasswordVisible$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C256@10888L286:LoginScreen.kt#8o7o96"

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

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:256)"

    const v2, 0xce3f024

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 258
    :cond_1
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$21(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/VisibilityOffKt;->getVisibilityOff(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/VisibilityKt;->getVisibility(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 259
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$21(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Ocultar contrase\u00f1a"

    goto :goto_2

    :cond_3
    const-string v0, "Mostrar contrase\u00f1a"

    :goto_2
    move-object v2, v0

    .line 257
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v6, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 256
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_4
    move-object v6, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 261
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$30(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$password"    # Ljava/lang/String;
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "C:LoginScreen.kt#8o7o96"

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

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:242)"

    const v4, 0x3ab33bd1

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 243
    :cond_1
    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    const v2, -0x60cf36

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "243@10208L239"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v2

    .line 245
    nop

    .line 247
    nop

    .line 246
    nop

    .line 244
    const-string v0, "La contrase\u00f1a debe tener al menos 6 caracteres"

    const/4 v1, 0x0

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

    const v24, 0xfffa

    move-object/from16 v21, p3

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 243
    move-object/from16 v0, v21

    goto :goto_1

    :cond_2
    const v1, -0xfb068f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 242
    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 250
    :cond_4
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$32(ZLandroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 56
    .param p0, "$isLoggingIn"    # Z
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p4

    move/from16 v1, p5

    const-string v2, "$this$Button"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C:LoginScreen.kt#8o7o96"

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

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LoginScreen.kt:290)"

    const v6, -0xadd81dd

    invoke-static {v6, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 291
    :cond_1
    if-eqz p0, :cond_4

    const v2, -0x670a6d1c

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "291@12645L619"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 293
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 294
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 292
    nop

    .local v4, "verticalAlignment\\1":Landroidx/compose/ui/Alignment$Vertical;
    move-object/from16 v6, p4

    .local v6, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v7, 0x1b0

    .local v2, "horizontalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v7, "$changed\\1":I
    const/4 v8, 0x0

    .line 461
    .local v8, "$i$f$Row\\1\\292":I
    const v9, 0x3255a44b

    const-string v10, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 462
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 467
    .local v9, "modifier\\1":Landroidx/compose/ui/Modifier;
    shr-int/lit8 v10, v7, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v2, v4, v6, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .line 471
    .local v10, "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 470
    shl-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 468
    move-object v12, v6

    .local v12, "$composer\\2":Landroidx/compose/runtime/Composer;
    move-object v13, v10

    .local v13, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v14, v9

    .local v11, "$changed\\2":I
    .local v14, "modifier\\2":Landroidx/compose/ui/Modifier;
    const/4 v15, 0x0

    .line 472
    .local v15, "$i$f$Layout\\2\\468":I
    const v5, -0x451e1427

    const-string v1, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 473
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    .line 474
    .local v1, "compositeKeyHash\\2":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 475
    .local v5, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v16, v1

    .end local v1    # "compositeKeyHash\\2":I
    .local v16, "compositeKeyHash\\2":I
    invoke-static {v12, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 477
    .local v1, "materialized\\2":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "horizontalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v18, "horizontalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shl-int/lit8 v2, v11, 0x6

    and-int/lit16 v2, v2, 0x380

    move/from16 v19, v2

    const/4 v2, 0x6

    or-int/lit8 v19, v19, 0x6

    .line 476
    nop

    .local v19, "$changed\\3":I
    move-object/from16 v20, v12

    .local v20, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v21, v17

    .local v21, "factory\\3":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 478
    .local v17, "$i$f$ReusableComposeNode\\3\\476":I
    move/from16 v22, v2

    const v2, -0x20f7d59c

    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v23, v4

    move-object/from16 v4, v20

    .end local v20    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v23, "verticalAlignment\\1":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 479
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 480
    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 481
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    move-object/from16 v2, v21

    .end local v21    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 484
    .end local v2    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory\\3":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v2, v21

    .end local v21    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 486
    :goto_1
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 487
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\486\\2":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v2

    .end local v2    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v24, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 488
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 489
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v4

    .end local v4    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 490
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 491
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 492
    nop

    .line 486
    .end local v3    # "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\486\\2":I
    nop

    .line 493
    shr-int/lit8 v2, v19, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\5":I
    move-object/from16 v3, v25

    .local v3, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 469
    .local v4, "$i$a$-Layout-RowKt$Row$1\\5\\493\\1":I
    move-object/from16 v20, v1

    .end local v1    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .local v20, "materialized\\2":Landroidx/compose/ui/Modifier;
    const v1, 0x56ccd6f5

    move/from16 v21, v2

    .end local v2    # "$changed\\5":I
    .local v21, "$changed\\5":I
    const-string v2, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v7, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\6":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433_u24lambda_u2432_u24lambda_u2431\\6":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v33, v3

    .local v33, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v51, 0x0

    .line 296
    .local v51, "$i$a$-Row-LoginScreenKt$LoginScreenContent$1$1$1$6$1\\6\\469\\0":I
    move-object/from16 v52, v1

    .end local v1    # "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433_u24lambda_u2432_u24lambda_u2431\\6":Landroidx/compose/foundation/layout/RowScope;
    .local v52, "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433_u24lambda_u2432_u24lambda_u2431\\6":Landroidx/compose/foundation/layout/RowScope;
    const v1, 0x33762ede

    move/from16 v53, v2

    .end local v2    # "$changed\\6":I
    .local v53, "$changed\\6":I
    const-string v2, "C295@12853L230,300@13112L39,301@13180L58:LoginScreen.kt#8o7o96"

    move-object/from16 v54, v3

    .end local v33    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v54, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 297
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x12

    .local v2, "$this$dp\\7":I
    const/16 v26, 0x0

    .line 494
    .local v26, "$i$f$getDp\\7\\297":I
    nop

    .end local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v33    # "$composer\\6":Landroidx/compose/runtime/Composer;
    int-to-float v3, v2

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 297
    .end local v2    # "$this$dp\\7":I
    .end local v26    # "$i$f$getDp\\7\\297":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v26

    .line 298
    const/4 v1, 0x2

    .local v1, "$this$dp\\8":I
    const/4 v2, 0x0

    .line 495
    .local v2, "$i$f$getDp\\8\\298":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v29

    .line 298
    .end local v1    # "$this$dp\\8":I
    .end local v2    # "$i$f$getDp\\8\\298":I
    nop

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v27

    .line 297
    nop

    .line 299
    nop

    .line 298
    nop

    .line 296
    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x186

    const/16 v35, 0x18

    invoke-static/range {v26 .. v35}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 301
    move-object/from16 v3, v33

    .end local v33    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x8

    .local v2, "$this$dp\\9":I
    const/16 v26, 0x0

    .line 496
    .local v26, "$i$f$getDp\\9\\301":I
    move/from16 v55, v4

    .end local v4    # "$i$a$-Layout-RowKt$Row$1\\5\\493\\1":I
    .local v55, "$i$a$-Layout-RowKt$Row$1\\5\\493\\1":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 301
    .end local v2    # "$this$dp\\9":I
    .end local v26    # "$i$f$getDp\\9\\301":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v2, v22

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v46

    const/16 v49, 0x0

    const v50, 0xfffe

    const-string v26, "Iniciando sesi\u00f3n..."

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v48, 0x6

    move-object/from16 v47, v3

    .end local v3    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v47, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v26 .. v50}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 296
    move-object/from16 v33, v47

    .end local v47    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v33    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 303
    nop

    .line 469
    .end local v33    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v51    # "$i$a$-Row-LoginScreenKt$LoginScreenContent$1$1$1$6$1\\6\\469\\0":I
    .end local v52    # "$this$LoginScreenContent_u24lambda_u2436_u24lambda_u2434_u24lambda_u2433_u24lambda_u2432_u24lambda_u2431\\6":Landroidx/compose/foundation/layout/RowScope;
    .end local v53    # "$changed\\6":I
    invoke-static/range {v54 .. v54}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 493
    .end local v21    # "$changed\\5":I
    .end local v54    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local v55    # "$i$a$-Layout-RowKt$Row$1\\5\\493\\1":I
    nop

    .line 497
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 478
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 498
    nop

    .line 472
    .end local v17    # "$i$f$ReusableComposeNode\\3\\476":I
    .end local v19    # "$changed\\3":I
    .end local v24    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 499
    nop

    .line 461
    .end local v5    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "$changed\\2":I
    .end local v12    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v13    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v14    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v15    # "$i$f$Layout\\2\\468":I
    .end local v16    # "compositeKeyHash\\2":I
    .end local v20    # "materialized\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 500
    nop

    .line 291
    .end local v6    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v7    # "$changed\\1":I
    .end local v8    # "$i$f$Row\\1\\292":I
    .end local v9    # "modifier\\1":Landroidx/compose/ui/Modifier;
    .end local v10    # "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v18    # "horizontalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v23    # "verticalAlignment\\1":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_2

    .line 304
    :cond_4
    const v1, -0x670081c6

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "304@13318L53"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/16 v23, 0x0

    const v24, 0xfffe

    const-string v0, "Iniciar sesi\u00f3n"

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

    move-object/from16 v21, p4

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 304
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 290
    :cond_5
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 307
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreenContent$lambda$36$lambda$35(Landroidx/compose/material3/Typography;ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$typography"    # Landroidx/compose/material3/Typography;
    .param p1, "$isLoggingIn"    # Z
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$this$TextButton"    # Landroidx/compose/foundation/layout/RowScope;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p4

    move/from16 v1, p5

    const-string v2, "$this$TextButton"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C314@13555L220:LoginScreen.kt#8o7o96"

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

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenContent.<anonymous>.<anonymous> (LoginScreen.kt:314)"

    const v5, 0x4da70008    # 3.5022464E8f

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 317
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 318
    if-nez p1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v6

    const/16 v12, 0xe

    const/4 v13, 0x0

    const v8, 0x3ec28f5c    # 0.38f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    .line 316
    :goto_1
    nop

    .line 318
    nop

    .line 317
    nop

    .line 315
    const-string v0, "\u00bfNo tienes cuenta? Reg\u00edstrate"

    const/4 v1, 0x0

    move-wide v2, v4

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

    const v24, 0xfffa

    move-object/from16 v21, p4

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 314
    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 320
    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LoginScreenContent$lambda$37(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, p14

    move-object/from16 v13, p15

    invoke-static/range {v1 .. v16}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final LoginScreenPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 329
    const v0, 0x7640dda4

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v1, "C(LoginScreenPreview)329@13975L635:LoginScreen.kt#8o7o96"

    invoke-static {p0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/lit8 v4, p1, 0x1

    invoke-interface {p0, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenPreview (LoginScreen.kt:328)"

    invoke-static {v0, p1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$LoginScreenKt;->getLambda$1163884097$app()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 330
    const/16 v3, 0x30

    invoke-static {v1, v0, p0, v3, v2}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->ApplicationAmaniTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 327
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 350
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method static final LoginScreenPreview$lambda$38(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenPreview(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$LoginScreen$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/Result;
    .locals 1
    .param p0, "$loginResult$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/Result;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$LoginScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 1
    .param p0, "$loginError$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
