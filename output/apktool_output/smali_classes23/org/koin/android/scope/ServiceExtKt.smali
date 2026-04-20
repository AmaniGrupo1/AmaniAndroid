.class public final Lorg/koin/android/scope/ServiceExtKt;
.super Ljava/lang/Object;
.source "ServiceExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\u0010\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006*\u00020\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007\u001a\u000e\u0010\n\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "createServiceScope",
        "Lorg/koin/core/scope/Scope;",
        "Landroid/app/Service;",
        "destroyServiceScope",
        "",
        "serviceScope",
        "Lkotlin/Lazy;",
        "createScope",
        "source",
        "",
        "getScopeOrNull",
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
.method public static final createScope(Landroid/app/Service;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 8
    .param p0, "$this$createScope"    # Landroid/app/Service;
    .param p1, "source"    # Ljava/lang/Object;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v1

    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeName(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    .end local p1    # "source":Ljava/lang/Object;
    .local v4, "source":Ljava/lang/Object;
    invoke-static/range {v1 .. v7}, Lorg/koin/core/Koin;->createScope$default(Lorg/koin/core/Koin;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;Lorg/koin/core/qualifier/TypeQualifier;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic createScope$default(Landroid/app/Service;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    .line 48
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/android/scope/ServiceExtKt;->createScope(Landroid/app/Service;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static final createServiceScope(Landroid/app/Service;)Lorg/koin/core/scope/Scope;
    .locals 8
    .param p0, "$this$createServiceScope"    # Landroid/app/Service;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p0, Lorg/koin/android/scope/AndroidScopeComponent;

    if-eqz v0, :cond_1

    .line 29
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v1

    .line 31
    .local v1, "koin":Lorg/koin/core/Koin;
    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/koin/core/Koin;->getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeName(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    .end local p0    # "$this$createServiceScope":Landroid/app/Service;
    .local v4, "$this$createServiceScope":Landroid/app/Service;
    invoke-static/range {v1 .. v7}, Lorg/koin/core/Koin;->createScope$default(Lorg/koin/core/Koin;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;Lorg/koin/core/qualifier/TypeQualifier;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    goto :goto_0

    .end local v4    # "$this$createServiceScope":Landroid/app/Service;
    .restart local p0    # "$this$createServiceScope":Landroid/app/Service;
    :cond_0
    move-object v4, p0

    .line 30
    .end local p0    # "$this$createServiceScope":Landroid/app/Service;
    .restart local v4    # "$this$createServiceScope":Landroid/app/Service;
    :goto_0
    nop

    .line 32
    .local v0, "scope":Lorg/koin/core/scope/Scope;
    return-object v0

    .line 26
    .end local v0    # "scope":Lorg/koin/core/scope/Scope;
    .end local v1    # "koin":Lorg/koin/core/Koin;
    .end local v4    # "$this$createServiceScope":Landroid/app/Service;
    .restart local p0    # "$this$createServiceScope":Landroid/app/Service;
    :cond_1
    move-object v4, p0

    .end local p0    # "$this$createServiceScope":Landroid/app/Service;
    .restart local v4    # "$this$createServiceScope":Landroid/app/Service;
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    const-string v0, "Service should implement AndroidScopeComponent"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final destroyServiceScope(Landroid/app/Service;)V
    .locals 2
    .param p0, "$this$destroyServiceScope"    # Landroid/app/Service;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p0, Lorg/koin/android/scope/AndroidScopeComponent;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p0

    check-cast v0, Lorg/koin/android/scope/AndroidScopeComponent;

    invoke-interface {v0}, Lorg/koin/android/scope/AndroidScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->close()V

    .line 40
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    const-string v1, "Service should implement AndroidScopeComponent"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getScopeOrNull(Landroid/app/Service;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0, "$this$getScopeOrNull"    # Landroid/app/Service;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/Koin;->getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static final serviceScope(Landroid/app/Service;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$this$serviceScope"    # Landroid/app/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Service;",
            ")",
            "Lkotlin/Lazy<",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/koin/android/scope/ServiceExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/koin/android/scope/ServiceExtKt$$ExternalSyntheticLambda0;-><init>(Landroid/app/Service;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method static final serviceScope$lambda$0(Landroid/app/Service;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0, "$this_serviceScope"    # Landroid/app/Service;

    .line 42
    invoke-static {p0}, Lorg/koin/android/scope/ServiceExtKt;->createServiceScope(Landroid/app/Service;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method
