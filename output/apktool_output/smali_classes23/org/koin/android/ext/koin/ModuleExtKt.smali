.class public final Lorg/koin/android/ext/koin/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleExt.kt\norg/koin/android/ext/koin/ModuleExtKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,47:1\n149#2,5:48\n149#2,5:53\n*S KotlinDebug\n*F\n+ 1 ModuleExt.kt\norg/koin/android/ext/koin/ModuleExtKt\n*L\n32#1:48,5\n43#1:53,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "ERROR_MSG",
        "",
        "androidContext",
        "Landroid/content/Context;",
        "Lorg/koin/core/scope/Scope;",
        "androidApplication",
        "Landroid/app/Application;",
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


# static fields
.field public static final ERROR_MSG:Ljava/lang/String; = "Please use androidContext() function in your KoinApplication configuration."


# direct methods
.method public static final androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;
    .locals 5
    .param p0, "$this$androidApplication"    # Lorg/koin/core/scope/Scope;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    move-object v0, p0

    .line 53
    .local v0, "$this$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 54
    const/4 v1, 0x0

    .line 53
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 55
    const/4 v2, 0x0

    .line 53
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$f$get":I
    :try_start_0
    const-class v4, Landroid/app/Application;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .end local v0    # "$this$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroid/app/Application;
    :try_end_0
    .catch Lorg/koin/core/error/NoDefinitionFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object v4

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/koin/core/error/NoDefinitionFoundException;
    new-instance v1, Lorg/koin/android/error/MissingAndroidContextException;

    const-string v2, "Can\'t resolve Application instance. Please use androidContext() function in your KoinApplication configuration."

    invoke-direct {v1, v2}, Lorg/koin/android/error/MissingAndroidContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;
    .locals 5
    .param p0, "$this$androidContext"    # Lorg/koin/core/scope/Scope;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 32
    move-object v0, p0

    .line 48
    .local v0, "$this$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 49
    const/4 v1, 0x0

    .line 48
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 50
    const/4 v2, 0x0

    .line 48
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 52
    .local v3, "$i$f$get":I
    :try_start_0
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .end local v0    # "$this$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroid/content/Context;
    :try_end_0
    .catch Lorg/koin/core/error/NoDefinitionFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v4

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/koin/core/error/NoDefinitionFoundException;
    new-instance v1, Lorg/koin/android/error/MissingAndroidContextException;

    const-string v2, "Can\'t resolve Context instance. Please use androidContext() function in your KoinApplication configuration."

    invoke-direct {v1, v2}, Lorg/koin/android/error/MissingAndroidContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
