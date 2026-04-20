.class public final Lorg/koin/viewmodel/factory/AndroidParametersHolder;
.super Lorg/koin/core/parameter/ParametersHolder;
.source "AndroidParametersHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidParametersHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidParametersHolder.kt\norg/koin/viewmodel/factory/AndroidParametersHolder\n*L\n1#1,43:1\n39#1,3:44\n39#1,3:47\n*S KotlinDebug\n*F\n+ 1 AndroidParametersHolder.kt\norg/koin/viewmodel/factory/AndroidParametersHolder\n*L\n31#1:44,3\n35#1:47,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0016\u0008\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fJ!\u0010\u0010\u001a\u0004\u0018\u0001H\n\"\u0004\u0008\u0000\u0010\n2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0016\u00a2\u0006\u0002\u0010\u0011J.\u0010\u0012\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0003H\u0082\u0008\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/koin/viewmodel/factory/AndroidParametersHolder;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "initialValues",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "extras",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;)V",
        "elementAt",
        "T",
        "i",
        "",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "(ILkotlin/reflect/KClass;)Ljava/lang/Object;",
        "getOrNull",
        "(Lkotlin/reflect/KClass;)Ljava/lang/Object;",
        "createSavedStateHandleOrElse",
        "block",
        "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "koin-core-viewmodel_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final extras:Landroidx/lifecycle/viewmodel/CreationExtras;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;)V
    .locals 3
    .param p1, "initialValues"    # Lkotlin/jvm/functions/Function0;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")V"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    nop

    .line 28
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/parameter/ParametersHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/koin/core/parameter/ParametersHolder;->getValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 25
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lorg/koin/core/parameter/ParametersHolder;-><init>(Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    iput-object p2, p0, Lorg/koin/viewmodel/factory/AndroidParametersHolder;->extras:Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/koin/viewmodel/factory/AndroidParametersHolder;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 28
    return-void
.end method

.method private final createSavedStateHandleOrElse(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    .local v0, "$i$f$createSavedStateHandleOrElse":I
    const-class v1, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lorg/koin/viewmodel/factory/AndroidParametersHolder;->extras:Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {v1}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 39
    :goto_0
    return-object v1
.end method


# virtual methods
.method public elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 5
    .param p1, "i"    # I
    .param p2, "clazz"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/reflect/KClass<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p2

    .local v0, "clazz$iv":Lkotlin/reflect/KClass;
    move-object v1, p0

    .local v1, "this_$iv":Lorg/koin/viewmodel/factory/AndroidParametersHolder;
    const/4 v2, 0x0

    .line 44
    .local v2, "$i$f$createSavedStateHandleOrElse":I
    const-class v3, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, v1, Lorg/koin/viewmodel/factory/AndroidParametersHolder;->extras:Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {v3}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    check-cast v3, Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-createSavedStateHandleOrElse-AndroidParametersHolder$elementAt$1":I
    invoke-super {p0, p1, p2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 46
    .end local v3    # "$i$a$-createSavedStateHandleOrElse-AndroidParametersHolder$elementAt$1":I
    :goto_0
    nop

    .line 44
    nop

    .line 31
    .end local v0    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v1    # "this_$iv":Lorg/koin/viewmodel/factory/AndroidParametersHolder;
    .end local v2    # "$i$f$createSavedStateHandleOrElse":I
    return-object v3
.end method

.method public getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 5
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v0, p1

    .local v0, "clazz$iv":Lkotlin/reflect/KClass;
    move-object v1, p0

    .local v1, "this_$iv":Lorg/koin/viewmodel/factory/AndroidParametersHolder;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$f$createSavedStateHandleOrElse":I
    const-class v3, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, v1, Lorg/koin/viewmodel/factory/AndroidParametersHolder;->extras:Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {v3}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    check-cast v3, Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 35
    .local v3, "$i$a$-createSavedStateHandleOrElse-AndroidParametersHolder$getOrNull$1":I
    invoke-super {p0, p1}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 49
    .end local v3    # "$i$a$-createSavedStateHandleOrElse-AndroidParametersHolder$getOrNull$1":I
    :goto_0
    nop

    .line 47
    nop

    .line 35
    .end local v0    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v1    # "this_$iv":Lorg/koin/viewmodel/factory/AndroidParametersHolder;
    .end local v2    # "$i$f$createSavedStateHandleOrElse":I
    return-object v3
.end method
