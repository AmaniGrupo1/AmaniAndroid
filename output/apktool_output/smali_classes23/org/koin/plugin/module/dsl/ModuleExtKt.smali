.class public final Lorg/koin/plugin/module/dsl/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/plugin/module/dsl/ModuleExtKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u001ag\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00020\nj\u0008\u0012\u0004\u0012\u0002H\u0002`\u000e\u00a2\u0006\u0002\u0008\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u001a]\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00020\nj\u0008\u0012\u0004\u0012\u0002H\u0002`\u000e\u00a2\u0006\u0002\u0008\r\u001a]\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00132\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00020\nj\u0008\u0012\u0004\u0012\u0002H\u0002`\u000e\u00a2\u0006\u0002\u0008\r\u001a]\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00132\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00020\nj\u0008\u0012\u0004\u0012\u0002H\u0002`\u000e\u00a2\u0006\u0002\u0008\r\u001a+\u0010\u0014\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00150\u0017\u00a2\u0006\u0002\u0008\r\u001a\u0012\u0010\u0018\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004\u001a\u001e\u0010\u001a\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006\u001a*\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u0001\"\u0008\u0008\u0000\u0010\u001c*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00012\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u0006\u001a\u007f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00020\nj\u0008\u0012\u0004\u0012\u0002H\u0002`\u000e\u00a2\u0006\u0002\u0008\r2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u00a8\u0006\""
    }
    d2 = {
        "buildSingle",
        "Lorg/koin/core/definition/KoinDefinition;",
        "T",
        "",
        "Lorg/koin/core/module/Module;",
        "kclass",
        "Lkotlin/reflect/KClass;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "definition",
        "Lkotlin/Function2;",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lkotlin/ExtensionFunctionType;",
        "Lorg/koin/core/definition/Definition;",
        "createdAtStart",
        "",
        "buildFactory",
        "buildScoped",
        "Lorg/koin/dsl/ScopeDSL;",
        "scope",
        "",
        "scopeSet",
        "Lkotlin/Function1;",
        "includes",
        "module",
        "typeQualifier",
        "bind",
        "S",
        "clazz",
        "createDefinition",
        "scopeQualifier",
        "factoryKind",
        "Lorg/koin/core/definition/Kind;",
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
.method public static final bind(Lorg/koin/core/definition/KoinDefinition;Lkotlin/reflect/KClass;)Lorg/koin/core/definition/KoinDefinition;
    .locals 2
    .param p0, "$this$bind"    # Lorg/koin/core/definition/KoinDefinition;
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/KoinDefinition<",
            "*>;",
            "Lkotlin/reflect/KClass<",
            "TS;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/definition/BeanDefinition;->setSecondaryTypes(Ljava/util/List;)V

    .line 89
    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v0

    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexSecondaryTypes(Lorg/koin/core/instance/InstanceFactory;)V

    .line 90
    return-object p0
.end method

.method public static final buildFactory(Lorg/koin/core/module/Module;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 10
    .param p0, "$this$buildFactory"    # Lorg/koin/core/module/Module;
    .param p1, "kclass"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/module/Module;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    .end local p0    # "$this$buildFactory":Lorg/koin/core/module/Module;
    .end local p1    # "kclass":Lkotlin/reflect/KClass;
    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p3    # "definition":Lkotlin/jvm/functions/Function2;
    .local v1, "kclass":Lkotlin/reflect/KClass;
    .local v2, "definition":Lkotlin/jvm/functions/Function2;
    .local v3, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v6, "$this$buildFactory":Lorg/koin/core/module/Module;
    invoke-static/range {v1 .. v9}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->createDefinition$default(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static final buildFactory(Lorg/koin/dsl/ScopeDSL;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 10
    .param p0, "$this$buildFactory"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "kclass"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v6

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    .end local p1    # "kclass":Lkotlin/reflect/KClass;
    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p3    # "definition":Lkotlin/jvm/functions/Function2;
    .local v1, "kclass":Lkotlin/reflect/KClass;
    .local v2, "definition":Lkotlin/jvm/functions/Function2;
    .local v3, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    invoke-static/range {v1 .. v9}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->createDefinition$default(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic buildFactory$default(Lorg/koin/core/module/Module;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 0

    .line 41
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->buildFactory(Lorg/koin/core/module/Module;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildFactory$default(Lorg/koin/dsl/ScopeDSL;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 0

    .line 56
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->buildFactory(Lorg/koin/dsl/ScopeDSL;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static final buildScoped(Lorg/koin/dsl/ScopeDSL;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 10
    .param p0, "$this$buildScoped"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "kclass"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    sget-object v5, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v6

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    .end local p1    # "kclass":Lkotlin/reflect/KClass;
    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p3    # "definition":Lkotlin/jvm/functions/Function2;
    .local v1, "kclass":Lkotlin/reflect/KClass;
    .local v2, "definition":Lkotlin/jvm/functions/Function2;
    .local v3, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    invoke-static/range {v1 .. v9}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->createDefinition$default(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic buildScoped$default(Lorg/koin/dsl/ScopeDSL;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 0

    .line 48
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->buildScoped(Lorg/koin/dsl/ScopeDSL;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static final buildSingle(Lorg/koin/core/module/Module;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Z)Lorg/koin/core/definition/KoinDefinition;
    .locals 10
    .param p0, "$this$buildSingle"    # Lorg/koin/core/module/Module;
    .param p1, "kclass"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .param p4, "createdAtStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/module/Module;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;Z)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v5, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v6, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move v7, p4

    .end local p0    # "$this$buildSingle":Lorg/koin/core/module/Module;
    .end local p1    # "kclass":Lkotlin/reflect/KClass;
    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .end local p3    # "definition":Lkotlin/jvm/functions/Function2;
    .end local p4    # "createdAtStart":Z
    .local v1, "kclass":Lkotlin/reflect/KClass;
    .local v2, "definition":Lkotlin/jvm/functions/Function2;
    .local v3, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v6, "$this$buildSingle":Lorg/koin/core/module/Module;
    .local v7, "createdAtStart":Z
    invoke-static/range {v1 .. v9}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->createDefinition$default(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildSingle$default(Lorg/koin/core/module/Module;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 0

    .line 28
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 30
    const/4 p2, 0x0

    .line 28
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 32
    const/4 p4, 0x0

    .line 28
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->buildSingle(Lorg/koin/core/module/Module;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Z)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static final createDefinition(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;Z)Lorg/koin/core/definition/KoinDefinition;
    .locals 11
    .param p0, "kclass"    # Lkotlin/reflect/KClass;
    .param p1, "definition"    # Lkotlin/jvm/functions/Function2;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p4, "factoryKind"    # Lorg/koin/core/definition/Kind;
    .param p5, "module"    # Lorg/koin/core/module/Module;
    .param p6, "createdAtStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/definition/Kind;",
            "Lorg/koin/core/module/Module;",
            "Z)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v10, p5

    const-string v0, "kclass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryKind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lorg/koin/core/definition/BeanDefinition;

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 104
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .local v0, "def":Lorg/koin/core/definition/BeanDefinition;
    sget-object v1, Lorg/koin/plugin/module/dsl/ModuleExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lorg/koin/core/definition/Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 115
    :pswitch_0
    new-instance v1, Lorg/koin/core/instance/ScopedInstanceFactory;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lorg/koin/core/instance/InstanceFactory;

    goto :goto_0

    .line 114
    :pswitch_1
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    check-cast v1, Lorg/koin/core/instance/InstanceFactory;

    goto :goto_0

    .line 113
    :pswitch_2
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    check-cast v1, Lorg/koin/core/instance/InstanceFactory;

    .line 112
    :goto_0
    nop

    .line 117
    .local v1, "factory":Lorg/koin/core/instance/InstanceFactory;
    invoke-virtual {v10, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 120
    if-eqz p6, :cond_0

    sget-object v2, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    if-ne p4, v2, :cond_0

    instance-of v2, v1, Lorg/koin/core/instance/SingleInstanceFactory;

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v10}, Lorg/koin/core/module/Module;->getEagerInstances()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v2, v10, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic createDefinition$default(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 7

    .line 94
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 97
    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    .line 94
    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1

    .line 98
    sget-object p2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {p2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lorg/koin/core/qualifier/Qualifier;

    move-object v3, p3

    goto :goto_1

    .line 94
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p7, 0x40

    if-eqz p2, :cond_2

    .line 101
    const/4 p6, 0x0

    move v6, p6

    goto :goto_2

    .line 94
    :cond_2
    move v6, p6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/koin/plugin/module/dsl/ModuleExtKt;->createDefinition(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/definition/Kind;Lorg/koin/core/module/Module;Z)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static final includes(Lorg/koin/core/module/Module;Lorg/koin/core/module/Module;)V
    .locals 1
    .param p0, "$this$includes"    # Lorg/koin/core/module/Module;
    .param p1, "module"    # Lorg/koin/core/module/Module;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/koin/core/module/Module;->includes(Ljava/util/Collection;)V

    .line 74
    return-void
.end method

.method public static final scope(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$this$scope"    # Lorg/koin/core/module/Module;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "scopeSet"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lorg/koin/dsl/ScopeDSL;

    invoke-direct {v0, p1, p0}, Lorg/koin/dsl/ScopeDSL;-><init>(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/module/Module;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static final typeQualifier(Lkotlin/reflect/KClass;)Lorg/koin/core/qualifier/Qualifier;
    .locals 1
    .param p0, "kclass"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lorg/koin/core/qualifier/Qualifier;"
        }
    .end annotation

    const-string v0, "kclass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lorg/koin/core/qualifier/TypeQualifier;

    invoke-direct {v0, p0}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/reflect/KClass;)V

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method
