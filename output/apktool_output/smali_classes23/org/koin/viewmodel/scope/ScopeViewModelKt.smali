.class public final Lorg/koin/viewmodel/scope/ScopeViewModelKt;
.super Ljava/lang/Object;
.source "ScopeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u00a8\u0006\u0003"
    }
    d2 = {
        "viewModelScope",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/component/KoinScopeComponent;",
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
.method public static final viewModelScope(Lorg/koin/core/component/KoinScopeComponent;)Lorg/koin/core/scope/Scope;
    .locals 9
    .param p0, "$this$viewModelScope"    # Lorg/koin/core/component/KoinScopeComponent;
    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p0, Landroidx/lifecycle/ViewModel;

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {p0}, Lorg/koin/core/component/KoinScopeComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    .line 62
    .local v0, "koin":Lorg/koin/core/Koin;
    invoke-virtual {v0}, Lorg/koin/core/Koin;->getOptionRegistry()Lorg/koin/core/registry/OptionRegistry;

    move-result-object v1

    invoke-static {v1}, Lorg/koin/core/option/KoinOptionKt;->hasViewModelScopeFactory(Lorg/koin/core/registry/OptionRegistry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is using viewModelScope() while you are using viewModelScopeFactory() option. Remove viewModelScope() usage to use ViewModel constructor injection with automatic scope creation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/koin/core/logger/Logger;->warn(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-static {}, Lorg/koin/viewmodel/scope/ViewModelScopeArchetypeKt;->getViewModelScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    move-object v3, p0

    .end local p0    # "$this$viewModelScope":Lorg/koin/core/component/KoinScopeComponent;
    .local v3, "$this$viewModelScope":Lorg/koin/core/component/KoinScopeComponent;
    invoke-static/range {v3 .. v8}, Lorg/koin/core/component/KoinScopeComponentKt;->createScope$default(Lorg/koin/core/component/KoinScopeComponent;Ljava/lang/String;Ljava/lang/Object;Lorg/koin/core/qualifier/TypeQualifier;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 66
    .local p0, "vmScope":Lorg/koin/core/scope/Scope;
    move-object v1, v3

    check-cast v1, Landroidx/lifecycle/ViewModel;

    new-instance v2, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;

    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->getKoin()Lorg/koin/core/Koin;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;-><init>(Ljava/lang/String;Lorg/koin/core/Koin;)V

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/AutoCloseable;)V

    .line 67
    return-object p0

    .line 58
    .end local v0    # "koin":Lorg/koin/core/Koin;
    .end local v3    # "$this$viewModelScope":Lorg/koin/core/component/KoinScopeComponent;
    .local p0, "$this$viewModelScope":Lorg/koin/core/component/KoinScopeComponent;
    :cond_1
    move-object v3, p0

    .end local p0    # "$this$viewModelScope":Lorg/koin/core/component/KoinScopeComponent;
    .restart local v3    # "$this$viewModelScope":Lorg/koin/core/component/KoinScopeComponent;
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should implement ViewModel() class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
