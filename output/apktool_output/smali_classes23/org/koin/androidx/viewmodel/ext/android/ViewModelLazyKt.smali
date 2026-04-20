.class public final Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;
.super Ljava/lang/Object;
.source "ViewModelLazy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0080\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u001a\u0008\u0002\u0010\u000b\u001a\u0014\u0012\u0008\u0012\u00060\rj\u0002`\u000e\u0018\u00010\u000cj\u0004\u0018\u0001`\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000cj\u0004\u0018\u0001`\u0014H\u0007\u001a\u0086\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00152\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c2\u001a\u0008\u0002\u0010\u000b\u001a\u0014\u0012\u0008\u0012\u00060\rj\u0002`\u000e\u0018\u00010\u000cj\u0004\u0018\u0001`\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000cj\u0004\u0018\u0001`\u0014H\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "viewModelForClass",
        "Lkotlin/Lazy;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/activity/ComponentActivity;",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "owner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "state",
        "Lkotlin/Function0;",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "Lorg/koin/viewmodel/SavedStateDefinition;",
        "key",
        "",
        "parameters",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "Landroidx/fragment/app/Fragment;",
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
.method public static final viewModelForClass(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 10
    .param p0, "$this$viewModelForClass"    # Landroidx/activity/ComponentActivity;
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "owner"    # Landroidx/lifecycle/ViewModelStoreOwner;
    .param p4, "state"    # Lkotlin/jvm/functions/Function0;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
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

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p3}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v6

    .line 31
    .local v6, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$$ExternalSyntheticLambda2;

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    move-object v3, p3

    move-object v2, p4

    move-object v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final viewModelForClass(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 9
    .param p0, "$this$viewModelForClass"    # Landroidx/fragment/app/Fragment;
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "owner"    # Lkotlin/jvm/functions/Function0;
    .param p4, "state"    # Lkotlin/jvm/functions/Function0;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
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

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    move-object v8, p6

    .end local p0    # "$this$viewModelForClass":Landroidx/fragment/app/Fragment;
    .end local p1    # "clazz":Lkotlin/reflect/KClass;
    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p3    # "owner":Lkotlin/jvm/functions/Function0;
    .end local p4    # "state":Lkotlin/jvm/functions/Function0;
    .end local p5    # "key":Ljava/lang/String;
    .end local p6    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v2, "owner":Lkotlin/jvm/functions/Function0;
    .local v3, "state":Lkotlin/jvm/functions/Function0;
    .local v4, "$this$viewModelForClass":Landroidx/fragment/app/Fragment;
    .local v5, "clazz":Lkotlin/reflect/KClass;
    .local v6, "key":Ljava/lang/String;
    .local v7, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v8, "parameters":Lkotlin/jvm/functions/Function0;
    invoke-direct/range {v1 .. v8}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic viewModelForClass$default(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    .line 22
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 24
    move-object p2, v0

    .line 22
    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    .line 25
    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 22
    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    .line 26
    move-object p4, v0

    .line 22
    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    .line 27
    move-object p5, v0

    .line 22
    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    .line 28
    move-object p6, v0

    .line 22
    :cond_4
    invoke-static/range {p0 .. p6}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;->viewModelForClass(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic viewModelForClass$default(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    .line 46
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 48
    move-object p2, v0

    .line 46
    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    .line 49
    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 46
    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    .line 50
    move-object p4, v0

    .line 46
    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    .line 51
    move-object p5, v0

    .line 46
    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    .line 52
    move-object p6, v0

    .line 46
    :cond_4
    invoke-static/range {p0 .. p6}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;->viewModelForClass(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method static final viewModelForClass$lambda$0(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 8
    .param p0, "$state"    # Lkotlin/jvm/functions/Function0;
    .param p1, "$owner"    # Landroidx/lifecycle/ViewModelStoreOwner;
    .param p2, "$this_viewModelForClass"    # Landroidx/activity/ComponentActivity;
    .param p3, "$clazz"    # Lkotlin/reflect/KClass;
    .param p4, "$viewModelStore"    # Landroidx/lifecycle/ViewModelStore;
    .param p5, "$key"    # Ljava/lang/String;
    .param p6, "$qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p7, "$parameters"    # Lkotlin/jvm/functions/Function0;

    .line 35
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/koin/viewmodel/BundleExtKt;->toExtras(Landroid/os/Bundle;Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    :cond_1
    move-object v4, v0

    .line 39
    move-object v0, p2

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-static {v0}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v6

    .line 33
    nop

    .line 34
    nop

    .line 38
    nop

    .line 35
    nop

    .line 36
    nop

    .line 39
    nop

    .line 37
    nop

    .line 32
    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    move-object v7, p7

    .end local p3    # "$clazz":Lkotlin/reflect/KClass;
    .end local p4    # "$viewModelStore":Landroidx/lifecycle/ViewModelStore;
    .end local p5    # "$key":Ljava/lang/String;
    .end local p6    # "$qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p7    # "$parameters":Lkotlin/jvm/functions/Function0;
    .local v1, "$clazz":Lkotlin/reflect/KClass;
    .local v2, "$viewModelStore":Landroidx/lifecycle/ViewModelStore;
    .local v3, "$key":Ljava/lang/String;
    .local v5, "$qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v7, "$parameters":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v1 .. v7}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    .line 40
    return-object p3
.end method

.method static final viewModelForClass$lambda$1(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1
    .param p0, "$this_viewModelForClass"    # Landroidx/fragment/app/Fragment;

    .line 49
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    return-object v0
.end method

.method static final viewModelForClass$lambda$2(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 8
    .param p0, "$owner"    # Lkotlin/jvm/functions/Function0;
    .param p1, "$state"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$this_viewModelForClass"    # Landroidx/fragment/app/Fragment;
    .param p3, "$clazz"    # Lkotlin/reflect/KClass;
    .param p4, "$key"    # Ljava/lang/String;
    .param p5, "$qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p6, "$parameters"    # Lkotlin/jvm/functions/Function0;

    .line 55
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 56
    .local v0, "ownerEager":Landroidx/lifecycle/ViewModelStoreOwner;
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v2

    .line 60
    .local v2, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lorg/koin/viewmodel/BundleExtKt;->toExtras(Landroid/os/Bundle;Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    :cond_1
    move-object v4, v1

    .line 64
    move-object v1, p2

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-static {v1}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v6

    .line 58
    nop

    .line 59
    nop

    .line 63
    nop

    .line 60
    nop

    .line 61
    nop

    .line 64
    nop

    .line 62
    nop

    .line 57
    move-object v1, p3

    move-object v3, p4

    move-object v5, p5

    move-object v7, p6

    .end local p3    # "$clazz":Lkotlin/reflect/KClass;
    .end local p4    # "$key":Ljava/lang/String;
    .end local p5    # "$qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p6    # "$parameters":Lkotlin/jvm/functions/Function0;
    .local v1, "$clazz":Lkotlin/reflect/KClass;
    .local v3, "$key":Ljava/lang/String;
    .local v5, "$qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v7, "$parameters":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v1 .. v7}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    .line 65
    return-object p3
.end method
