.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;
.super Ljava/lang/Object;
.source "AgregarAdministrador.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAgregarAdministrador.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AgregarAdministrador.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,220:1\n1128#2,6:221\n1128#2,6:227\n1128#2,6:243\n1128#2,6:283\n1128#2,6:290\n1128#2,6:297\n1128#2,6:304\n1128#2,6:314\n1128#2,6:324\n85#3:233\n117#3,2:234\n85#3:236\n85#3:237\n85#3:238\n85#3:239\n85#3:240\n117#3,2:241\n122#4:249\n122#4:282\n122#4:289\n122#4:296\n122#4:303\n122#4:310\n122#4:311\n122#4:312\n122#4:313\n122#4:320\n122#4:321\n122#4:322\n122#4:323\n87#5:250\n84#5,9:251\n94#5:333\n81#6,6:260\n88#6,6:275\n96#6:332\n391#7,9:266\n400#7:281\n401#7,2:330\n*S KotlinDebug\n*F\n+ 1 AgregarAdministrador.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt\n*L\n60#1:221,6\n74#1:227,6\n160#1:243,6\n99#1:283,6\n118#1:290,6\n137#1:297,6\n155#1:304,6\n182#1:314,6\n205#1:324,6\n60#1:233\n60#1:234,2\n69#1:236\n70#1:237\n71#1:238\n72#1:239\n74#1:240\n74#1:241,2\n87#1:249\n91#1:282\n110#1:289\n129#1:296\n148#1:303\n173#1:310\n179#1:311\n180#1:312\n181#1:313\n196#1:320\n202#1:321\n203#1:322\n204#1:323\n83#1:250\n83#1:251,9\n83#1:333\n83#1:260,6\n83#1:275,6\n83#1:332\n83#1:266,9\n83#1:281\n83#1:330,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\n\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000b\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000c\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\r\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000e\u001a\u00020\u000fX\u008a\u008e\u0002"
    }
    d2 = {
        "AgregarAdministrador",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "loginViewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "currentRoute",
        "",
        "name",
        "surname",
        "email",
        "password",
        "existe",
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
.method public static final AgregarAdministrador(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 28
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move/from16 v10, p3

    const-string v0, "navController"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginViewModel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const v0, 0x1bf94994

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(AgregarAdministrador)N(navController,loginViewModel)59@2506L40,68@2804L16,69@2864L16,70@2919L16,71@2983L16,73@3019L33,77@3163L81,80@3251L5204,75@3094L5361:AgregarAdministrador.kt#6w2cjo"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v4, v10, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v2, v4

    :cond_1
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_3

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    :cond_3
    move v12, v2

    .end local v2    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit8 v2, v12, 0x13

    const/16 v4, 0x12

    const/4 v13, 0x1

    if-eq v2, v4, :cond_4

    move v2, v13

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v4, v12, 0x1

    invoke-interface {v11, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador (AgregarAdministrador.kt:57)"

    invoke-static {v0, v12, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 60
    :cond_5
    const v0, 0x2cd45bc

    const-string v2, "CC(remember):AgregarAdministrador.kt#9igjgp"

    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\1":Z
    move-object v4, v11

    .local v4, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 221
    .local v7, "$i$f$cache\\1\\60":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\1":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 222
    .local v9, "$i$a$-let-ComposerKt$cache$1\\2\\221\\1":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-ne v8, v14, :cond_6

    .line 223
    const/4 v14, 0x0

    .line 60
    .local v14, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$currentRoute$2\\3\\223\\0":I
    const-string v6, "pacientes"

    invoke-static {v6, v15, v5, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 223
    .end local v14    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$currentRoute$2\\3\\223\\0":I
    nop

    .line 224
    .local v6, "value\\2":Ljava/lang/Object;
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 225
    move-object v8, v6

    .end local v6    # "value\\2":Ljava/lang/Object;
    goto :goto_3

    .line 226
    :cond_6
    nop

    .line 221
    .end local v8    # "it\\1":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1\\2\\221\\1":I
    :goto_3
    nop

    .line 60
    .end local v0    # "invalid\\1":Z
    .end local v4    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache\\1\\60":I
    move-object/from16 v26, v8

    check-cast v26, Landroidx/compose/runtime/MutableState;

    .local v26, "currentRoute$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 62
    const-wide v6, 0xffccc0e4L

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v17

    .line 63
    .local v17, "backgroundColor":J
    const-string v0, "#CCC0E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "colorButton":I
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getRoboto()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v4

    .line 66
    .local v4, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getBarlowCondensed()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v27

    .line 69
    .local v27, "balow":Landroidx/compose/ui/text/font/FontFamily;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getNombre()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/flow/StateFlow;

    const/4 v7, 0x0

    invoke-static {v6, v15, v11, v7, v13}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 70
    .local v6, "name$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getApellido()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v8, v15, v11, v7, v13}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 71
    .local v8, "surname$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getEmail()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v9, v15, v11, v7, v13}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    .line 72
    .local v9, "email$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegPassword()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v14, v15, v11, v7, v13}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 74
    .local v7, "password$delegate":Landroidx/compose/runtime/State;
    const v14, 0x2cd85d5

    invoke-static {v11, v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid\\4":Z
    move-object v14, v11

    .local v14, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 227
    .local v16, "$i$f$cache\\4\\74":I
    move/from16 p2, v13

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\4":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 228
    .local v19, "$i$a$-let-ComposerKt$cache$1\\5\\227\\4":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v13, v5, :cond_7

    .line 229
    const/4 v5, 0x0

    .line 74
    .local v5, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$existe$2\\6\\229\\0":I
    move/from16 v20, v0

    .end local v0    # "colorButton":I
    .local v20, "colorButton":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v15, v1, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 229
    .end local v5    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$existe$2\\6\\229\\0":I
    nop

    .line 230
    .local v0, "value\\5":Ljava/lang/Object;
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 231
    move-object v13, v0

    .end local v0    # "value\\5":Ljava/lang/Object;
    goto :goto_4

    .line 232
    .end local v20    # "colorButton":I
    .local v0, "colorButton":I
    :cond_7
    move/from16 v20, v0

    .line 227
    .end local v0    # "colorButton":I
    .end local v13    # "it\\4":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1\\5\\227\\4":I
    .restart local v20    # "colorButton":I
    :goto_4
    nop

    .line 74
    .end local v2    # "invalid\\4":Z
    .end local v14    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache\\4\\74":I
    move-object v0, v13

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .local v0, "existe$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 78
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    const v2, -0x16fbe5b0

    const/16 v13, 0x36

    move/from16 v14, p2

    invoke-static {v2, v14, v1, v11, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 77
    nop

    .line 81
    move-object v5, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v0

    .end local v0    # "existe$delegate":Landroidx/compose/runtime/MutableState;
    .local v4, "name$delegate":Landroidx/compose/runtime/State;
    .local v5, "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .local v6, "surname$delegate":Landroidx/compose/runtime/State;
    .local v7, "email$delegate":Landroidx/compose/runtime/State;
    .local v8, "password$delegate":Landroidx/compose/runtime/State;
    .local v9, "existe$delegate":Landroidx/compose/runtime/MutableState;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda1;

    move-object/from16 v1, p1

    move/from16 v2, v20

    .end local v20    # "colorButton":I
    .local v2, "colorButton":I
    invoke-direct/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    move/from16 p2, v2

    .end local v2    # "colorButton":I
    .local p2, "colorButton":I
    const v2, -0x67a0ab5b

    invoke-static {v2, v14, v0, v11, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function3;

    .line 76
    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v2, v12

    move-object v12, v15

    .end local v12    # "$dirty":I
    .local v2, "$dirty":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const v24, 0x30180030

    const/16 v25, 0x1bd

    invoke-static/range {v11 .. v25}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v4    # "name$delegate":Landroidx/compose/runtime/State;
    .end local v5    # "roboto":Landroidx/compose/ui/text/font/FontFamily;
    .end local v6    # "surname$delegate":Landroidx/compose/runtime/State;
    .end local v7    # "email$delegate":Landroidx/compose/runtime/State;
    .end local v8    # "password$delegate":Landroidx/compose/runtime/State;
    .end local v9    # "existe$delegate":Landroidx/compose/runtime/MutableState;
    .end local v17    # "backgroundColor":J
    .end local v26    # "currentRoute$delegate":Landroidx/compose/runtime/MutableState;
    .end local v27    # "balow":Landroidx/compose/ui/text/font/FontFamily;
    .end local p2    # "colorButton":I
    goto :goto_5

    .line 54
    .end local v2    # "$dirty":I
    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$dirty":I
    :cond_8
    move-object/from16 v23, v11

    move v2, v12

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v12    # "$dirty":I
    .restart local v2    # "$dirty":I
    .restart local v23    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 220
    :cond_9
    :goto_5
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v1, v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method private static final AgregarAdministrador$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 4
    .param p0, "$currentRoute$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 60
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 233
    .local v3, "$i$f$getValue\\1\\60":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\60":I
    check-cast v0, Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method static final AgregarAdministrador$lambda$10(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C78@3177L57:AgregarAdministrador.kt#6w2cjo"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous> (AgregarAdministrador.kt:78)"

    const v2, -0x16fbe5b0

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 79
    :cond_1
    const/4 v10, 0x6

    const/16 v11, 0x3c

    const-string v3, "Agregar administrador"

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

    .line 78
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

    .line 80
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final AgregarAdministrador$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 5
    .param p0, "$currentRoute$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 234
    .local v4, "$i$f$setValue\\1\\60":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 235
    nop

    .line 60
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\60":I
    return-void
.end method

.method private static final AgregarAdministrador$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$name$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 236
    .local v3, "$i$f$getValue\\1\\69":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\69":I
    check-cast v0, Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 133
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "$colorButton"    # I
    .param p2, "$navController"    # Landroidx/navigation/NavController;
    .param p3, "$name$delegate"    # Landroidx/compose/runtime/State;
    .param p4, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p5, "$surname$delegate"    # Landroidx/compose/runtime/State;
    .param p6, "$email$delegate"    # Landroidx/compose/runtime/State;
    .param p7, "$password$delegate"    # Landroidx/compose/runtime/State;
    .param p8, "$existe$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p9, "padding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    const-string v5, "padding"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "CN(padding)82@3273L5176:AgregarAdministrador.kt#6w2cjo"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p11

    .local v5, "$dirty":I
    and-int/lit8 v6, p11, 0x6

    if-nez v6, :cond_1

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v5, 0x13

    const/16 v7, 0x12

    const/4 v9, 0x1

    if-eq v6, v7, :cond_2

    move v6, v9

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    and-int/lit8 v7, v5, 0x1

    invoke-interface {v4, v6, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous> (AgregarAdministrador.kt:82)"

    const v10, -0x67a0ab5b

    invoke-static {v10, v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 84
    :cond_3
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 85
    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 86
    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 87
    const/16 v11, 0x18

    .local v11, "$this$dp\\1":I
    const/4 v12, 0x0

    .line 249
    .local v12, "$i$f$getDp\\1\\87":I
    int-to-float v13, v11

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 87
    .end local v11    # "$this$dp\\1":I
    .end local v12    # "$i$f$getDp\\1\\87":I
    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 88
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v11

    .line 83
    nop

    .local v6, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v11, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    move-object/from16 v12, p10

    .local v12, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/16 v13, 0x180

    .local v13, "$changed\\2":I
    const/4 v14, 0x0

    .line 250
    .local v14, "$i$f$Column\\2\\83":I
    const v15, 0x4ff7456f

    const-string v7, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v12, v15, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 251
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v7

    .line 255
    .local v7, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v15, v13, 0x3

    and-int/lit8 v15, v15, 0xe

    shr-int/lit8 v17, v13, 0x3

    and-int/lit8 v17, v17, 0x70

    or-int v15, v15, v17

    invoke-static {v7, v11, v12, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .line 259
    .local v15, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 258
    shl-int/lit8 v17, v13, 0x3

    and-int/lit8 v17, v17, 0x70

    .line 256
    nop

    .local v17, "$changed\\3":I
    move-object/from16 v18, v12

    .local v18, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v19, v15

    .local v19, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v20, v6

    .local v20, "modifier\\3":Landroidx/compose/ui/Modifier;
    const/16 v21, 0x0

    .line 260
    .local v21, "$i$f$Layout\\3\\256":I
    const v9, -0x451e1427

    const-string v10, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v8, v18

    .end local v18    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v8, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v8, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 261
    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    .line 262
    .local v9, "compositeKeyHash\\3":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 263
    .local v10, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v3, v20

    .end local v20    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v3, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v8, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 265
    .local v4, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .end local v3    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .restart local v20    # "modifier\\3":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v17, 0x6

    and-int/lit16 v3, v3, 0x380

    move/from16 v24, v3

    const/4 v3, 0x6

    or-int/lit8 v24, v24, 0x6

    .line 264
    move-object/from16 v25, v8

    .local v24, "$changed\\4":I
    .local v25, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object/from16 v26, v18

    .local v26, "factory\\4":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 266
    .local v18, "$i$f$ReusableComposeNode\\4\\264":I
    move/from16 v27, v3

    const v3, -0x20f7d59c

    move/from16 v28, v5

    .end local v5    # "$dirty":I
    .local v28, "$dirty":I
    const-string v5, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v29, v6

    move-object/from16 v6, v25

    .end local v25    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v6, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v29, "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 267
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 268
    :cond_4
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 269
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    move-object/from16 v3, v26

    .end local v26    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v3, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 272
    .end local v3    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v3, v26

    .end local v26    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 274
    :goto_2
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 275
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\274\\3":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v3

    .end local v3    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v30, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    move-object/from16 v26, v6

    move-object/from16 v6, v19

    .end local v19    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v26, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 276
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v5, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v31, v6

    .end local v6    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v31, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v5, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 279
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    nop

    .line 274
    .end local v5    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\274\\3":I
    nop

    .line 281
    shr-int/lit8 v3, v24, 0x6

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed\\6":I
    move-object/from16 v5, v26

    .local v5, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 257
    .local v6, "$i$a$-Layout-ColumnKt$Column$1\\6\\281\\2":I
    move/from16 v19, v3

    .end local v3    # "$changed\\6":I
    .local v19, "$changed\\6":I
    const v3, 0x7cc0ae6e

    move-object/from16 v25, v4

    .end local v4    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v25, "materialized\\3":Landroidx/compose/ui/Modifier;
    const-string v4, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v4, v13, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v4, v4, 0x6

    .local v4, "$changed\\7":I
    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    .local v3, "$this$AgregarAdministrador_u24lambda_u2434_u24lambda_u2433\\7":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v118, v5

    .local v118, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v126, 0x0

    .line 91
    .local v126, "$i$a$-Column-AgregarAdministradorKt$AgregarAdministrador$2$1\\7\\257\\0":I
    move-object/from16 v127, v3

    .end local v3    # "$this$AgregarAdministrador_u24lambda_u2434_u24lambda_u2433\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v127, "$this$AgregarAdministrador_u24lambda_u2434_u24lambda_u2433\\7":Landroidx/compose/foundation/layout/ColumnScope;
    const v3, 0x4c7cf7dc    # 6.6314096E7f

    move/from16 v128, v4

    .end local v4    # "$changed\\7":I
    .local v128, "$changed\\7":I
    const-string v4, "C90@3499L41,101@3950L244,98@3767L32,99@3831L39,93@3576L632,109@4222L41,120@4682L244,117@4495L34,118@4561L41,112@4301L639,128@4954L41,139@5403L244,136@5222L31,137@5285L38,131@5030L631,147@5675L41,164@6582L244,154@5948L37,155@6017L41,157@6205L297,149@5753L1087,172@6854L41,182@7268L135,181@7191L35,186@7418L232,175@6940L710,195@7664L41,205@8074L135,204@8000L32,209@8224L215,198@7749L690:AgregarAdministrador.kt#6w2cjo"

    move-object/from16 v129, v5

    .end local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v129, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x28

    .local v4, "$this$dp\\8":I
    const/16 v32, 0x0

    .line 282
    .local v32, "$i$f$getDp\\8\\91":I
    move/from16 v130, v6

    .end local v6    # "$i$a$-Layout-ColumnKt$Column$1\\6\\281\\2":I
    .local v130, "$i$a$-Layout-ColumnKt$Column$1\\6\\281\\2":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 91
    .end local v4    # "$this$dp\\8":I
    .end local v32    # "$i$f$getDp\\8\\91":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move/from16 v4, v27

    invoke-static {v3, v5, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 95
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 96
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 97
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v33

    const/16 v36, 0x2

    const/16 v37, 0x0

    const/16 v35, 0x0

    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 98
    invoke-static/range {p3 .. p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v4

    .line 102
    sget-object v32, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 103
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v41

    .line 104
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v43

    .line 105
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v54

    .line 106
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v49

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 106
    nop

    .line 105
    nop

    .line 102
    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

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

    const v119, 0x6036000

    const/16 v120, 0x30

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0xc00

    const v124, 0x7ffff6cf

    const/16 v125, 0xfff

    invoke-virtual/range {v32 .. v125}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v54

    .line 98
    move-object/from16 v5, v118

    .line 99
    .end local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const v6, 0x4488375b

    move-object/from16 v34, v3

    const-string v3, "CC(remember):AgregarAdministrador.kt#9igjgp"

    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid\\9":Z
    move-object/from16 v32, v5

    .local v32, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 283
    .local v33, "$i$f$cache\\9\\99":I
    move-object/from16 v35, v4

    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\9":Ljava/lang/Object;
    const/16 v36, 0x0

    .line 284
    .local v36, "$i$a$-let-ComposerKt$cache$1\\10\\283\\9":I
    if-nez v6, :cond_7

    sget-object v37, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v38, v6

    .end local v6    # "invalid\\9":Z
    .local v38, "invalid\\9":Z
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_6

    goto :goto_3

    .line 288
    :cond_6
    move-object/from16 v6, v32

    goto :goto_4

    .line 284
    .end local v38    # "invalid\\9":Z
    .restart local v6    # "invalid\\9":Z
    :cond_7
    move/from16 v38, v6

    .line 285
    .end local v6    # "invalid\\9":Z
    .restart local v38    # "invalid\\9":Z
    :goto_3
    const/4 v6, 0x0

    .line 99
    .local v6, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$1\\11\\285\\7":I
    move-object/from16 v37, v4

    .end local v4    # "it\\9":Ljava/lang/Object;
    .local v37, "it\\9":Ljava/lang/Object;
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda5;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 285
    .end local v6    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$1\\11\\285\\7":I
    nop

    .line 286
    .local v4, "value\\10":Ljava/lang/Object;
    move-object/from16 v6, v32

    .end local v32    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 287
    nop

    .line 283
    .end local v4    # "value\\10":Ljava/lang/Object;
    .end local v36    # "$i$a$-let-ComposerKt$cache$1\\10\\283\\9":I
    .end local v37    # "it\\9":Ljava/lang/Object;
    :goto_4
    nop

    .line 99
    .end local v6    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$f$cache\\9\\99":I
    .end local v38    # "invalid\\9":Z
    move-object/from16 v33, v4

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 97
    nop

    .line 100
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda9;

    invoke-direct {v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v6, 0x36

    move-object/from16 v131, v7

    .end local v7    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v131, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const v7, 0x4c01e856    # 3.4054488E7f

    move-object/from16 v132, v8

    const/4 v8, 0x1

    .end local v8    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v132, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v7, v8, v4, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v39, v4

    check-cast v39, Lkotlin/jvm/functions/Function2;

    .line 101
    nop

    .line 102
    nop

    .line 94
    move-object/from16 v32, v35

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v56, 0xc00180

    const/high16 v57, 0xc00000

    const/16 v58, 0x0

    const v59, 0x3dff78

    move-object/from16 v55, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v55, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v59}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 110
    .end local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x1e

    .local v6, "$this$dp\\12":I
    const/4 v7, 0x0

    .line 289
    .local v7, "$i$f$getDp\\12\\110":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 110
    .end local v6    # "$this$dp\\12":I
    .end local v7    # "$i$f$getDp\\12\\110":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 114
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 115
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 116
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v33

    const/16 v36, 0x2

    const/16 v35, 0x0

    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 117
    invoke-static/range {p5 .. p5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v6

    .line 121
    sget-object v32, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 122
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v41

    .line 123
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v43

    .line 124
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v54

    .line 125
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v49

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 125
    nop

    .line 124
    nop

    .line 121
    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

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

    const v119, 0x6036000

    const/16 v120, 0x30

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0xc00

    const v124, 0x7ffff6cf

    const/16 v125, 0xfff

    move-object/from16 v118, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v32 .. v125}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v54

    .line 117
    .end local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 118
    const v7, 0x4488925d

    invoke-static {v5, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid\\13":Z
    move-object v8, v5

    .local v8, "$this$cache\\13":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 290
    .local v32, "$i$f$cache\\13\\118":I
    move-object/from16 v34, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\13":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 291
    .local v33, "$i$a$-let-ComposerKt$cache$1\\14\\290\\13":I
    if-nez v7, :cond_9

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v36, v6

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_8

    goto :goto_5

    .line 295
    :cond_8
    goto :goto_6

    .line 291
    :cond_9
    move-object/from16 v36, v6

    .line 292
    :goto_5
    const/4 v6, 0x0

    .line 118
    .local v6, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$3\\15\\292\\7":I
    move-object/from16 v35, v4

    .end local v4    # "it\\13":Ljava/lang/Object;
    .local v35, "it\\13":Ljava/lang/Object;
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda10;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 292
    .end local v6    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$3\\15\\292\\7":I
    nop

    .line 293
    .local v4, "value\\14":Ljava/lang/Object;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    nop

    .line 290
    .end local v4    # "value\\14":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\14\\290\\13":I
    .end local v35    # "it\\13":Ljava/lang/Object;
    :goto_6
    nop

    .line 118
    .end local v7    # "invalid\\13":Z
    .end local v8    # "$this$cache\\13":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$f$cache\\13\\118":I
    move-object/from16 v33, v4

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 116
    nop

    .line 119
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v6, 0x36

    const v7, 0x5dde0d

    const/4 v8, 0x1

    invoke-static {v7, v8, v4, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v39, v4

    check-cast v39, Lkotlin/jvm/functions/Function2;

    .line 120
    nop

    .line 121
    nop

    .line 113
    const/16 v35, 0x0

    move-object/from16 v32, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v56, 0xc00180

    const/high16 v57, 0xc00000

    const/16 v58, 0x0

    const v59, 0x3dff78

    move-object/from16 v55, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v59}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 129
    .end local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x1e

    .local v6, "$this$dp\\16":I
    const/4 v7, 0x0

    .line 296
    .local v7, "$i$f$getDp\\16\\129":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 129
    .end local v6    # "$this$dp\\16":I
    .end local v7    # "$i$f$getDp\\16\\129":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 133
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 134
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 135
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v33

    const/16 v36, 0x2

    const/16 v35, 0x0

    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 136
    invoke-static/range {p6 .. p6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$5(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v6

    .line 140
    sget-object v32, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 141
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v41

    .line 142
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v43

    .line 143
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v54

    .line 144
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v49

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 144
    nop

    .line 143
    nop

    .line 140
    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

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

    const v119, 0x6036000

    const/16 v120, 0x30

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0xc00

    const v124, 0x7ffff6cf

    const/16 v125, 0xfff

    move-object/from16 v118, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v32 .. v125}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v54

    .line 136
    .end local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 137
    const v7, 0x4488ed3a

    invoke-static {v5, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid\\17":Z
    move-object v8, v5

    .local v8, "$this$cache\\17":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 297
    .local v32, "$i$f$cache\\17\\137":I
    move-object/from16 v34, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\17":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 298
    .local v33, "$i$a$-let-ComposerKt$cache$1\\18\\297\\17":I
    if-nez v7, :cond_b

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v36, v6

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_a

    goto :goto_7

    .line 302
    :cond_a
    goto :goto_8

    .line 298
    :cond_b
    move-object/from16 v36, v6

    .line 299
    :goto_7
    const/4 v6, 0x0

    .line 137
    .local v6, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$5\\19\\299\\7":I
    move-object/from16 v35, v4

    .end local v4    # "it\\17":Ljava/lang/Object;
    .local v35, "it\\17":Ljava/lang/Object;
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda12;

    invoke-direct {v4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda12;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 299
    .end local v6    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$5\\19\\299\\7":I
    nop

    .line 300
    .local v4, "value\\18":Ljava/lang/Object;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 301
    nop

    .line 297
    .end local v4    # "value\\18":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\18\\297\\17":I
    .end local v35    # "it\\17":Ljava/lang/Object;
    :goto_8
    nop

    .line 137
    .end local v7    # "invalid\\17":Z
    .end local v8    # "$this$cache\\17":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$f$cache\\17\\137":I
    move-object/from16 v33, v4

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 135
    nop

    .line 138
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda13;

    invoke-direct {v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v6, 0x36

    const v7, -0x6ebfd2f2

    const/4 v8, 0x1

    invoke-static {v7, v8, v4, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v39, v4

    check-cast v39, Lkotlin/jvm/functions/Function2;

    .line 139
    nop

    .line 140
    nop

    .line 132
    const/16 v35, 0x0

    move-object/from16 v32, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v56, 0xc00180

    const/high16 v57, 0xc00000

    const/16 v58, 0x0

    const v59, 0x3dff78

    move-object/from16 v55, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v59}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 148
    .end local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x1e

    .local v6, "$this$dp\\20":I
    const/4 v7, 0x0

    .line 303
    .local v7, "$i$f$getDp\\20\\148":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 148
    .end local v6    # "$this$dp\\20":I
    .end local v7    # "$i$f$getDp\\20\\148":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 151
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 152
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 153
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v33

    const/16 v36, 0x2

    const/16 v35, 0x0

    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 154
    invoke-static/range {p7 .. p7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$6(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-static/range {p8 .. p8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$8(Landroidx/compose/runtime/MutableState;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v7, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    move-object/from16 v23, v4

    move-object/from16 v118, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-direct {v7, v8, v5, v4}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>(CILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Landroidx/compose/ui/text/input/VisualTransformation;

    goto :goto_9

    .end local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    :cond_c
    move-object/from16 v23, v4

    move-object/from16 v118, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v7

    .line 165
    :goto_9
    sget-object v32, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 166
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v41

    .line 167
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v43

    .line 168
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v54

    .line 169
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v49

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 169
    nop

    .line 168
    nop

    .line 165
    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

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

    const v119, 0x6036000

    const/16 v120, 0x30

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0xc00

    const v124, 0x7ffff6cf

    const/16 v125, 0xfff

    invoke-virtual/range {v32 .. v125}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v54

    .line 154
    move-object/from16 v5, v118

    .line 155
    .end local v118    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const v4, 0x44894800    # 1098.25f

    invoke-static {v5, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid\\21":Z
    move-object v8, v5

    .local v8, "$this$cache\\21":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 304
    .local v32, "$i$f$cache\\21\\155":I
    move/from16 v33, v4

    .end local v4    # "invalid\\21":Z
    .local v33, "invalid\\21":Z
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\21":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 305
    .local v34, "$i$a$-let-ComposerKt$cache$1\\22\\304\\21":I
    if-nez v33, :cond_e

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v36, v6

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_d

    goto :goto_a

    .line 309
    :cond_d
    goto :goto_b

    .line 305
    :cond_e
    move-object/from16 v36, v6

    .line 306
    :goto_a
    const/4 v6, 0x0

    .line 155
    .local v6, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$7\\23\\306\\7":I
    move-object/from16 v35, v4

    .end local v4    # "it\\21":Ljava/lang/Object;
    .local v35, "it\\21":Ljava/lang/Object;
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda14;

    invoke-direct {v4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda14;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 306
    .end local v6    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$7\\23\\306\\7":I
    nop

    .line 307
    .local v4, "value\\22":Ljava/lang/Object;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 308
    nop

    .line 304
    .end local v4    # "value\\22":Ljava/lang/Object;
    .end local v34    # "$i$a$-let-ComposerKt$cache$1\\22\\304\\21":I
    .end local v35    # "it\\21":Ljava/lang/Object;
    :goto_b
    nop

    .line 155
    .end local v8    # "$this$cache\\21":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$f$cache\\21\\155":I
    .end local v33    # "invalid\\21":Z
    move-object/from16 v33, v4

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 153
    nop

    .line 156
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda15;

    invoke-direct {v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda15;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v6, 0x36

    const v8, 0x22227c0f

    move-object/from16 v46, v7

    const/4 v7, 0x1

    invoke-static {v8, v7, v4, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v39, v4

    check-cast v39, Lkotlin/jvm/functions/Function2;

    .line 158
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda16;

    move-object/from16 v6, p8

    invoke-direct {v4, v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda16;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v8, 0x36

    const v6, -0x2c6e9db3

    invoke-static {v6, v7, v4, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v41, v4

    check-cast v41, Lkotlin/jvm/functions/Function2;

    .line 157
    nop

    .line 164
    nop

    .line 165
    nop

    .line 150
    const/16 v35, 0x0

    move-object/from16 v32, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v56, 0x30c00180

    const/high16 v57, 0xc00000

    const/16 v58, 0x0

    const v59, 0x3dbd78

    move-object/from16 v55, v5

    move-object/from16 v34, v23

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v59}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 173
    .end local v55    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x1e

    .local v6, "$this$dp\\24":I
    const/4 v7, 0x0

    .line 310
    .local v7, "$i$f$getDp\\24\\173":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 173
    .end local v6    # "$this$dp\\24":I
    .end local v7    # "$i$f$getDp\\24\\173":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 177
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 178
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 179
    const/16 v6, 0x32

    .local v6, "$this$dp\\25":I
    const/4 v7, 0x0

    .line 311
    .local v7, "$i$f$getDp\\25\\179":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 179
    .end local v6    # "$this$dp\\25":I
    .end local v7    # "$i$f$getDp\\25\\179":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 180
    const/16 v6, 0x32

    .local v6, "$this$dp\\26":I
    const/4 v7, 0x0

    .line 312
    .local v7, "$i$f$getDp\\26\\180":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 180
    .end local v6    # "$this$dp\\26":I
    .end local v7    # "$i$f$getDp\\26\\180":I
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    .line 181
    const/4 v7, 0x2

    .local v7, "$this$dp\\27":I
    const/4 v8, 0x0

    .line 313
    .local v8, "$i$f$getDp\\27\\181":I
    move-object/from16 v23, v4

    int-to-float v4, v7

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 181
    .end local v7    # "$this$dp\\27":I
    .end local v8    # "$i$f$getDp\\27\\181":I
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v4

    .line 183
    sget-object v32, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 184
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v33

    .line 185
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v35

    sget v7, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v7, v7, 0xc

    const/16 v27, 0x6

    or-int/lit8 v42, v7, 0x6

    .line 183
    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v43, 0xc

    move-object/from16 v41, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v41, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v32 .. v43}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v36

    .line 182
    .end local v41    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const v7, 0x4489e35e

    invoke-static {v5, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid\\28":Z
    move-object v8, v5

    .local v8, "$this$cache\\28":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 314
    .local v32, "$i$f$cache\\28\\182":I
    move-object/from16 v38, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\28":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 315
    .local v33, "$i$a$-let-ComposerKt$cache$1\\29\\314\\28":I
    if-nez v7, :cond_10

    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v35, v6

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_f

    goto :goto_c

    .line 319
    :cond_f
    goto :goto_d

    .line 315
    :cond_10
    move-object/from16 v35, v6

    .line 316
    :goto_c
    const/4 v6, 0x0

    .line 182
    .local v6, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$10\\30\\316\\7":I
    move-object/from16 v34, v4

    .end local v4    # "it\\28":Ljava/lang/Object;
    .local v34, "it\\28":Ljava/lang/Object;
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda17;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V

    .line 316
    .end local v6    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$10\\30\\316\\7":I
    nop

    .line 317
    .local v4, "value\\29":Ljava/lang/Object;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 318
    nop

    .line 314
    .end local v4    # "value\\29":Ljava/lang/Object;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\29\\314\\28":I
    .end local v34    # "it\\28":Ljava/lang/Object;
    :goto_d
    nop

    .line 182
    .end local v7    # "invalid\\28":Z
    .end local v8    # "$this$cache\\28":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$f$cache\\28\\182":I
    move-object/from16 v32, v4

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 179
    nop

    .line 180
    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 183
    nop

    .line 181
    nop

    .line 187
    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v6, 0x36

    const v7, -0x41918d75

    const/4 v8, 0x1

    invoke-static {v7, v8, v4, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v41, v4

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 176
    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30180030

    const/16 v44, 0x1a4

    move-object/from16 v42, v5

    move-object/from16 v33, v23

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v44}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 196
    .end local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x1e

    .local v6, "$this$dp\\31":I
    const/4 v7, 0x0

    .line 320
    .local v7, "$i$f$getDp\\31\\196":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 196
    .end local v6    # "$this$dp\\31":I
    .end local v7    # "$i$f$getDp\\31\\196":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 200
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 201
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 202
    const/16 v6, 0x32

    .local v6, "$this$dp\\32":I
    const/4 v7, 0x0

    .line 321
    .local v7, "$i$f$getDp\\32\\202":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 202
    .end local v6    # "$this$dp\\32":I
    .end local v7    # "$i$f$getDp\\32\\202":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 203
    const/16 v6, 0x32

    .local v6, "$this$dp\\33":I
    const/4 v7, 0x0

    .line 322
    .local v7, "$i$f$getDp\\33\\203":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 203
    .end local v6    # "$this$dp\\33":I
    .end local v7    # "$i$f$getDp\\33\\203":I
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    .line 204
    const/4 v7, 0x2

    .local v7, "$this$dp\\34":I
    const/4 v8, 0x0

    .line 323
    .local v8, "$i$f$getDp\\34\\204":I
    int-to-float v0, v7

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 204
    .end local v7    # "$this$dp\\34":I
    .end local v8    # "$i$f$getDp\\34\\204":I
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v0

    .line 206
    sget-object v32, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 207
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v33

    .line 208
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v35

    sget v7, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v7, v7, 0xc

    const/16 v27, 0x6

    or-int/lit8 v42, v7, 0x6

    .line 206
    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v43, 0xc

    move-object/from16 v41, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v41    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v32 .. v43}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v36

    .line 205
    .end local v41    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const v7, 0x448a487b

    invoke-static {v5, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid\\35":Z
    move-object v7, v5

    .local v7, "$this$cache\\35":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 324
    .local v8, "$i$f$cache\\35\\205":I
    move-object/from16 v38, v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it\\35":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 325
    .local v16, "$i$a$-let-ComposerKt$cache$1\\36\\324\\35":I
    if-nez v3, :cond_12

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v23, v3

    .end local v3    # "invalid\\35":Z
    .local v23, "invalid\\35":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_11

    goto :goto_e

    .line 329
    :cond_11
    goto :goto_f

    .line 325
    .end local v23    # "invalid\\35":Z
    .restart local v3    # "invalid\\35":Z
    :cond_12
    move/from16 v23, v3

    .line 326
    .end local v3    # "invalid\\35":Z
    .restart local v23    # "invalid\\35":Z
    :goto_e
    const/4 v3, 0x0

    .line 205
    .local v3, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$12\\37\\326\\7":I
    move-object/from16 v22, v0

    .end local v0    # "it\\35":Ljava/lang/Object;
    .local v22, "it\\35":Ljava/lang/Object;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigation/NavController;)V

    .line 326
    .end local v3    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$12\\37\\326\\7":I
    nop

    .line 327
    .local v0, "value\\36":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 328
    nop

    .line 324
    .end local v0    # "value\\36":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1\\36\\324\\35":I
    .end local v22    # "it\\35":Ljava/lang/Object;
    :goto_f
    nop

    .line 205
    .end local v7    # "$this$cache\\35":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache\\35\\205":I
    .end local v23    # "invalid\\35":Z
    move-object/from16 v32, v0

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 202
    nop

    .line 203
    move-object/from16 v35, v6

    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 206
    nop

    .line 204
    nop

    .line 210
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda8;

    invoke-direct {v0, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/ui/text/font/FontFamily;)V

    const/16 v3, 0x36

    const v6, -0x762f50fe

    const/4 v8, 0x1

    invoke-static {v6, v8, v0, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v41, v0

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 199
    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30180030

    const/16 v44, 0x1a4

    move-object/from16 v33, v4

    move-object/from16 v42, v5

    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v32 .. v44}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 91
    .end local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 218
    nop

    .line 257
    .end local v5    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v126    # "$i$a$-Column-AgregarAdministradorKt$AgregarAdministrador$2$1\\7\\257\\0":I
    .end local v127    # "$this$AgregarAdministrador_u24lambda_u2434_u24lambda_u2433\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v128    # "$changed\\7":I
    invoke-static/range {v129 .. v129}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 281
    .end local v19    # "$changed\\6":I
    .end local v129    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v130    # "$i$a$-Layout-ColumnKt$Column$1\\6\\281\\2":I
    nop

    .line 330
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 266
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 331
    nop

    .line 260
    .end local v18    # "$i$f$ReusableComposeNode\\4\\264":I
    .end local v24    # "$changed\\4":I
    .end local v26    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v30    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v132 .. v132}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 332
    nop

    .line 250
    .end local v9    # "compositeKeyHash\\3":I
    .end local v10    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v17    # "$changed\\3":I
    .end local v20    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v21    # "$i$f$Layout\\3\\256":I
    .end local v25    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v31    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v132    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 333
    nop

    .end local v11    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v12    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v13    # "$changed\\2":I
    .end local v14    # "$i$f$Column\\2\\83":I
    .end local v15    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v29    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v131    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_10

    .line 81
    .end local v28    # "$dirty":I
    .local v5, "$dirty":I
    :cond_13
    move/from16 v28, v5

    .end local v5    # "$dirty":I
    .restart local v28    # "$dirty":I
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 219
    :cond_14
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$12$lambda$11(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setNombre(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$13(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C99@3833L35:AgregarAdministrador.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:99)"

    const v4, 0x4c01e856    # 3.4054488E7f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 100
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Nombre"

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

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$15$lambda$14(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setApellido(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$16(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C118@4563L37:AgregarAdministrador.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:118)"

    const v4, 0x5dde0d

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 119
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Apellido"

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

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$18$lambda$17(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setEmail(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$19(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C137@5287L34:AgregarAdministrador.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:137)"

    const v4, -0x6ebfd2f2

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 138
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Email"

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

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$21$lambda$20(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->setRegPassword(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$22(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$roboto"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C155@6019L37:AgregarAdministrador.kt#6w2cjo"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:155)"

    const v4, 0x22227c0f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 156
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1ffbe

    const-string v0, "Password"

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

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$26(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10
    .param p0, "$existe$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C159@6350L20,159@6372L112,159@6329L155:AgregarAdministrador.kt#6w2cjo"

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

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:158)"

    const v3, -0x2c6e9db3

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 159
    :cond_1
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$8(Landroidx/compose/runtime/MutableState;)Z

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
    move-object v9, v0

    .line 160
    .local v9, "image":Landroidx/compose/ui/graphics/vector/ImageVector;
    const v0, 0x34c21541

    const-string v1, "CC(remember):AgregarAdministrador.kt#9igjgp"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid\\1":Z
    move-object v1, p1

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 243
    .local v3, "$i$f$cache\\1\\160":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it\\1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 244
    .local v5, "$i$a$-let-ComposerKt$cache$1\\2\\243\\1":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_3

    .line 245
    const/4 v7, 0x0

    .line 160
    .local v7, "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$9$1\\3\\245\\0":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 245
    .end local v7    # "$i$a$-cache-AgregarAdministradorKt$AgregarAdministrador$2$1$9$1\\3\\245\\0":I
    nop

    .line 246
    .local v8, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 247
    move-object v4, v8

    .end local v8    # "value\\2":Ljava/lang/Object;
    goto :goto_2

    .line 248
    :cond_3
    nop

    .line 243
    .end local v4    # "it\\1":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1\\2\\243\\1":I
    :goto_2
    nop

    .line 160
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache\\1\\160":I
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const/16 v3, 0x36

    const v4, -0x421b2130

    invoke-static {v4, v2, v1, p1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const v7, 0x30006

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v9    # "image":Landroidx/compose/ui/graphics/vector/ImageVector;
    goto :goto_3

    .line 158
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 163
    :cond_5
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$26$lambda$24$lambda$23(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$existe$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 160
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$8(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador$lambda$9(Landroidx/compose/runtime/MutableState;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$26$lambda$25(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11
    .param p0, "$image"    # Landroidx/compose/ui/graphics/vector/ImageVector;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C160@6398L64:AgregarAdministrador.kt#6w2cjo"

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

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:160)"

    const v2, -0x421b2130

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 161
    :cond_1
    const/16 v9, 0x30

    const/16 v10, 0xc

    const-string v4, "Ver contrase\u00f1a"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v8, p1

    .end local p0    # "$image":Landroidx/compose/ui/graphics/vector/ImageVector;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$image":Landroidx/compose/ui/graphics/vector/ImageVector;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 160
    .end local v3    # "$image":Landroidx/compose/ui/graphics/vector/ImageVector;
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$image":Landroidx/compose/ui/graphics/vector/ImageVector;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v3, p0

    move-object v8, p1

    .end local p0    # "$image":Landroidx/compose/ui/graphics/vector/ImageVector;
    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$image":Landroidx/compose/ui/graphics/vector/ImageVector;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 162
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$28$lambda$27(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlin/Unit;
    .locals 1
    .param p0, "$loginViewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 182
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registrarAdmin()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$29(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
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

    const-string v2, "C187@7436L200:AgregarAdministrador.kt#6w2cjo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v2, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:187)"

    const v6, -0x41918d75

    invoke-static {v6, v1, v2, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 191
    :cond_1
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 192
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    .line 189
    nop

    .line 192
    nop

    .line 191
    nop

    .line 190
    nop

    .line 188
    const-string v0, "Registrarse administrador"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

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

    const v22, 0x1b0c06

    const/16 v23, 0x0

    const v24, 0x1ff96

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 187
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 194
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$31$lambda$30(Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$navController"    # Landroidx/navigation/NavController;

    .line 205
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$34$lambda$33$lambda$32(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
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

    const-string v2, "C210@8242L183:AgregarAdministrador.kt#6w2cjo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v2, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador.<anonymous>.<anonymous>.<anonymous> (AgregarAdministrador.kt:210)"

    const v6, -0x762f50fe

    invoke-static {v6, v1, v2, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 214
    :cond_1
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 215
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    .line 212
    nop

    .line 215
    nop

    .line 214
    nop

    .line 213
    nop

    .line 211
    const-string v0, "Cancelar"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

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

    const v22, 0x1b0c06

    const/16 v23, 0x0

    const v24, 0x1ff96

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

    .line 217
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final AgregarAdministrador$lambda$35(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregarAdministradorKt;->AgregarAdministrador(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final AgregarAdministrador$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$surname$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 237
    .local v3, "$i$f$getValue\\1\\70":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\70":I
    check-cast v0, Ljava/lang/String;

    .line 70
    return-object v0
.end method

.method private static final AgregarAdministrador$lambda$5(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$email$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 238
    .local v3, "$i$f$getValue\\1\\71":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\71":I
    check-cast v0, Ljava/lang/String;

    .line 71
    return-object v0
.end method

.method private static final AgregarAdministrador$lambda$6(Landroidx/compose/runtime/State;)Ljava/lang/String;
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

    .line 72
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 239
    .local v3, "$i$f$getValue\\1\\72":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\72":I
    check-cast v0, Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method private static final AgregarAdministrador$lambda$8(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$existe$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 74
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "this_\\1":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property\\1":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$f$getValue\\1\\74":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "this_\\1":Ljava/lang/Object;
    .end local v2    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue\\1\\74":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 74
    return v0
.end method

.method private static final AgregarAdministrador$lambda$9(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$existe$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 74
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

    .line 241
    .local v4, "$i$f$setValue\\1\\74":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 242
    nop

    .line 74
    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue\\1\\74":I
    return-void
.end method
