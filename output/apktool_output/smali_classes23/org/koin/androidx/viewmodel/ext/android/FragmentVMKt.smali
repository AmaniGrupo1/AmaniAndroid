.class public final Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt;
.super Ljava/lang/Object;
.source "FragmentVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ab\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\n\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0010\u0008\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00082\u0010\u0008\n\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008H\u0087\u0008\u00f8\u0001\u0000\u001aa\u0010\u000e\u001a\u0002H\u0002\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\n\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0010\u0008\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00082\u0010\u0008\n\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "viewModel",
        "Lkotlin/Lazy;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/fragment/app/Fragment;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "ownerProducer",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "extrasProducer",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "parameters",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "getViewModel",
        "(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;",
        "koin-android_release"
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
.method public static final synthetic getViewModel(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 11
    .param p0, "$this$getViewModel"    # Landroidx/fragment/app/Fragment;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "ownerProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p4, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$getViewModel":I
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v3

    .line 72
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    const-string v2, "<get-defaultViewModelCreationExtras>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    :cond_1
    move-object v5, v1

    .line 75
    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-static {v1}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v7

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 71
    nop

    .line 69
    nop

    .line 72
    nop

    .line 73
    nop

    .line 75
    nop

    .line 74
    nop

    .line 69
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    move-object v8, p4

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p4    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v6, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v8, "parameters":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v2 .. v10}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel$default(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getViewModel$default(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;
    .locals 9
    .param p0, "$this$getViewModel_u24default"    # Landroidx/fragment/app/Fragment;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "ownerProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p4, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 63
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 64
    const/4 p1, 0x0

    move-object v4, p1

    goto :goto_0

    .line 63
    :cond_0
    move-object v4, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v4, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$1;

    invoke-direct {p1, p0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$1;-><init>(Landroidx/fragment/app/Fragment;)V

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 63
    :cond_1
    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    .line 66
    const/4 p3, 0x0

    .line 63
    :cond_2
    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    .line 67
    const/4 p4, 0x0

    move-object v6, p4

    goto :goto_1

    .line 63
    :cond_3
    move-object v6, p4

    .end local p4    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v6, "parameters":Lkotlin/jvm/functions/Function0;
    :goto_1
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ownerProducer"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    .local p1, "$i$f$getViewModel":I
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {p4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    .line 72
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez p4, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p4

    const-string p5, "<get-defaultViewModelCreationExtras>(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p5, p4

    check-cast p5, Landroidx/lifecycle/viewmodel/CreationExtras;

    :cond_5
    move-object v3, p4

    .line 75
    move-object p4, p0

    check-cast p4, Landroid/content/ComponentCallbacks;

    invoke-static {p4}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v5

    const-string p4, "T"

    const/4 p5, 0x4

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Landroidx/lifecycle/ViewModel;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 71
    nop

    .line 69
    nop

    .line 72
    nop

    .line 73
    nop

    .line 75
    nop

    .line 74
    nop

    .line 69
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel$default(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p4

    return-object p4
.end method

.method public static final synthetic viewModel(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 8
    .param p0, "$this$viewModel"    # Landroidx/fragment/app/Fragment;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "ownerProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p4, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    .local v0, "$i$f$viewModel":I
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "$this$viewModel":Landroidx/fragment/app/Fragment;
    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p2    # "ownerProducer":Lkotlin/jvm/functions/Function0;
    .end local p3    # "extrasProducer":Lkotlin/jvm/functions/Function0;
    .end local p4    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v3, "$this$viewModel":Landroidx/fragment/app/Fragment;
    .local v4, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v5, "ownerProducer":Lkotlin/jvm/functions/Function0;
    .local v6, "extrasProducer":Lkotlin/jvm/functions/Function0;
    .local v7, "parameters":Lkotlin/jvm/functions/Function0;
    invoke-direct/range {v2 .. v7}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;-><init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic viewModel$default(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 6
    .param p0, "$this$viewModel_u24default"    # Landroidx/fragment/app/Fragment;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "ownerProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p4, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 43
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 44
    const/4 p1, 0x0

    move-object v2, p1

    goto :goto_0

    .line 43
    :cond_0
    move-object v2, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v2, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 45
    new-instance p1, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$1;

    invoke-direct {p1, p0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$1;-><init>(Landroidx/fragment/app/Fragment;)V

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function0;

    move-object v3, p2

    goto :goto_1

    .line 43
    :cond_1
    move-object v3, p2

    .end local p2    # "ownerProducer":Lkotlin/jvm/functions/Function0;
    .local v3, "ownerProducer":Lkotlin/jvm/functions/Function0;
    :goto_1
    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    .line 46
    const/4 p3, 0x0

    move-object v4, p3

    goto :goto_2

    .line 43
    :cond_2
    move-object v4, p3

    .end local p3    # "extrasProducer":Lkotlin/jvm/functions/Function0;
    .local v4, "extrasProducer":Lkotlin/jvm/functions/Function0;
    :goto_2
    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    .line 47
    const/4 p4, 0x0

    move-object v5, p4

    goto :goto_3

    .line 43
    :cond_3
    move-object v5, p4

    .end local p4    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v5, "parameters":Lkotlin/jvm/functions/Function0;
    :goto_3
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ownerProducer"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    .local p1, "$i$f$viewModel":I
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;

    move-object v1, p0

    .end local p0    # "$this$viewModel_u24default":Landroidx/fragment/app/Fragment;
    .local v1, "$this$viewModel_u24default":Landroidx/fragment/app/Fragment;
    invoke-direct/range {v0 .. v5}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;-><init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
