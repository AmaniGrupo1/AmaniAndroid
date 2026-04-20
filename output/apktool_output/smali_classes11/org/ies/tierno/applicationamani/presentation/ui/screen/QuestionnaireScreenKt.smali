.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;
.super Ljava/lang/Object;
.source "QuestionnaireScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuestionnaireScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuestionnaireScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt\n+ 2 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt__ViewModelKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,144:1\n68#2:145\n57#2,10:146\n122#3:156\n122#3:191\n122#3:192\n122#3:193\n122#3:194\n122#3:195\n87#4,6:157\n94#4:251\n81#5,6:163\n88#5,6:178\n81#5,6:209\n88#5,6:224\n96#5:239\n96#5:250\n391#6,9:169\n400#6:184\n391#6,9:215\n400#6:230\n401#6,2:237\n401#6,2:248\n1128#7,6:185\n1128#7,6:231\n1128#7,6:242\n1924#8,2:196\n1926#8:241\n99#9:198\n95#9,10:199\n106#9:240\n*S KotlinDebug\n*F\n+ 1 QuestionnaireScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt\n*L\n51#1:145\n51#1:146,10\n61#1:156\n79#1:191\n84#1:192\n86#1:193\n91#1:194\n94#1:195\n59#1:157,6\n59#1:251\n59#1:163,6\n59#1:178,6\n98#1:209,6\n98#1:224,6\n98#1:239\n59#1:250\n59#1:169,9\n59#1:184\n98#1:215,9\n98#1:230\n98#1:237,2\n59#1:248,2\n67#1:185,6\n105#1:231,6\n117#1:242,6\n96#1:196,2\n96#1:241\n98#1:198\n98#1:199,10\n98#1:240\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "QuestionnaireScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "viewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/runtime/Composer;II)V",
        "QuestionnairePreview",
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
.method public static final QuestionnairePreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 142
    const v0, 0x6b655798

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v1, "C(QuestionnairePreview)142@5287L23,142@5267L44:QuestionnaireScreen.kt#8o7o96"

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnairePreview (QuestionnaireScreen.kt:141)"

    invoke-static {v0, p1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-array v0, v1, [Landroidx/navigation/Navigator;

    .line 143
    invoke-static {v0, p0, v1}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, p0, v1, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;->QuestionnaireScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 140
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 144
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method static final QuestionnairePreview$lambda$11(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;->QuestionnairePreview(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final QuestionnaireScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "navController"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const v3, 0x71b62c38

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(QuestionnaireScreen)N(navController,viewModel)51@2329L10,56@2427L2667,54@2410L2684:QuestionnaireScreen.kt#8o7o96"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v1, 0x30

    const/16 v7, 0x10

    if-nez v6, :cond_2

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_0

    move-object/from16 v6, p1

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    :cond_1
    move v8, v7

    :goto_0
    or-int/2addr v5, v8

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    :goto_1
    and-int/lit8 v8, v5, 0x11

    if-eq v8, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v7, "50@2279L11"

    invoke-static {v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    .line 50
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_8

    and-int/lit8 v5, v5, -0x71

    goto :goto_5

    .line 51
    :cond_5
    :goto_3
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    .local v7, "$changed\\1":I
    move-object v15, v4

    .local v15, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 145
    .local v8, "$i$f$viewModel\\1\\51":I
    const v10, 0x671a9c9b

    const-string v11, "CC(viewModel)N(viewModelStoreOwner,key,factory,extras)56@2573L7,67@2981L63:ViewModel.kt#3tja67"

    invoke-static {v15, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 146
    sget-object v10, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    const/4 v11, 0x6

    invoke-virtual {v10, v15, v11}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 149
    .local v11, "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    const/4 v12, 0x0

    .line 150
    .local v12, "key\\1":Ljava/lang/String;
    const/4 v13, 0x0

    .line 152
    .local v13, "factory\\1":Landroidx/lifecycle/ViewModelProvider$Factory;
    instance-of v10, v11, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v10, :cond_6

    .line 153
    move-object v10, v11

    check-cast v10, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v10}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v10

    move-object v14, v10

    goto :goto_4

    .line 155
    :cond_6
    sget-object v10, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v10, Landroidx/lifecycle/viewmodel/CreationExtras;

    move-object v14, v10

    :goto_4
    nop

    .local v14, "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    const-class v10, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 145
    shl-int/lit8 v16, v7, 0x3

    and-int/lit8 v16, v16, 0x70

    shl-int/lit8 v9, v7, 0x3

    and-int/lit16 v9, v9, 0x380

    or-int v9, v16, v9

    shl-int/lit8 v3, v7, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v3, v9

    const v9, 0xe000

    shl-int/lit8 v16, v7, 0x3

    and-int v9, v16, v9

    or-int v16, v3, v9

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v7    # "$changed\\1":I
    .end local v8    # "$i$f$viewModel\\1\\51":I
    .end local v11    # "viewModelStoreOwner\\1":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v12    # "key\\1":Ljava/lang/String;
    .end local v13    # "factory\\1":Landroidx/lifecycle/ViewModelProvider$Factory;
    .end local v14    # "extras\\1":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v15    # "$composer\\1":Landroidx/compose/runtime/Composer;
    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    .end local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .local v3, "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    and-int/lit8 v5, v5, -0x71

    goto :goto_6

    .line 146
    .end local v3    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .restart local v7    # "$changed\\1":I
    .restart local v8    # "$i$f$viewModel\\1\\51":I
    .restart local v15    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    :cond_7
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$a$-checkNotNull-ViewModelKt__ViewModelKt$viewModel$1\\2\\146\\1":I
    nop

    .line 146
    .end local v2    # "$i$a$-checkNotNull-ViewModelKt__ViewModelKt$viewModel$1\\2\\146\\1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v7    # "$changed\\1":I
    .end local v8    # "$i$f$viewModel\\1\\51":I
    .end local v15    # "$composer\\1":Landroidx/compose/runtime/Composer;
    :cond_8
    :goto_5
    move-object v3, v6

    .end local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .restart local v3    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    :goto_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, -0x1

    const-string v7, "org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen (QuestionnaireScreen.kt:50)"

    const v8, 0x71b62c38

    invoke-static {v8, v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 52
    :cond_9
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v4, v7}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v6

    .line 54
    .local v6, "typography":Landroidx/compose/material3/Typography;
    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getQuestions()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ies/tierno/applicationamani/domain/models/Question;

    .line 57
    .local v7, "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3, v6, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/domain/models/Question;)V

    const/16 v9, 0x36

    const v10, 0x26b667c9

    const/4 v11, 0x1

    invoke-static {v10, v11, v8, v4, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function3;

    .line 55
    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    move v8, v5

    .end local v5    # "$dirty":I
    .local v8, "$dirty":I
    const/4 v5, 0x0

    move-object v9, v6

    .end local v6    # "typography":Landroidx/compose/material3/Typography;
    .local v9, "typography":Landroidx/compose/material3/Typography;
    const/4 v6, 0x0

    move-object v10, v7

    .end local v7    # "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    .local v10, "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    const/4 v7, 0x0

    move v11, v8

    .end local v8    # "$dirty":I
    .local v11, "$dirty":I
    const/4 v8, 0x0

    move-object v12, v9

    .end local v9    # "typography":Landroidx/compose/material3/Typography;
    .local v12, "typography":Landroidx/compose/material3/Typography;
    const/4 v9, 0x0

    move-object v13, v10

    move v14, v11

    .end local v10    # "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    .end local v11    # "$dirty":I
    .local v13, "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    .local v14, "$dirty":I
    const-wide/16 v10, 0x0

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v12    # "typography":Landroidx/compose/material3/Typography;
    .end local v13    # "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    .local v17, "typography":Landroidx/compose/material3/Typography;
    .local v18, "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    const-wide/16 v12, 0x0

    move/from16 v19, v14

    .end local v14    # "$dirty":I
    .local v19, "$dirty":I
    const/4 v14, 0x0

    move-object/from16 v20, v17

    .end local v17    # "typography":Landroidx/compose/material3/Typography;
    .local v20, "typography":Landroidx/compose/material3/Typography;
    const/high16 v17, 0x30000000

    move-object/from16 v21, v18

    .end local v18    # "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    .local v21, "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    const/16 v18, 0x1ff

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v16

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 135
    .end local v20    # "typography":Landroidx/compose/material3/Typography;
    .end local v21    # "question":Lorg/ies/tierno/applicationamani/domain/models/Question;
    :cond_a
    move/from16 v5, v19

    goto :goto_7

    .line 50
    .end local v3    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "$dirty":I
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$dirty":I
    .restart local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    :cond_b
    move-object v15, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v6

    .line 135
    .end local p1    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .restart local v3    # "viewModel":Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    :goto_7
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v3, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;II)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method static final QuestionnaireScreen$lambda$10(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;->QuestionnaireScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final QuestionnaireScreen$lambda$9(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/domain/models/Question;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 94
    .param p0, "$viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$question"    # Lorg/ies/tierno/applicationamani/domain/models/Question;
    .param p3, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "innerPadding"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CN(innerPadding)58@2461L2627:QuestionnaireScreen.kt#8o7o96"

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

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen.<anonymous> (QuestionnaireScreen.kt:58)"

    const v8, 0x26b667c9

    invoke-static {v8, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 60
    :cond_3
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 61
    const/16 v5, 0x10

    .local v5, "$this$dp\\1":I
    const/4 v8, 0x0

    .line 156
    .local v8, "$i$f$getDp\\1\\61":I
    int-to-float v9, v5

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 61
    .end local v5    # "$this$dp\\1":I
    .end local v8    # "$i$f$getDp\\1\\61":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 62
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 63
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 64
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    .line 62
    nop

    .line 64
    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 63
    nop

    .line 59
    const/16 v8, 0x1b0

    .local v5, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v8, "$changed\\2":I
    move-object/from16 v9, p4

    .local v4, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v6, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v9, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 157
    .local v10, "$i$f$Column\\2\\59":I
    const v11, 0x4ff7456f

    const-string v12, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 158
    shr-int/lit8 v11, v8, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v6, v5, v9, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 162
    .local v11, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 161
    shl-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 159
    move-object v13, v4

    .local v13, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object v14, v9

    .local v14, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object v15, v11

    .local v12, "$changed\\3":I
    .local v15, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v16, 0x0

    .line 163
    .local v16, "$i$f$Layout\\3\\159":I
    const v7, -0x451e1427

    const-string v1, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v14, v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 164
    const/4 v7, 0x0

    invoke-static {v14, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    .line 165
    .local v7, "compositeKeyHash\\3":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 166
    .local v2, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v18, v3

    .end local v3    # "$dirty":I
    .local v18, "$dirty":I
    invoke-static {v14, v13}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 168
    .local v3, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    move-object/from16 v20, v4

    .end local v4    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v20, "modifier\\2":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v4, v12, 0x6

    and-int/lit16 v4, v4, 0x380

    move/from16 v21, v4

    const/4 v4, 0x6

    or-int/lit8 v21, v21, 0x6

    .line 167
    move-object/from16 v22, v19

    .local v22, "factory\\4":Lkotlin/jvm/functions/Function0;
    move-object/from16 v19, v14

    .local v19, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v21, "$changed\\4":I
    const/16 v23, 0x0

    .line 169
    .local v23, "$i$f$ReusableComposeNode\\4\\167":I
    move/from16 v24, v4

    const v4, -0x20f7d59c

    move-object/from16 v25, v5

    .end local v5    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .local v25, "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    const-string v5, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v26, v6

    move-object/from16 v6, v19

    .end local v19    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v6, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v26, "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 170
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 171
    :cond_4
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 172
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    move-object/from16 v4, v22

    .end local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v4, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 175
    .end local v4    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v4, v22

    .end local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 177
    :goto_2
    move-object/from16 v22, v4

    .end local v4    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 178
    .local v27, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\177\\3":I
    sget-object v28, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v6

    .end local v6    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v29, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v4, v15, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v4, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 180
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v28, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v2

    .end local v2    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v4, v6, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 182
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    nop

    .line 177
    .end local v4    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\177\\3":I
    nop

    .line 184
    shr-int/lit8 v2, v21, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\6":I
    move-object/from16 v4, v29

    .local v4, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 160
    .local v6, "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    move/from16 v27, v2

    .end local v2    # "$changed\\6":I
    .local v27, "$changed\\6":I
    const v2, 0x7cc0ae6e

    move-object/from16 v28, v3

    .end local v3    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v28, "materialized\\3":Landroidx/compose/ui/Modifier;
    const-string v3, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v3, v8, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed\\7":I
    check-cast v2, Landroidx/compose/foundation/layout/ColumnScope;

    .local v2, "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v40, v4

    .local v40, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v56, 0x0

    .line 66
    .local v56, "$i$a$-Column-QuestionnaireScreenKt$QuestionnaireScreen$1$1\\7\\160\\0":I
    move-object/from16 v57, v2

    .end local v2    # "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v57, "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    const v2, -0x30b24b7

    move/from16 v58, v3

    .end local v3    # "$changed\\7":I
    .local v58, "$changed\\7":I
    const-string v3, "C66@2763L139,71@2983L11,72@3047L16,65@2715L430,75@3158L245,80@3416L229,85@3658L41,87@3713L158,93@3885L41,112@4486L38,116@4630L384,114@4538L540:QuestionnaireScreen.kt#8o7o96"

    move-object/from16 v59, v4

    .end local v40    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v59, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 67
    const v2, 0x62ffa14a

    const-string v3, "CC(remember):QuestionnaireScreen.kt#9igjgp"

    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\8":Z
    move-object/from16 v31, v4

    .local v31, "$this$cache\\8":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 185
    .local v32, "$i$f$cache\\8\\67":I
    move/from16 v33, v2

    .end local v2    # "invalid\\8":Z
    .local v33, "invalid\\8":Z
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it\\8":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 186
    .local v34, "$i$a$-let-ComposerKt$cache$1\\9\\185\\8":I
    if-nez v33, :cond_7

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v60, v6

    .end local v6    # "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    .local v60, "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v2, v6, :cond_6

    goto :goto_3

    .line 190
    :cond_6
    move-object/from16 v6, v31

    goto :goto_4

    .line 186
    .end local v60    # "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    .restart local v6    # "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    :cond_7
    move/from16 v60, v6

    .line 187
    .end local v6    # "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    .restart local v60    # "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    :goto_3
    const/4 v6, 0x0

    .line 67
    .local v6, "$i$a$-cache-QuestionnaireScreenKt$QuestionnaireScreen$1$1$1\\10\\187\\7":I
    move-object/from16 v35, v2

    .end local v2    # "it\\8":Ljava/lang/Object;
    .local v35, "it\\8":Ljava/lang/Object;
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda0;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;)V

    .line 187
    .end local v6    # "$i$a$-cache-QuestionnaireScreenKt$QuestionnaireScreen$1$1$1\\10\\187\\7":I
    nop

    .line 188
    .local v2, "value\\9":Ljava/lang/Object;
    move-object/from16 v6, v31

    .end local v31    # "$this$cache\\8":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache\\8":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    nop

    .line 185
    .end local v2    # "value\\9":Ljava/lang/Object;
    .end local v34    # "$i$a$-let-ComposerKt$cache$1\\9\\185\\8":I
    .end local v35    # "it\\8":Ljava/lang/Object;
    :goto_4
    nop

    .line 67
    .end local v6    # "$this$cache\\8":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$f$cache\\8\\67":I
    .end local v33    # "invalid\\8":Z
    move-object/from16 v31, v2

    check-cast v31, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 71
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v32, v2

    check-cast v32, Landroidx/compose/ui/Modifier;

    .line 72
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    sget v6, Landroidx/compose/material3/ProgressIndicatorDefaults;->$stable:I

    invoke-virtual {v2, v4, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v33

    .line 73
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    sget v6, Landroidx/compose/material3/ProgressIndicatorDefaults;->$stable:I

    invoke-virtual {v2, v4, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v35

    .line 74
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v37

    .line 66
    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x30

    const/16 v42, 0x60

    move-object/from16 v40, v4

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v40    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v31 .. v42}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-GJbTh5U(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 78
    move-object/from16 v52, v40

    .end local v40    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v52, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getHeadlineSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v51

    .line 79
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x10

    .local v4, "$this$dp\\11":I
    const/4 v6, 0x0

    .line 191
    .local v6, "$i$f$getDp\\11\\79":I
    move/from16 v31, v6

    .end local v6    # "$i$f$getDp\\11\\79":I
    .local v31, "$i$f$getDp\\11\\79":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 79
    .end local v4    # "$this$dp\\11":I
    .end local v31    # "$i$f$getDp\\11\\79":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 77
    nop

    .line 79
    nop

    .line 78
    nop

    .line 76
    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v53, 0x36

    const/16 v54, 0x0

    const v55, 0xfffc

    const-string v31, "Intenta marcar las respuestas o frases que encajen contigo, te asignaremos un psic\u00f3logo en base a ellas."

    invoke-static/range {v31 .. v55}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getHeadlineSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v51

    .line 84
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x10

    .local v4, "$this$dp\\12":I
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$f$getDp\\12\\84":I
    move/from16 v31, v6

    .end local v6    # "$i$f$getDp\\12\\84":I
    .local v31, "$i$f$getDp\\12\\84":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 84
    .end local v4    # "$this$dp\\12":I
    .end local v31    # "$i$f$getDp\\12\\84":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 82
    nop

    .line 84
    nop

    .line 83
    nop

    .line 81
    const-string v31, "No te preocupes si no encajais, puedes cambiar de profesional sin problema m\u00e1s adelante."

    invoke-static/range {v31 .. v55}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 86
    move-object/from16 v4, v52

    .end local v52    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v6, 0xf

    .local v6, "$this$dp\\13":I
    const/16 v31, 0x0

    .line 193
    .local v31, "$i$f$getDp\\13\\86":I
    move/from16 v61, v7

    .end local v7    # "compositeKeyHash\\3":I
    .local v61, "compositeKeyHash\\3":I
    int-to-float v7, v6

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 86
    .end local v6    # "$this$dp\\13":I
    .end local v31    # "$i$f$getDp\\13\\86":I
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move/from16 v6, v24

    invoke-static {v2, v4, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/domain/models/Question;->getTitle()Ljava/lang/String;

    move-result-object v31

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v51

    .line 91
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x10

    .local v6, "$this$dp\\14":I
    const/4 v7, 0x0

    .line 194
    .local v7, "$i$f$getDp\\14\\91":I
    move-object/from16 v40, v4

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v40    # "$composer\\7":Landroidx/compose/runtime/Composer;
    int-to-float v4, v6

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 91
    .end local v6    # "$this$dp\\14":I
    .end local v7    # "$i$f$getDp\\14\\91":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 89
    nop

    .line 91
    nop

    .line 90
    nop

    .line 88
    move-object/from16 v52, v40

    .end local v40    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v52    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const-wide/16 v40, 0x0

    const/16 v53, 0x30

    invoke-static/range {v31 .. v55}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 94
    move-object/from16 v4, v52

    .end local v52    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x14

    .local v6, "$this$dp\\15":I
    const/4 v7, 0x0

    .line 195
    .local v7, "$i$f$getDp\\15\\94":I
    move/from16 v31, v7

    .end local v7    # "$i$f$getDp\\15\\94":I
    .local v31, "$i$f$getDp\\15\\94":I
    int-to-float v7, v6

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 94
    .end local v6    # "$this$dp\\15":I
    .end local v31    # "$i$f$getDp\\15\\94":I
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v6, 0x6

    invoke-static {v2, v4, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const v2, 0x63003802

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "*97@4008L450"

    invoke-static {v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/domain/models/Question;->getAnswers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEachIndexed\\16":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 196
    .local v6, "$i$f$forEachIndexed\\16\\96":I
    const/4 v7, 0x0

    .line 197
    .local v7, "index\\16":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .local v32, "item\\16":Ljava/lang/Object;
    add-int/lit8 v33, v7, 0x1

    .end local v7    # "index\\16":I
    .local v33, "index\\16":I
    if-gez v7, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    move-object/from16 v62, v32

    check-cast v62, Ljava/lang/String;

    .local v7, "index\\17":I
    .local v62, "answer\\17":Ljava/lang/String;
    const/16 v34, 0x0

    .line 99
    .local v34, "$i$a$-forEachIndexed-QuestionnaireScreenKt$QuestionnaireScreen$1$1$2\\17\\197\\7":I
    sget-object v35, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v35

    .line 98
    const/16 v36, 0x180

    .local v36, "$changed\\18":I
    move-object/from16 v37, v35

    .local v37, "verticalAlignment\\18":Landroidx/compose/ui/Alignment$Vertical;
    move-object/from16 v35, v4

    .local v35, "$composer\\18":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 198
    .local v38, "$i$f$Row\\18\\98":I
    move-object/from16 v39, v2

    .end local v2    # "$this$forEachIndexed\\16":Ljava/lang/Iterable;
    .local v39, "$this$forEachIndexed\\16":Ljava/lang/Iterable;
    const v2, 0x3255a44b

    move/from16 v40, v6

    .end local v6    # "$i$f$forEachIndexed\\16\\96":I
    .local v40, "$i$f$forEachIndexed\\16\\96":I
    const-string v6, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    move/from16 v44, v8

    move-object/from16 v8, v35

    .end local v35    # "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v8, "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v44, "$changed\\2":I
    invoke-static {v8, v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 199
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 200
    .local v2, "modifier\\18":Landroidx/compose/ui/Modifier;
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v6

    .line 204
    .local v6, "horizontalArrangement\\18":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v35, v36, 0x3

    and-int/lit8 v35, v35, 0xe

    shr-int/lit8 v41, v36, 0x3

    and-int/lit8 v41, v41, 0x70

    move-object/from16 v42, v2

    .end local v2    # "modifier\\18":Landroidx/compose/ui/Modifier;
    .local v42, "modifier\\18":Landroidx/compose/ui/Modifier;
    or-int v2, v35, v41

    move-object/from16 v45, v9

    move-object/from16 v9, v37

    .end local v37    # "verticalAlignment\\18":Landroidx/compose/ui/Alignment$Vertical;
    .local v9, "verticalAlignment\\18":Landroidx/compose/ui/Alignment$Vertical;
    .local v45, "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {v6, v9, v8, v2}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .line 208
    .local v2, "measurePolicy\\18":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 207
    shl-int/lit8 v35, v36, 0x3

    and-int/lit8 v35, v35, 0x70

    .line 205
    nop

    .local v35, "$changed\\19":I
    move-object/from16 v37, v8

    .local v37, "$composer\\19":Landroidx/compose/runtime/Composer;
    move-object/from16 v41, v2

    .local v41, "measurePolicy\\19":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v43, v42

    .local v43, "modifier\\19":Landroidx/compose/ui/Modifier;
    const/16 v46, 0x0

    .line 209
    .local v46, "$i$f$Layout\\19\\205":I
    move-object/from16 v47, v2

    move-object/from16 v17, v6

    move-object/from16 v2, v37

    const v6, -0x451e1427

    .end local v6    # "horizontalArrangement\\18":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v37    # "$composer\\19":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\19":Landroidx/compose/runtime/Composer;
    .local v17, "horizontalArrangement\\18":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v47, "measurePolicy\\18":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 210
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    .line 211
    .local v6, "compositeKeyHash\\19":I
    move-object/from16 v48, v1

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 212
    .local v1, "localMap\\19":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v49, v6

    move-object/from16 v6, v43

    move-object/from16 v43, v8

    .end local v8    # "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v6, "modifier\\19":Landroidx/compose/ui/Modifier;
    .local v43, "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v49, "compositeKeyHash\\19":I
    invoke-static {v2, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 214
    .local v8, "materialized\\19":Landroidx/compose/ui/Modifier;
    sget-object v50, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v50 .. v50}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v50

    move-object/from16 v51, v2

    .end local v2    # "$composer\\19":Landroidx/compose/runtime/Composer;
    .local v51, "$composer\\19":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v2, v35, 0x6

    and-int/lit16 v2, v2, 0x380

    const/16 v24, 0x6

    or-int/lit8 v2, v2, 0x6

    .line 213
    move-object/from16 v52, v51

    .local v52, "$composer\\20":Landroidx/compose/runtime/Composer;
    move-object/from16 v53, v50

    .local v2, "$changed\\20":I
    .local v53, "factory\\20":Lkotlin/jvm/functions/Function0;
    const/16 v50, 0x0

    .line 215
    .local v50, "$i$f$ReusableComposeNode\\20\\213":I
    move/from16 v54, v2

    move-object/from16 v19, v6

    move-object/from16 v2, v52

    const v6, -0x20f7d59c

    .end local v6    # "modifier\\19":Landroidx/compose/ui/Modifier;
    .end local v52    # "$composer\\20":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\20":Landroidx/compose/runtime/Composer;
    .local v19, "modifier\\19":Landroidx/compose/ui/Modifier;
    .local v54, "$changed\\20":I
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 216
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 217
    :cond_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 218
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 219
    move-object/from16 v6, v53

    .end local v53    # "factory\\20":Lkotlin/jvm/functions/Function0;
    .local v6, "factory\\20":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 221
    .end local v6    # "factory\\20":Lkotlin/jvm/functions/Function0;
    .restart local v53    # "factory\\20":Lkotlin/jvm/functions/Function0;
    :cond_a
    move-object/from16 v6, v53

    .end local v53    # "factory\\20":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory\\20":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 223
    :goto_6
    move-object/from16 v53, v2

    .end local v2    # "$composer\\20":Landroidx/compose/runtime/Composer;
    .local v53, "$composer\\20":Landroidx/compose/runtime/Composer;
    invoke-static/range {v53 .. v53}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\21":Landroidx/compose/runtime/Composer;
    const/16 v55, 0x0

    .line 224
    .local v55, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\21\\223\\19":I
    sget-object v63, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v87, v5

    invoke-virtual/range {v63 .. v63}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    move-object/from16 v88, v6

    move-object/from16 v6, v41

    .end local v41    # "measurePolicy\\19":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "measurePolicy\\19":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v88, "factory\\20":Lkotlin/jvm/functions/Function0;
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 225
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v41, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v89, v1

    .end local v1    # "localMap\\19":Landroidx/compose/runtime/CompositionLocalMap;
    .local v89, "localMap\\19":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 227
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 228
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 229
    nop

    .line 223
    .end local v2    # "$this$Layout_u24lambda_u240\\21":Landroidx/compose/runtime/Composer;
    .end local v55    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\21\\223\\19":I
    nop

    .line 230
    shr-int/lit8 v1, v54, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\22":I
    move-object/from16 v2, v53

    .local v2, "$composer\\22":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 206
    .local v5, "$i$a$-Layout-RowKt$Row$1\\22\\230\\18":I
    move/from16 v41, v1

    .end local v1    # "$changed\\22":I
    .local v41, "$changed\\22":I
    const v1, 0x56ccd6f5

    move/from16 v55, v5

    .end local v5    # "$i$a$-Layout-RowKt$Row$1\\22\\230\\18":I
    .local v55, "$i$a$-Layout-RowKt$Row$1\\22\\230\\18":I
    const-string v5, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v5, v36, 0x6

    and-int/lit8 v5, v5, 0x70

    const/16 v24, 0x6

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed\\23":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248_u24lambda_u245_u24lambda_u244\\23":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v69, v2

    .local v69, "$composer\\23":Landroidx/compose/runtime/Composer;
    const/16 v90, 0x0

    .line 101
    .local v90, "$i$a$-Row-QuestionnaireScreenKt$QuestionnaireScreen$1$1$2$1\\23\\206\\17":I
    move-object/from16 v91, v1

    .end local v1    # "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248_u24lambda_u245_u24lambda_u244\\23":Landroidx/compose/foundation/layout/RowScope;
    .local v91, "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248_u24lambda_u245_u24lambda_u244\\23":Landroidx/compose/foundation/layout/RowScope;
    const v1, 0x2c18f65a

    move-object/from16 v92, v2

    .end local v2    # "$composer\\22":Landroidx/compose/runtime/Composer;
    .local v92, "$composer\\22":Landroidx/compose/runtime/Composer;
    const-string v2, "C104@4296L89,100@4120L287,108@4428L12:QuestionnaireScreen.kt#8o7o96"

    move/from16 v93, v5

    move-object/from16 v5, v69

    .end local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\23":Landroidx/compose/runtime/Composer;
    .local v93, "$changed\\23":I
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getSelectedAnswers()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    nop

    .line 102
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v63

    .line 105
    const v1, -0x61ac881e

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "invalid\\24":Z
    move-object v2, v5

    .local v2, "$this$cache\\24":Landroidx/compose/runtime/Composer;
    const/16 v64, 0x0

    .line 231
    .local v64, "$i$f$cache\\24\\105":I
    move/from16 v65, v1

    .end local v1    # "invalid\\24":Z
    .local v65, "invalid\\24":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\24":Ljava/lang/Object;
    const/16 v66, 0x0

    .line 232
    .local v66, "$i$a$-let-ComposerKt$cache$1\\25\\231\\24":I
    if-nez v65, :cond_c

    sget-object v67, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v69, v5

    .end local v5    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .restart local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v67 .. v67}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_b

    goto :goto_7

    .line 236
    :cond_b
    goto :goto_8

    .line 232
    .end local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer\\23":Landroidx/compose/runtime/Composer;
    :cond_c
    move-object/from16 v69, v5

    .line 233
    .end local v5    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .restart local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    :goto_7
    const/4 v5, 0x0

    .line 105
    .local v5, "$i$a$-cache-QuestionnaireScreenKt$QuestionnaireScreen$1$1$2$1$1\\26\\233\\23":I
    move-object/from16 v67, v1

    .end local v1    # "it\\24":Ljava/lang/Object;
    .local v67, "it\\24":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;I)V

    .line 233
    .end local v5    # "$i$a$-cache-QuestionnaireScreenKt$QuestionnaireScreen$1$1$2$1$1\\26\\233\\23":I
    nop

    .line 234
    .local v1, "value\\25":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 235
    nop

    .line 231
    .end local v1    # "value\\25":Ljava/lang/Object;
    .end local v66    # "$i$a$-let-ComposerKt$cache$1\\25\\231\\24":I
    .end local v67    # "it\\24":Ljava/lang/Object;
    :goto_8
    nop

    .line 105
    .end local v2    # "$this$cache\\24":Landroidx/compose/runtime/Composer;
    .end local v64    # "$i$f$cache\\24\\105":I
    .end local v65    # "invalid\\24":Z
    move-object/from16 v64, v1

    check-cast v64, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v69 .. v69}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 101
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x3c

    invoke-static/range {v63 .. v71}, Landroidx/compose/material3/CheckboxKt;->Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 109
    const/16 v85, 0x0

    const v86, 0x1fffe

    const/16 v63, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    move-object/from16 v83, v69

    .end local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .local v83, "$composer\\23":Landroidx/compose/runtime/Composer;
    const/16 v69, 0x0

    const/16 v70, 0x0

    const-wide/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const-wide/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v84, 0x0

    invoke-static/range {v62 .. v86}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 101
    move-object/from16 v69, v83

    .end local v83    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .restart local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    invoke-static/range {v69 .. v69}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 110
    nop

    .line 206
    .end local v69    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .end local v90    # "$i$a$-Row-QuestionnaireScreenKt$QuestionnaireScreen$1$1$2$1\\23\\206\\17":I
    .end local v91    # "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248_u24lambda_u245_u24lambda_u244\\23":Landroidx/compose/foundation/layout/RowScope;
    .end local v93    # "$changed\\23":I
    invoke-static/range {v92 .. v92}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 230
    .end local v41    # "$changed\\22":I
    .end local v55    # "$i$a$-Layout-RowKt$Row$1\\22\\230\\18":I
    .end local v92    # "$composer\\22":Landroidx/compose/runtime/Composer;
    nop

    .line 237
    invoke-interface/range {v53 .. v53}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 215
    invoke-static/range {v53 .. v53}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 238
    nop

    .line 209
    .end local v50    # "$i$f$ReusableComposeNode\\20\\213":I
    .end local v53    # "$composer\\20":Landroidx/compose/runtime/Composer;
    .end local v54    # "$changed\\20":I
    .end local v88    # "factory\\20":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v51 .. v51}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 239
    nop

    .line 198
    .end local v6    # "measurePolicy\\19":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v8    # "materialized\\19":Landroidx/compose/ui/Modifier;
    .end local v19    # "modifier\\19":Landroidx/compose/ui/Modifier;
    .end local v35    # "$changed\\19":I
    .end local v46    # "$i$f$Layout\\19\\205":I
    .end local v49    # "compositeKeyHash\\19":I
    .end local v51    # "$composer\\19":Landroidx/compose/runtime/Composer;
    .end local v89    # "localMap\\19":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v43 .. v43}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 240
    nop

    .line 111
    .end local v9    # "verticalAlignment\\18":Landroidx/compose/ui/Alignment$Vertical;
    .end local v17    # "horizontalArrangement\\18":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v36    # "$changed\\18":I
    .end local v38    # "$i$f$Row\\18\\98":I
    .end local v42    # "modifier\\18":Landroidx/compose/ui/Modifier;
    .end local v43    # "$composer\\18":Landroidx/compose/runtime/Composer;
    .end local v47    # "measurePolicy\\18":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 197
    .end local v7    # "index\\17":I
    .end local v34    # "$i$a$-forEachIndexed-QuestionnaireScreenKt$QuestionnaireScreen$1$1$2\\17\\197\\7":I
    .end local v62    # "answer\\17":Ljava/lang/String;
    move/from16 v7, v33

    move-object/from16 v2, v39

    move/from16 v6, v40

    move/from16 v8, v44

    move-object/from16 v9, v45

    move-object/from16 v1, v48

    move-object/from16 v5, v87

    .end local v32    # "item\\16":Ljava/lang/Object;
    goto/16 :goto_5

    .line 241
    .end local v33    # "index\\16":I
    .end local v39    # "$this$forEachIndexed\\16":Ljava/lang/Iterable;
    .end local v40    # "$i$f$forEachIndexed\\16\\96":I
    .end local v44    # "$changed\\2":I
    .end local v45    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .local v2, "$this$forEachIndexed\\16":Ljava/lang/Iterable;
    .local v6, "$i$f$forEachIndexed\\16\\96":I
    .local v7, "index\\16":I
    .local v8, "$changed\\2":I
    .local v9, "$composer\\2":Landroidx/compose/runtime/Composer;
    :cond_d
    move-object/from16 v39, v2

    move/from16 v40, v6

    move/from16 v44, v8

    move-object/from16 v45, v9

    .end local v2    # "$this$forEachIndexed\\16":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEachIndexed\\16\\96":I
    .end local v7    # "index\\16":I
    .end local v8    # "$changed\\2":I
    .end local v9    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .restart local v44    # "$changed\\2":I
    .restart local v45    # "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 113
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v32, v1

    check-cast v32, Landroidx/compose/ui/Modifier;

    const/16 v35, 0x2

    const/16 v36, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x0

    move-object/from16 v31, v57

    .end local v57    # "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v31, "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v2, v31

    const/4 v6, 0x0

    .end local v31    # "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .local v2, "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v1, v4, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 116
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Landroidx/compose/foundation/layout/ColumnScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 117
    const v1, 0x63008b9f

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\27":Z
    move-object v3, v4

    .local v3, "$this$cache\\27":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 242
    .local v5, "$i$f$cache\\27\\117":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\27":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 243
    .local v7, "$i$a$-let-ComposerKt$cache$1\\28\\242\\27":I
    if-nez v1, :cond_f

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_e

    goto :goto_9

    .line 247
    :cond_e
    goto :goto_a

    .line 244
    :cond_f
    :goto_9
    const/4 v8, 0x0

    .line 117
    .local v8, "$i$a$-cache-QuestionnaireScreenKt$QuestionnaireScreen$1$1$3\\29\\244\\7":I
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda2;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;)V

    .line 244
    .end local v8    # "$i$a$-cache-QuestionnaireScreenKt$QuestionnaireScreen$1$1$3\\29\\244\\7":I
    nop

    .line 245
    .local v9, "value\\28":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    move-object v6, v9

    .line 242
    .end local v6    # "it\\27":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\28\\242\\27":I
    .end local v9    # "value\\28":Ljava/lang/Object;
    :goto_a
    nop

    .line 117
    .end local v1    # "invalid\\27":Z
    .end local v3    # "$this$cache\\27":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\27\\117":I
    move-object/from16 v31, v6

    check-cast v31, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 116
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$QuestionnaireScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$QuestionnaireScreenKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/ComposableSingletons$QuestionnaireScreenKt;->getLambda$-484677457$app()Lkotlin/jvm/functions/Function3;

    move-result-object v40

    .line 115
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/high16 v42, 0x30000000

    const/16 v43, 0x1fc

    move-object/from16 v41, v4

    .end local v4    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v41, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v31 .. v43}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 66
    move-object/from16 v52, v41

    .end local v41    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v52, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v52 .. v52}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 133
    nop

    .line 160
    .end local v2    # "$this$QuestionnaireScreen_u24lambda_u249_u24lambda_u248\\7":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v52    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v56    # "$i$a$-Column-QuestionnaireScreenKt$QuestionnaireScreen$1$1\\7\\160\\0":I
    .end local v58    # "$changed\\7":I
    invoke-static/range {v59 .. v59}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 184
    .end local v27    # "$changed\\6":I
    .end local v59    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v60    # "$i$a$-Layout-ColumnKt$Column$1\\6\\184\\2":I
    nop

    .line 248
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 169
    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 249
    nop

    .line 163
    .end local v21    # "$changed\\4":I
    .end local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$ReusableComposeNode\\4\\167":I
    .end local v29    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 250
    nop

    .line 157
    .end local v12    # "$changed\\3":I
    .end local v13    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v14    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v15    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "$i$f$Layout\\3\\159":I
    .end local v28    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v30    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v61    # "compositeKeyHash\\3":I
    invoke-static/range {v45 .. v45}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 251
    nop

    .end local v10    # "$i$f$Column\\2\\59":I
    .end local v11    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v25    # "horizontalAlignment\\2":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v26    # "verticalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v44    # "$changed\\2":I
    .end local v45    # "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_b

    .line 57
    .end local v18    # "$dirty":I
    .local v3, "$dirty":I
    :cond_10
    move/from16 v18, v3

    .end local v3    # "$dirty":I
    .restart local v18    # "$dirty":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 134
    :cond_11
    :goto_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final QuestionnaireScreen$lambda$9$lambda$8$lambda$1$lambda$0(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;)F
    .locals 2
    .param p0, "$viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    .line 68
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 69
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getQuestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    .line 68
    div-float/2addr v0, v1

    .line 69
    return v0
.end method

.method static final QuestionnaireScreen$lambda$9$lambda$8$lambda$5$lambda$4$lambda$3$lambda$2(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;IZ)Lkotlin/Unit;
    .locals 1
    .param p0, "$viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
    .param p1, "$index"    # I
    .param p2, "it"    # Z

    .line 106
    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->changeAnswer(IZ)V

    .line 107
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final QuestionnaireScreen$lambda$9$lambda$8$lambda$7$lambda$6(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;)Lkotlin/Unit;
    .locals 2
    .param p0, "$viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    .line 119
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getQuestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 119
    if-ge v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->nextQuestion()V

    .line 129
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
