.class public final Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt;
.super Ljava/lang/Object;
.source "ActivityVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aR\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0010\u0008\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008H\u0087\u0008\u00f8\u0001\u0000\u001aQ\u0010\u000c\u001a\u0002H\u0002\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0010\u0008\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "viewModel",
        "Lkotlin/Lazy;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/activity/ComponentActivity;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "extrasProducer",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "parameters",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "getViewModel",
        "(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;",
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
.method public static final synthetic getViewModel(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 10
    .param p0, "$this$getViewModel"    # Landroidx/activity/ComponentActivity;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lorg/koin/core/qualifier/Qualifier;",
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

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$getViewModel":I
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v2

    .line 67
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :cond_1
    move-object v4, v1

    .line 70
    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-static {v1}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v6

    const/4 v1, 0x4

    const-string v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 66
    nop

    .line 64
    nop

    .line 67
    nop

    .line 68
    nop

    .line 70
    nop

    .line 69
    nop

    .line 64
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v5, p1

    move-object v7, p3

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p3    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v5, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v7, "parameters":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v1 .. v9}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel$default(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getViewModel$default(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;
    .locals 9
    .param p0, "$this$getViewModel_u24default"    # Landroidx/activity/ComponentActivity;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 59
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 60
    const/4 p1, 0x0

    move-object v4, p1

    goto :goto_0

    .line 59
    :cond_0
    move-object v4, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v4, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    .line 61
    const/4 p2, 0x0

    .line 59
    :cond_1
    const/4 p1, 0x4

    and-int/2addr p4, p1

    if-eqz p4, :cond_2

    .line 62
    const/4 p3, 0x0

    move-object v6, p3

    goto :goto_1

    .line 59
    :cond_2
    move-object v6, p3

    .end local p3    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v6, "parameters":Lkotlin/jvm/functions/Function0;
    :goto_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 66
    .local p3, "$i$f$getViewModel":I
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    .line 67
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez p4, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p4

    :cond_4
    move-object v3, p4

    .line 70
    move-object p4, p0

    check-cast p4, Landroid/content/ComponentCallbacks;

    invoke-static {p4}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v5

    const-string p4, "T"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 66
    nop

    .line 64
    nop

    .line 67
    nop

    .line 68
    nop

    .line 70
    nop

    .line 69
    nop

    .line 64
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel$default(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic viewModel(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$this$viewModel"    # Landroidx/activity/ComponentActivity;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lorg/koin/core/qualifier/Qualifier;",
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

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$f$viewModel":I
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;-><init>(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic viewModel$default(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$this$viewModel_u24default"    # Landroidx/activity/ComponentActivity;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "extrasProducer"    # Lkotlin/jvm/functions/Function0;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 41
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 42
    const/4 p1, 0x0

    .line 41
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 43
    const/4 p2, 0x0

    .line 41
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 44
    const/4 p3, 0x0

    .line 41
    :cond_2
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 46
    .local p4, "$i$f$viewModel":I
    sget-object p5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;-><init>(Landroidx/activity/ComponentActivity;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p5, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    return-object p5
.end method
