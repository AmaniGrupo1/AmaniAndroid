.class public final Lorg/koin/android/ext/android/ComponentCallbackExtKt;
.super Ljava/lang/Object;
.source "ComponentCallbackExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentCallbackExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,58:1\n153#2:59\n*S KotlinDebug\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n56#1:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001aP\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\n\u0008\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00022\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0016\u0008\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cj\u0004\u0018\u0001`\u000eH\u0086\u0008\u00f8\u0001\u0000\u001aE\u0010\u000f\u001a\u0002H\u0005\"\n\u0008\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00022\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0016\u0008\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cj\u0004\u0018\u0001`\u000eH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "getKoin",
        "Lorg/koin/core/Koin;",
        "Landroid/content/ComponentCallbacks;",
        "inject",
        "Lkotlin/Lazy;",
        "T",
        "",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "mode",
        "Lkotlin/LazyThreadSafetyMode;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "get",
        "(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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
.method public static final synthetic get(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$get"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentCallbacks;",
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

    .line 56
    .local v0, "$i$f$get":I
    invoke-static {p0}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/scope/Scope;
    move-object v2, p2

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object v3, p1

    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$f$get":I
    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .end local v1    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    return-object v1
.end method

.method public static synthetic get$default(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$get_u24default"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 52
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 53
    const/4 p1, 0x0

    .line 52
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 54
    const/4 p2, 0x0

    .line 52
    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 56
    .local p3, "$i$f$get":I
    invoke-static {p0}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object p4

    .local p4, "this_$iv":Lorg/koin/core/scope/Scope;
    move-object v0, p2

    .local v0, "parameters$iv":Lkotlin/jvm/functions/Function0;
    move-object v1, p1

    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$f$get":I
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p4, v3, v1, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p4

    .line 56
    .end local v0    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "$i$f$get":I
    .end local p4    # "this_$iv":Lorg/koin/core/scope/Scope;
    return-object p4
.end method

.method public static final getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;
    .locals 1
    .param p0, "$this$getKoin"    # Landroid/content/ComponentCallbacks;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    nop

    .line 30
    instance-of v0, p0, Lorg/koin/core/component/KoinComponent;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    invoke-interface {v0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v0}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0
.end method

.method public static final synthetic inject(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .param p0, "$this$inject"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "mode"    # Lkotlin/LazyThreadSafetyMode;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentCallbacks;",
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

    .line 44
    .local v0, "$i$f$inject":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;

    invoke-direct {v1, p0, p1, p3}, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic inject$default(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 0
    .param p0, "$this$inject_u24default"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "mode"    # Lkotlin/LazyThreadSafetyMode;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 40
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 41
    const/4 p1, 0x0

    .line 40
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 42
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 40
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 43
    const/4 p3, 0x0

    .line 40
    :cond_2
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "mode"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 44
    .local p4, "$i$f$inject":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p5, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;

    invoke-direct {p5, p0, p1, p3}, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    return-object p5
.end method
