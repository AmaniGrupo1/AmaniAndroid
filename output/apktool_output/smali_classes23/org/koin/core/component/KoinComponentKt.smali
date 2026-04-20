.class public final Lorg/koin/core/component/KoinComponentKt;
.super Ljava/lang/Object;
.source "KoinComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 Koin.kt\norg/koin/core/Koin\n*L\n1#1,64:1\n153#2:65\n153#2:67\n133#3:66\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n46#1:65\n48#1:67\n48#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aE\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0016\u0008\n\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001aP\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u000c\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0016\u0008\n\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "get",
        "T",
        "",
        "Lorg/koin/core/component/KoinComponent;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "inject",
        "Lkotlin/Lazy;",
        "mode",
        "Lkotlin/LazyThreadSafetyMode;",
        "koin-core"
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
.method public static final synthetic get(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 11
    .param p0, "$this$get"    # Lorg/koin/core/component/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/component/KoinComponent;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$get":I
    instance-of v1, p0, Lorg/koin/core/component/KoinScopeComponent;

    const-string v2, "T"

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 46
    move-object v1, p0

    check-cast v1, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v1}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/scope/Scope;
    move-object v4, p2

    .local v4, "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object v5, p1

    .local v5, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v6, 0x0

    .line 65
    .local v6, "$i$f$get":I
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "$i$f$get":I
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/Koin;
    move-object v4, p2

    .restart local v4    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object v5, p1

    .restart local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v6, 0x0

    .line 66
    .restart local v6    # "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v7

    .local v7, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    move-object v8, v4

    .local v8, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v9, v5

    .local v9, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v10, 0x0

    .line 67
    .local v10, "$i$f$get":I
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v7, v2, v9, v8}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    .end local v7    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v8    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "$i$f$get":I
    move-object v1, v2

    .line 45
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v4    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "$i$f$get":I
    :goto_0
    return-object v1
.end method

.method public static synthetic get$default(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$get_u24default"    # Lorg/koin/core/component/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 41
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 42
    const/4 p1, 0x0

    .line 41
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 43
    const/4 p2, 0x0

    .line 41
    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 45
    .local p3, "$i$f$get":I
    instance-of p4, p0, Lorg/koin/core/component/KoinScopeComponent;

    const-string v0, "T"

    const/4 v1, 0x4

    if-eqz p4, :cond_2

    .line 46
    move-object p4, p0

    check-cast p4, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {p4}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p4

    .local p4, "this_$iv":Lorg/koin/core/scope/Scope;
    move-object v2, p2

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object v3, p1

    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v4, 0x0

    .line 65
    .local v4, "$i$f$get":I
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p4, v0, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p4

    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    .end local p4    # "this_$iv":Lorg/koin/core/scope/Scope;
    goto :goto_0

    .line 48
    :cond_2
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object p4

    .local p4, "this_$iv":Lorg/koin/core/Koin;
    move-object v2, p2

    .restart local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object v3, p1

    .restart local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v4, 0x0

    .line 66
    .restart local v4    # "$i$f$get":I
    invoke-virtual {p4}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    move-object v6, v2

    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v7, v3

    .local v7, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v8, 0x0

    .line 67
    .local v8, "$i$f$get":I
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v5, v0, v7, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "$i$f$get":I
    move-object p4, v0

    .line 45
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    .end local p4    # "this_$iv":Lorg/koin/core/Koin;
    :goto_0
    return-object p4
.end method

.method public static final synthetic inject(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .param p0, "$this$inject"    # Lorg/koin/core/component/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "mode"    # Lkotlin/LazyThreadSafetyMode;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/component/KoinComponent;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/LazyThreadSafetyMode;",
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

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$inject":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/koin/core/component/KoinComponentKt$inject$1;

    invoke-direct {v1, p0, p1, p3}, Lorg/koin/core/component/KoinComponentKt$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic inject$default(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 0
    .param p0, "$this$inject_u24default"    # Lorg/koin/core/component/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "mode"    # Lkotlin/LazyThreadSafetyMode;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 58
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 59
    const/4 p1, 0x0

    .line 58
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 60
    sget-object p5, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p5}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 58
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 61
    const/4 p3, 0x0

    .line 58
    :cond_2
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "mode"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 63
    .local p4, "$i$f$inject":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p5, Lorg/koin/core/component/KoinComponentKt$inject$1;

    invoke-direct {p5, p0, p1, p3}, Lorg/koin/core/component/KoinComponentKt$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    return-object p5
.end method
