.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ConsentimientoScreenKt;
.super Ljava/lang/Object;
.source "ConsentimientoScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConsentimientoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConsentimientoScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ConsentimientoScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,90:1\n1128#2,6:91\n1128#2,6:97\n85#3:103\n117#3,2:104\n85#3:106\n117#3,2:107\n*S KotlinDebug\n*F\n+ 1 ConsentimientoScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ConsentimientoScreenKt\n*L\n30#1:91,6\n31#1:97,6\n30#1:103\n30#1:104,2\n31#1:106\n31#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\n\u001a\u00020\tX\u008a\u008e\u0002"
    }
    d2 = {
        "ConsentimientoScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "loginViewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "aceptaVideo",
        "",
        "aceptaComunicacion"
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
.method public static final ConsentimientoScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "navController"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loginViewModel"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const v3, -0x56480ce3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(ConsentimientoScreen)N(navController,loginViewModel)29@1150L34,30@1215L34,32@1255L1689:ConsentimientoScreen.kt#qemjsp"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    .line 30
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 28
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :cond_0
    and-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v6, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ConsentimientoScreen (ConsentimientoScreen.kt:27)"

    invoke-static {v3, v2, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 30
    :cond_1
    const v3, 0x1b87b0ff

    const-string v5, "CC(remember):ConsentimientoScreen.kt#9igjgp"

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid\\1":Z
    move-object v6, v4

    .local v6, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 91
    .local v8, "$i$f$cache\\1\\30":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\1":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 92
    .local v10, "$i$a$-let-ComposerKt$cache$1\\2\\91\\1":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v9, v11, :cond_2

    .line 93
    const/4 v11, 0x0

    .line 30
    .local v11, "$i$a$-cache-ConsentimientoScreenKt$ConsentimientoScreen$aceptaVideo$2\\3\\93\\0":I
    invoke-static {v7, v13, v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    .line 93
    .end local v11    # "$i$a$-cache-ConsentimientoScreenKt$ConsentimientoScreen$aceptaVideo$2\\3\\93\\0":I
    nop

    .line 94
    .local v11, "value\\2":Ljava/lang/Object;
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    move-object v9, v11

    .end local v11    # "value\\2":Ljava/lang/Object;
    goto :goto_0

    .line 96
    :cond_2
    nop

    .line 91
    .end local v9    # "it\\1":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1\\2\\91\\1":I
    :goto_0
    nop

    .line 30
    .end local v3    # "invalid\\1":Z
    .end local v6    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\1\\30":I
    move-object v3, v9

    check-cast v3, Landroidx/compose/runtime/MutableState;

    .local v3, "aceptaVideo$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 31
    const v6, 0x1b87b91f

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid\\4":Z
    move-object v6, v4

    .local v6, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 97
    .local v8, "$i$f$cache\\4\\31":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\4":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 98
    .local v10, "$i$a$-let-ComposerKt$cache$1\\5\\97\\4":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_3

    .line 99
    const/4 v11, 0x0

    .line 31
    .local v11, "$i$a$-cache-ConsentimientoScreenKt$ConsentimientoScreen$aceptaComunicacion$2\\6\\99\\0":I
    invoke-static {v7, v13, v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    .line 99
    .end local v11    # "$i$a$-cache-ConsentimientoScreenKt$ConsentimientoScreen$aceptaComunicacion$2\\6\\99\\0":I
    nop

    .line 100
    .local v7, "value\\5":Ljava/lang/Object;
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 101
    move-object v9, v7

    .end local v7    # "value\\5":Ljava/lang/Object;
    goto :goto_1

    .line 102
    :cond_3
    nop

    .line 97
    .end local v9    # "it\\4":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1\\5\\97\\4":I
    :goto_1
    nop

    .line 31
    .end local v5    # "invalid\\4":Z
    .end local v6    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\4\\31":I
    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/runtime/MutableState;

    .local v19, "aceptaComunicacion$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    sget-object v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$ConsentimientoScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$ConsentimientoScreenKt;

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$ConsentimientoScreenKt;->getLambda$-547149140$app()Lkotlin/jvm/functions/Function3;

    move-result-object v15

    .line 33
    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/high16 v17, 0x30000000

    const/16 v18, 0x1ff

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v3    # "aceptaVideo$delegate":Landroidx/compose/runtime/MutableState;
    .end local v19    # "aceptaComunicacion$delegate":Landroidx/compose/runtime/MutableState;
    goto :goto_2

    .line 24
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_4
    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 90
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ConsentimientoScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ConsentimientoScreenKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method private static final ConsentimientoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$aceptaVideo$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$f$getValue\\1\\30":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\30":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    return v0
.end method

.method private static final ConsentimientoScreen$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$aceptaVideo$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 30
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

    .line 104
    .local v4, "$i$f$setValue\\1\\30":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 105
    nop

    .line 30
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\30":I
    return-void
.end method

.method private static final ConsentimientoScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$aceptaComunicacion$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$f$getValue\\1\\31":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\31":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 31
    return v0
.end method

.method private static final ConsentimientoScreen$lambda$5(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$aceptaComunicacion$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 31
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

    .line 107
    .local v4, "$i$f$setValue\\1\\31":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 108
    nop

    .line 31
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\31":I
    return-void
.end method

.method static final ConsentimientoScreen$lambda$6(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ConsentimientoScreenKt;->ConsentimientoScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
