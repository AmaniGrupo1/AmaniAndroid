.class public final Lorg/koin/androidx/compose/ViewModelKt;
.super Ljava/lang/Object;
.source "ViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001ak\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0016\u0008\n\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0004\u0018\u0001`\u0010H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "koinViewModel",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "viewModelStoreOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "key",
        "",
        "extras",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;",
        "koin-androidx-compose_release"
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
.method public static final synthetic koinViewModel(Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;
    .locals 8
    .param p0, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p1, "viewModelStoreOwner"    # Landroidx/lifecycle/ViewModelStoreOwner;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;
    .param p4, "scope"    # Lorg/koin/core/scope/Scope;
    .param p5, "parameters"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    .local v0, "$i$f$koinViewModel":I
    const v1, -0x6040e0aa

    const-string v2, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k"

    invoke-static {p6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    .line 43
    const/4 p0, 0x0

    move-object v5, p0

    goto :goto_0

    .line 49
    :cond_0
    move-object v5, p0

    .line 43
    .end local p0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v5, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 p0, p8, 0x2

    if-eqz p0, :cond_2

    .line 44
    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {p0, p6, v1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    and-int/lit8 p0, p8, 0x4

    if-eqz p0, :cond_3

    .line 45
    const/4 p2, 0x0

    move-object v3, p2

    goto :goto_2

    .line 44
    :cond_3
    move-object v3, p2

    .line 45
    .end local p2    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    :goto_2
    and-int/lit8 p0, p8, 0x8

    if-eqz p0, :cond_4

    .line 46
    invoke-static {p1}, Lorg/koin/viewmodel/CreationExtrasExtKt;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p3

    move-object v4, p3

    goto :goto_3

    .line 45
    :cond_4
    move-object v4, p3

    .line 46
    .end local p3    # "extras":Landroidx/lifecycle/viewmodel/CreationExtras;
    .local v4, "extras":Landroidx/lifecycle/viewmodel/CreationExtras;
    :goto_3
    and-int/lit8 p0, p8, 0x10

    if-eqz p0, :cond_5

    .line 47
    const/4 p0, 0x0

    invoke-static {p6, p0}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    move-result-object p4

    move-object v6, p4

    goto :goto_4

    .line 46
    :cond_5
    move-object v6, p4

    .line 47
    .end local p4    # "scope":Lorg/koin/core/scope/Scope;
    .local v6, "scope":Lorg/koin/core/scope/Scope;
    :goto_4
    and-int/lit8 p0, p8, 0x20

    if-eqz p0, :cond_6

    .line 48
    const/4 p5, 0x0

    move-object v7, p5

    goto :goto_5

    .line 47
    :cond_6
    move-object v7, p5

    .line 48
    .end local p5    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v7, "parameters":Lkotlin/jvm/functions/Function0;
    :goto_5
    const-string p0, "T"

    const/4 p2, 0x4

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Landroidx/lifecycle/ViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 51
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v2

    .line 50
    invoke-static/range {v1 .. v7}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    .line 49
    invoke-static {p6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 50
    return-object p0
.end method
