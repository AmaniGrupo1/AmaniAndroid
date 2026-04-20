.class public final Lorg/koin/viewmodel/GetViewModelKt;
.super Ljava/lang/Object;
.source "GetViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetViewModel.kt\norg/koin/viewmodel/GetViewModelKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001am\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010j\u0004\u0018\u0001`\u0012H\u0007\u00a2\u0006\u0002\u0010\u0013\u001a.\u0010\u0014\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0008H\u0007\u001at\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0017\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00102\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00102\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "resolveViewModel",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "vmClass",
        "Lkotlin/reflect/KClass;",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "key",
        "",
        "extras",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;",
        "getViewModelKey",
        "className",
        "lazyResolveViewModel",
        "Lkotlin/Lazy;",
        "koin-core-viewmodel_release"
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
.method public static final getViewModelKey(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 66
    nop

    .line 67
    if-nez p1, :cond_3

    .line 68
    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 108
    move-object v1, p2

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$a$-let-GetViewModelKt$getViewModelKey$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-GetViewModelKt$getViewModelKey$1":I
    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_3
    move-object v0, p1

    .line 66
    :goto_0
    return-object v0
.end method

.method public static synthetic getViewModelKey$default(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 65
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    move-object p1, v0

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    move-object p2, v0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/koin/viewmodel/GetViewModelKt;->getViewModelKey(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final lazyResolveViewModel(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 9
    .param p0, "vmClass"    # Lkotlin/reflect/KClass;
    .param p1, "viewModelStore"    # Lkotlin/jvm/functions/Function0;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Lkotlin/jvm/functions/Function0;
    .param p4, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p5, "scope"    # Lorg/koin/core/scope/Scope;
    .param p6, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "vmClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/viewmodel/GetViewModelKt$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p0    # "vmClass":Lkotlin/reflect/KClass;
    .end local p1    # "viewModelStore":Lkotlin/jvm/functions/Function0;
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "extras":Lkotlin/jvm/functions/Function0;
    .end local p4    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p5    # "scope":Lorg/koin/core/scope/Scope;
    .end local p6    # "parameters":Lkotlin/jvm/functions/Function0;
    .local v2, "vmClass":Lkotlin/reflect/KClass;
    .local v3, "viewModelStore":Lkotlin/jvm/functions/Function0;
    .local v4, "key":Ljava/lang/String;
    .local v5, "extras":Lkotlin/jvm/functions/Function0;
    .local v6, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v7, "scope":Lorg/koin/core/scope/Scope;
    .local v8, "parameters":Lkotlin/jvm/functions/Function0;
    invoke-direct/range {v1 .. v8}, Lorg/koin/viewmodel/GetViewModelKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lazyResolveViewModel$default(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    .line 87
    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 90
    move-object p2, v0

    .line 87
    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    .line 92
    move-object p4, v0

    .line 87
    :cond_1
    and-int/lit8 p7, p7, 0x40

    if-eqz p7, :cond_2

    .line 94
    move-object p6, v0

    .line 87
    :cond_2
    invoke-static/range {p0 .. p6}, Lorg/koin/viewmodel/GetViewModelKt;->lazyResolveViewModel(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method static final lazyResolveViewModel$lambda$0(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 8
    .param p0, "$vmClass"    # Lkotlin/reflect/KClass;
    .param p1, "$viewModelStore"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$key"    # Ljava/lang/String;
    .param p3, "$extras"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p5, "$scope"    # Lorg/koin/core/scope/Scope;
    .param p6, "$parameters"    # Lkotlin/jvm/functions/Function0;

    .line 98
    nop

    .line 99
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/ViewModelStore;

    .line 100
    nop

    .line 101
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 97
    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p0    # "$vmClass":Lkotlin/reflect/KClass;
    .end local p2    # "$key":Ljava/lang/String;
    .end local p4    # "$qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p5    # "$scope":Lorg/koin/core/scope/Scope;
    .end local p6    # "$parameters":Lkotlin/jvm/functions/Function0;
    .local v1, "$vmClass":Lkotlin/reflect/KClass;
    .local v3, "$key":Ljava/lang/String;
    .local v5, "$qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v6, "$scope":Lorg/koin/core/scope/Scope;
    .local v7, "$parameters":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v1 .. v7}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    .line 105
    return-object p0
.end method

.method public static final resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 5
    .param p0, "vmClass"    # Lkotlin/reflect/KClass;
    .param p1, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;
    .param p4, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p5, "scope"    # Lorg/koin/core/scope/Scope;
    .param p6, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Landroidx/lifecycle/ViewModelStore;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "vmClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;

    invoke-direct {v0, p0, p5, p4, p6}, Lorg/koin/viewmodel/factory/KoinViewModelFactory;-><init>(Lkotlin/reflect/KClass;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .local v0, "factory":Lorg/koin/viewmodel/factory/KoinViewModelFactory;
    sget-object v1, Landroidx/lifecycle/ViewModelProvider;->Companion:Landroidx/lifecycle/ViewModelProvider$Companion;

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-virtual {v1, p1, v2, p3}, Landroidx/lifecycle/ViewModelProvider$Companion;->create(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v1

    .line 56
    .local v1, "provider":Landroidx/lifecycle/ViewModelProvider;
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2, p0}, Lorg/koin/mp/KoinPlatformTools;->getClassFullNameOrNull(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "className":Ljava/lang/String;
    invoke-static {p4, p2, v2}, Lorg/koin/viewmodel/GetViewModelKt;->getViewModelKey(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "vmKey":Ljava/lang/String;
    nop

    .line 59
    if-eqz v3, :cond_0

    invoke-virtual {v1, v3, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    .line 58
    :goto_0
    return-object v4
.end method

.method public static synthetic resolveViewModel$default(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;
    .locals 1

    .line 45
    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 48
    move-object p2, v0

    .line 45
    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    .line 50
    move-object p4, v0

    .line 45
    :cond_1
    and-int/lit8 p7, p7, 0x40

    if-eqz p7, :cond_2

    .line 52
    move-object p6, v0

    .line 45
    :cond_2
    invoke-static/range {p0 .. p6}, Lorg/koin/viewmodel/GetViewModelKt;->resolveViewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method
