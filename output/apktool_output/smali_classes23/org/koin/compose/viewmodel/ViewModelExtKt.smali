.class public final Lorg/koin/compose/viewmodel/ViewModelExtKt;
.super Ljava/lang/Object;
.source "ViewModelExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewModelExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelExt.kt\norg/koin/compose/viewmodel/ViewModelExtKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 ViewModel.kt\norg/koin/compose/viewmodel/ViewModelKt\n*L\n1#1,57:1\n75#2:58\n54#3:59\n51#3,6:60\n*S KotlinDebug\n*F\n+ 1 ViewModelExt.kt\norg/koin/compose/viewmodel/ViewModelExtKt\n*L\n52#1:58\n50#1:59\n50#1:60,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aW\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0016\u0008\n\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\u000cH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "koinActivityViewModel",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "key",
        "",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;",
        "koin-compose-viewmodel_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic koinActivityViewModel(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;
    .locals 18
    .param p0, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "scope"    # Lorg/koin/core/scope/Scope;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x8e9
        key = -0x7c7d7ee9
        startOffset = 0x72d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/lang/String;",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)TT;"
        }
    .end annotation

    move-object/from16 v0, p4

    const/4 v1, 0x0

    .line 50
    .local v1, "$i$f$koinActivityViewModel":I
    const v2, -0x7c7d7ee9

    const-string v3, "CC(koinActivityViewModel)N(qualifier,key,scope,parameters)47@1966L18,51@2133L7,49@2048L233:ViewModelExt.kt#7bazx"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x0

    .end local p0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v2, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 50
    .end local v2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v2, p0

    .line 46
    .end local p0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_1

    .line 47
    const/4 v3, 0x0

    .end local p1    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    goto :goto_1

    .line 46
    .end local v3    # "key":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v3, p1

    .line 47
    .end local p1    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :goto_1
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_2

    .line 48
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object v4

    .end local p2    # "scope":Lorg/koin/core/scope/Scope;
    .local v4, "scope":Lorg/koin/core/scope/Scope;
    goto :goto_2

    .line 47
    .end local v4    # "scope":Lorg/koin/core/scope/Scope;
    .restart local p2    # "scope":Lorg/koin/core/scope/Scope;
    :cond_2
    move-object/from16 v4, p2

    .line 48
    .end local p2    # "scope":Lorg/koin/core/scope/Scope;
    .restart local v4    # "scope":Lorg/koin/core/scope/Scope;
    :goto_2
    and-int/lit8 v5, p6, 0x8

    if-eqz v5, :cond_3

    .line 49
    const/4 v5, 0x0

    .end local p3    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v5, "parameters":Lkotlin/jvm/functions/Function0;
    goto :goto_3

    .line 48
    .end local v5    # "parameters":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "parameters":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v5, p3

    .line 51
    .end local p3    # "parameters":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "parameters":Lkotlin/jvm/functions/Function0;
    :goto_3
    nop

    .line 52
    invoke-static {}, Landroidx/activity/compose/LocalActivityKt;->getLocalActivity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    .local v6, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v7, 0x0

    .local v7, "$changed$iv":I
    move-object/from16 v8, p4

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 58
    .local v9, "$i$f$getCurrent":I
    const v10, 0x789c5f52

    const-string v11, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v8, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 52
    .end local v6    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v7    # "$changed$iv":I
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$getCurrent":I
    instance-of v6, v10, Landroidx/activity/ComponentActivity;

    if-eqz v6, :cond_4

    check-cast v10, Landroidx/activity/ComponentActivity;

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_5

    check-cast v10, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 53
    nop

    .line 54
    nop

    .line 55
    and-int/lit8 v6, p5, 0xe

    shl-int/lit8 v7, p5, 0x3

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v6, v7

    shl-int/lit8 v7, p5, 0x6

    const v8, 0xe000

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    const/high16 v7, 0x70000

    shl-int/lit8 v8, p5, 0x6

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 50
    move-object/from16 v7, p4

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v17, v5

    .local v17, "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v4

    .local v16, "scope$iv":Lorg/koin/core/scope/Scope;
    move-object v15, v2

    .local v15, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v13, v3

    .local v6, "$changed$iv":I
    .local v10, "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    .local v13, "key$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 59
    .local v8, "$i$f$koinViewModel":I
    const v9, -0x3721ac17

    const-string v11, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)48@1587L7,51@1782L18:ViewModel.kt#7bazx"

    invoke-static {v7, v9, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 60
    invoke-static {v10}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v14

    .local v14, "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    const-string v9, "T"

    const/4 v11, 0x4

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Landroidx/lifecycle/ViewModel;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 65
    invoke-interface {v10}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v12

    .line 64
    invoke-static/range {v11 .. v17}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v9

    .line 59
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 64
    nop

    .line 50
    .end local v6    # "$changed$iv":I
    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$koinViewModel":I
    .end local v10    # "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v13    # "key$iv":Ljava/lang/String;
    .end local v14    # "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v15    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v16    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v17    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v9

    .line 52
    :cond_5
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "LocalActivity is not a ComponentActivity"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
