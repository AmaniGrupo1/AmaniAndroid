.class public final Lorg/koin/androidx/fragment/android/ActivityExtKt;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityExt.kt\norg/koin/androidx/fragment/android/ActivityExtKt\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,50:1\n52#2,5:51\n153#3:56\n*S KotlinDebug\n*F\n+ 1 ActivityExt.kt\norg/koin/androidx/fragment/android/ActivityExtKt\n*L\n31#1:51,5\n31#1:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a;\u0010\u0005\u001a\u00020\u0006\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0008*\u00020\u00062\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0086\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "setupKoinFragmentFactory",
        "",
        "Landroidx/fragment/app/FragmentActivity;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "replace",
        "Landroidx/fragment/app/FragmentTransaction;",
        "F",
        "Landroidx/fragment/app/Fragment;",
        "containerViewId",
        "",
        "args",
        "Landroid/os/Bundle;",
        "tag",
        "",
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
.method public static final synthetic replace(Landroidx/fragment/app/FragmentTransaction;ILandroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p0, "$this$replace"    # Landroidx/fragment/app/FragmentTransaction;
    .param p1, "containerViewId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/fragment/app/FragmentTransaction;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    .local v0, "$i$f$replace":I
    const/4 v1, 0x4

    const-string v2, "F"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/fragment/app/Fragment;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "replace(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/FragmentTransaction;

    return-object v1
.end method

.method public static synthetic replace$default(Landroidx/fragment/app/FragmentTransaction;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .param p0, "$this$replace_u24default"    # Landroidx/fragment/app/FragmentTransaction;
    .param p1, "containerViewId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "tag"    # Ljava/lang/String;

    .line 44
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 46
    const/4 p2, 0x0

    .line 44
    :cond_0
    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_1

    .line 47
    const/4 p3, 0x0

    .line 44
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 49
    .local p4, "$i$f$replace":I
    const-string v0, "F"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p5, Landroidx/fragment/app/Fragment;

    move-object v0, p5

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, p5, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p5

    const-string v0, "replace(...)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p5

    check-cast v0, Landroidx/fragment/app/FragmentTransaction;

    return-object p5
.end method

.method public static final setupKoinFragmentFactory(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;)V
    .locals 10
    .param p0, "$this$setupKoinFragmentFactory"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    .line 51
    .local v1, "$this$get_u24default$iv":Landroid/content/ComponentCallbacks;
    nop

    .line 52
    const/4 v2, 0x0

    .line 51
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 53
    const/4 v3, 0x0

    .line 51
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 55
    .local v4, "$i$f$get":I
    invoke-static {v1}, Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    move-object v6, v3

    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v7, v2

    .local v7, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v8, 0x0

    .line 56
    .local v8, "$i$f$get":I
    const-class v9, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v5, v9, v7, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 55
    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "$i$f$get":I
    nop

    .end local v1    # "$this$get_u24default$iv":Landroid/content/ComponentCallbacks;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$get":I
    check-cast v5, Landroidx/fragment/app/FragmentFactory;

    .line 31
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;

    invoke-direct {v1, p1}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;-><init>(Lorg/koin/core/scope/Scope;)V

    check-cast v1, Landroidx/fragment/app/FragmentFactory;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    .line 35
    :goto_0
    return-void
.end method

.method public static synthetic setupKoinFragmentFactory$default(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)V
    .locals 0

    .line 29
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/androidx/fragment/android/ActivityExtKt;->setupKoinFragmentFactory(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;)V

    return-void
.end method
