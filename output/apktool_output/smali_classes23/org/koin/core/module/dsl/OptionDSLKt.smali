.class public final Lorg/koin/core/module/dsl/OptionDSLKt;
.super Ljava/lang/Object;
.source "OptionDSL.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionDSL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionDSL.kt\norg/koin/core/module/dsl/OptionDSLKt\n*L\n1#1,212:1\n43#1,13:213\n*S KotlinDebug\n*F\n+ 1 OptionDSL.kt\norg/koin/core/module/dsl/OptionDSLKt\n*L\n68#1:213,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001aK\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0007\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00072\'\u0010\u0008\u001a#\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\t\u00a2\u0006\u0002\u0008\u0005H\u0087\u000c\u00f8\u0001\u0000\u001aK\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0007\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00072-\u0008\u0002\u0010\u0008\u001a\'\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\n\u0012\u0004\u0012\u0002H\u0001\u0018\u0001`\t\u00a2\u0006\u0002\u0008\u0005\u001a\u0016\u0010\u000b\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r\u001a\u0019\u0010\u000b\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u0003H\u0086\u0008\u001a\u001d\u0010\u000e\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00010\u0003H\u0086\u0008\u001a\u001d\u0010\u000f\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00010\u0003H\u0086\u0008\u001a \u0010\u0010\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u00032\u0010\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00130\u0012\u001a\u000e\u0010\u0014\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u0003\u001a6\u0010\u0015\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u001e\u0010\u0015\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u0001H\u0001\u0012\u0004\u0012\u00020\u00040\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0016*>\u0010\u0000\u001a\u0004\u0008\u0000\u0010\u0001\"\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0002\u0008\u00052\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0002\u0008\u0005\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "DefinitionOptions",
        "T",
        "Lkotlin/Function1;",
        "Lorg/koin/core/definition/BeanDefinition;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "withOptions",
        "Lorg/koin/core/definition/KoinDefinition;",
        "options",
        "Lorg/koin/core/module/dsl/DefinitionOptions;",
        "onOptions",
        "named",
        "name",
        "",
        "override",
        "bind",
        "binds",
        "classes",
        "",
        "Lkotlin/reflect/KClass;",
        "createdAtStart",
        "onClose",
        "Lorg/koin/core/definition/OnCloseCallback;",
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
.method public static final synthetic bind(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 4
    .param p0, "$this$bind"    # Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 153
    .local v0, "$i$f$bind":I
    invoke-virtual {p0}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/koin/core/definition/BeanDefinition;->setSecondaryTypes(Ljava/util/List;)V

    .line 154
    return-void
.end method

.method public static final binds(Lorg/koin/core/definition/BeanDefinition;Ljava/util/List;)V
    .locals 2
    .param p0, "$this$binds"    # Lorg/koin/core/definition/BeanDefinition;
    .param p1, "classes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/koin/core/definition/BeanDefinition;->setSecondaryTypes(Ljava/util/List;)V

    .line 171
    return-void
.end method

.method public static final createdAtStart(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .param p0, "$this$createdAtStart"    # Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/koin/core/definition/BeanDefinition;->set_createdAtStart(Z)V

    .line 189
    return-void
.end method

.method public static final synthetic named(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 4
    .param p0, "$this$named"    # Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 106
    .local v0, "$i$f$named":I
    new-instance v1, Lorg/koin/core/qualifier/TypeQualifier;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/reflect/KClass;)V

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {p0, v1}, Lorg/koin/core/definition/BeanDefinition;->setQualifier(Lorg/koin/core/qualifier/Qualifier;)V

    .line 107
    return-void
.end method

.method public static final named(Lorg/koin/core/definition/BeanDefinition;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$named"    # Lorg/koin/core/definition/BeanDefinition;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lorg/koin/core/qualifier/StringQualifier;

    invoke-direct {v0, p1}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {p0, v0}, Lorg/koin/core/definition/BeanDefinition;->setQualifier(Lorg/koin/core/qualifier/Qualifier;)V

    .line 89
    return-void
.end method

.method public static final onClose(Lorg/koin/core/definition/BeanDefinition;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$this$onClose"    # Lorg/koin/core/definition/BeanDefinition;
    .param p1, "onClose"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lorg/koin/core/definition/Callbacks;

    invoke-direct {v0, p1}, Lorg/koin/core/definition/Callbacks;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lorg/koin/core/definition/BeanDefinition;->setCallbacks(Lorg/koin/core/definition/Callbacks;)V

    .line 211
    return-void
.end method

.method public static final onOptions(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
    .locals 7
    .param p0, "$this$onOptions"    # Lorg/koin/core/definition/KoinDefinition;
    .param p1, "options"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_3

    .line 68
    move-object v0, p1

    .local v0, "options$iv":Lkotlin/jvm/functions/Function1;
    move-object v1, p0

    .local v1, "$this$withOptions$iv":Lorg/koin/core/definition/KoinDefinition;
    const/4 v2, 0x0

    .line 213
    .local v2, "$i$f$withOptions":I
    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v3

    .line 214
    .local v3, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    .line 215
    .local v4, "primary$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 217
    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v5

    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 219
    :cond_0
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v5

    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/koin/core/module/Module;->indexSecondaryTypes(Lorg/koin/core/instance/InstanceFactory;)V

    .line 222
    :cond_1
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->get_createdAtStart()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v5

    instance-of v5, v5, Lorg/koin/core/instance/SingleInstanceFactory;

    if-eqz v5, :cond_2

    .line 223
    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v5

    invoke-virtual {v1}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v6

    check-cast v6, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-virtual {v5, v6}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 225
    :cond_2
    nop

    .line 70
    .end local v0    # "options$iv":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$this$withOptions$iv":Lorg/koin/core/definition/KoinDefinition;
    .end local v2    # "$i$f$withOptions":I
    .end local v3    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v4    # "primary$iv":Lorg/koin/core/qualifier/Qualifier;
    :cond_3
    return-object p0
.end method

.method public static synthetic onOptions$default(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 0

    .line 64
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 65
    const/4 p1, 0x0

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lorg/koin/core/module/dsl/OptionDSLKt;->onOptions(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic override(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 2
    .param p0, "$this$override"    # Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    .local v0, "$i$f$override":I
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/koin/core/definition/BeanDefinition;->setAllowOverride(Ljava/lang/Boolean;)V

    .line 133
    return-void
.end method

.method public static final withOptions(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
    .locals 5
    .param p0, "$this$withOptions"    # Lorg/koin/core/definition/KoinDefinition;
    .param p1, "options"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/module/OptionDslMarker;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$withOptions":I
    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v1

    .line 44
    .local v1, "def":Lorg/koin/core/definition/BeanDefinition;
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 45
    .local v2, "primary":Lorg/koin/core/qualifier/Qualifier;
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 49
    :cond_0
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/module/Module;->indexSecondaryTypes(Lorg/koin/core/instance/InstanceFactory;)V

    .line 52
    :cond_1
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v3

    instance-of v3, v3, Lorg/koin/core/instance/SingleInstanceFactory;

    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    invoke-virtual {p0}, Lorg/koin/core/definition/KoinDefinition;->getFactory()Lorg/koin/core/instance/InstanceFactory;

    move-result-object v4

    check-cast v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-virtual {v3, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 55
    :cond_2
    return-object p0
.end method
