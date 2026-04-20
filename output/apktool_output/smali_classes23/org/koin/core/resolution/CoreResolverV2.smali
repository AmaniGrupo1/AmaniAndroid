.class public final Lorg/koin/core/resolution/CoreResolverV2;
.super Ljava/lang/Object;
.source "CoreResolverV2.kt"

# interfaces
.implements Lorg/koin/core/resolution/InstanceResolver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreResolverV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreResolverV2.kt\norg/koin/core/resolution/CoreResolverV2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n145#1:170\n146#1,8:172\n154#1,3:184\n126#1,4:187\n134#1,7:191\n134#1,7:199\n1#2:171\n1#2:198\n1586#3:180\n1661#3,3:181\n1586#3:206\n1661#3,3:207\n*S KotlinDebug\n*F\n+ 1 CoreResolverV2.kt\norg/koin/core/resolution/CoreResolverV2\n*L\n43#1:170\n43#1:172,8\n43#1:184,3\n47#1:187,4\n48#1:191,7\n113#1:199,7\n43#1:171\n43#1:180\n43#1:181,3\n153#1:206\n153#1:207,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J#\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J%\u0010\u0016\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J%\u0010\u0017\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J%\u0010\u0019\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u001a\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J%\u0010\u001c\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J%\u0010\u001d\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u001e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u001e\u0010\u001f\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0018\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010 J&\u0010!\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010\u0015J$\u0010\"\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010\u0015J%\u0010#\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006$"
    }
    d2 = {
        "Lorg/koin/core/resolution/CoreResolverV2;",
        "Lorg/koin/core/resolution/InstanceResolver;",
        "_koin",
        "Lorg/koin/core/Koin;",
        "<init>",
        "(Lorg/koin/core/Koin;)V",
        "extendedResolution",
        "Ljava/util/ArrayList;",
        "Lorg/koin/core/resolution/ResolutionExtension;",
        "Lkotlin/collections/ArrayList;",
        "getExtendedResolution",
        "()Ljava/util/ArrayList;",
        "addResolutionExtension",
        "",
        "resolutionExtension",
        "resolveFromContext",
        "T",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "instanceContext",
        "Lorg/koin/core/instance/ResolutionContext;",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;",
        "resolveFromContextOrNull",
        "resolveFromRegistry",
        "ctx",
        "resolveDirectDefinition",
        "resolveFromScopeArchetype",
        "Lorg/koin/core/instance/InstanceFactory;",
        "resolveFromScopeSource",
        "resolveFromLinkedScopes",
        "findDefinitionInScope",
        "resolveFromInjectedParameters",
        "(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;",
        "resolveFromStackedParameters",
        "throwNoDefinitionFound",
        "resolveInExtensions",
        "koin-core"
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
.field private final _koin:Lorg/koin/core/Koin;

.field private final extendedResolution:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/koin/core/resolution/ResolutionExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1
    .param p1, "_koin"    # Lorg/koin/core/Koin;

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/koin/core/resolution/CoreResolverV2;->_koin:Lorg/koin/core/Koin;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/koin/core/resolution/CoreResolverV2;->extendedResolution:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private final findDefinitionInScope(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Lorg/koin/core/instance/InstanceFactory;
    .locals 6
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "archetype":Lorg/koin/core/qualifier/TypeQualifier;
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$a$-let-CoreResolverV2$findDefinitionInScope$1":I
    iget-object v2, p0, Lorg/koin/core/resolution/CoreResolverV2;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v2

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v2, v3, v4, v5}, Lorg/koin/core/registry/InstanceRegistry;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    .line 120
    .end local v0    # "archetype":Lorg/koin/core/qualifier/TypeQualifier;
    .end local v1    # "$i$a$-let-CoreResolverV2$findDefinitionInScope$1":I
    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/koin/core/resolution/CoreResolverV2;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/koin/core/registry/InstanceRegistry;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    .line 120
    :cond_1
    return-object v0
.end method

.method private final resolveDirectDefinition(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/koin/core/resolution/CoreResolverV2;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/koin/core/registry/InstanceRegistry;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveFromScopeArchetype(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    .line 63
    :cond_0
    nop

    .line 65
    .local v0, "factory":Lorg/koin/core/instance/InstanceFactory;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/koin/core/instance/InstanceFactory;->get(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final resolveFromContextOrNull(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "instanceContext"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .line 47
    move-object v0, p2

    .local v0, "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p0

    .local v1, "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    const/4 v2, 0x0

    .line 187
    .local v2, "$i$f$resolveFromInjectedParameters":I
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/parameter/ParametersHolder;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    move-object v3, v4

    :goto_1
    nop

    .line 47
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    .end local v2    # "$i$f$resolveFromInjectedParameters":I
    if-nez v3, :cond_8

    .line 48
    move-object v0, p2

    .restart local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p0

    .restart local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    move-object v2, p1

    .local v2, "scope$iv":Lorg/koin/core/scope/Scope;
    const/4 v3, 0x0

    .line 191
    .local v3, "$i$f$resolveFromStackedParameters":I
    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->get_parameterStack$koin_core()Ljava/lang/ThreadLocal;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_5

    .line 192
    .local v5, "stack$iv":Ljava/lang/ThreadLocal;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/ArrayDeque;

    .line 193
    .local v6, "current$iv":Lkotlin/collections/ArrayDeque;
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_5

    goto :goto_4

    .line 196
    :cond_5
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/koin/core/parameter/ParametersHolder;

    .line 197
    .local v7, "parameters$iv":Lorg/koin/core/parameter/ParametersHolder;
    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    .line 193
    .end local v7    # "parameters$iv":Lorg/koin/core/parameter/ParametersHolder;
    :cond_6
    :goto_4
    nop

    .line 48
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    .end local v2    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v3    # "$i$f$resolveFromStackedParameters":I
    .end local v5    # "stack$iv":Ljava/lang/ThreadLocal;
    .end local v6    # "current$iv":Lkotlin/collections/ArrayDeque;
    :goto_5
    nop

    .line 47
    if-nez v4, :cond_7

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveFromRegistry(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    if-nez v3, :cond_8

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveInExtensions(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    .line 47
    :cond_7
    move-object v3, v4

    :cond_8
    :goto_6
    return-object v3
.end method

.method private final resolveFromInjectedParameters(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    .local v0, "$i$f$resolveFromInjectedParameters":I
    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/parameter/ParametersHolder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private final resolveFromLinkedScopes(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 13
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getLinkedScopes$koin_core()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/koin/core/resolution/CoreResolverKt;->flatten(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 83
    .local v0, "linkedScopes":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 85
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 87
    .local v3, "linkedScope":Lorg/koin/core/scope/Scope;
    invoke-direct {p0, v3, p2}, Lorg/koin/core/resolution/CoreResolverV2;->findDefinitionInScope(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v4

    .line 88
    .local v4, "factory":Lorg/koin/core/instance/InstanceFactory;
    if-eqz v4, :cond_4

    .line 90
    invoke-virtual {p2, v3}, Lorg/koin/core/instance/ResolutionContext;->newContextForScope(Lorg/koin/core/scope/Scope;)Lorg/koin/core/instance/ResolutionContext;

    move-result-object v1

    .line 91
    .local v1, "newCtx":Lorg/koin/core/instance/ResolutionContext;
    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/koin/core/instance/ResolutionContext;->setScopeArchetype(Lorg/koin/core/qualifier/TypeQualifier;)V

    .line 96
    :cond_1
    invoke-virtual {v1}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {v1}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    invoke-virtual {v1}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/koin/core/scope/Scope;->onParameterOnStack$koin_core(Lorg/koin/core/parameter/ParametersHolder;)Lkotlin/collections/ArrayDeque;

    move-result-object v2

    goto :goto_1

    .line 98
    :cond_2
    nop

    .line 96
    :goto_1
    nop

    .line 101
    .local v2, "paramStack":Lkotlin/collections/ArrayDeque;
    invoke-virtual {v4, v1}, Lorg/koin/core/instance/InstanceFactory;->get(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v5

    .line 104
    .local v5, "value":Ljava/lang/Object;
    if-eqz v2, :cond_3

    move-object v6, v2

    .line 198
    .local v6, "it":Lkotlin/collections/ArrayDeque;
    const/4 v7, 0x0

    .line 104
    .local v7, "$i$a$-let-CoreResolverV2$resolveFromLinkedScopes$1":I
    invoke-virtual {v1}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/koin/core/scope/Scope;->clearParameterStack$koin_core(Lkotlin/collections/ArrayDeque;)V

    .line 106
    .end local v6    # "it":Lkotlin/collections/ArrayDeque;
    .end local v7    # "$i$a$-let-CoreResolverV2$resolveFromLinkedScopes$1":I
    :cond_3
    return-object v5

    .line 113
    .end local v1    # "newCtx":Lorg/koin/core/instance/ResolutionContext;
    .end local v2    # "paramStack":Lkotlin/collections/ArrayDeque;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    move-object v5, p2

    .local v5, "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v6, p0

    .local v6, "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    move-object v7, v3

    .local v7, "scope$iv":Lorg/koin/core/scope/Scope;
    const/4 v8, 0x0

    .line 199
    .local v8, "$i$f$resolveFromStackedParameters":I
    invoke-virtual {v7}, Lorg/koin/core/scope/Scope;->get_parameterStack$koin_core()Ljava/lang/ThreadLocal;

    move-result-object v9

    if-nez v9, :cond_5

    move-object v12, v2

    goto :goto_5

    .line 200
    .local v9, "stack$iv":Ljava/lang/ThreadLocal;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/ArrayDeque;

    .line 201
    .local v10, "current$iv":Lkotlin/collections/ArrayDeque;
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_8

    move-object v12, v2

    goto :goto_4

    .line 204
    :cond_8
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/koin/core/parameter/ParametersHolder;

    .line 205
    .local v11, "parameters$iv":Lorg/koin/core/parameter/ParametersHolder;
    if-eqz v11, :cond_9

    invoke-virtual {v5}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4

    :cond_9
    move-object v12, v2

    .line 201
    .end local v11    # "parameters$iv":Lorg/koin/core/parameter/ParametersHolder;
    :goto_4
    nop

    .line 113
    .end local v5    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v6    # "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    .end local v7    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v8    # "$i$f$resolveFromStackedParameters":I
    .end local v9    # "stack$iv":Ljava/lang/ThreadLocal;
    .end local v10    # "current$iv":Lkotlin/collections/ArrayDeque;
    :goto_5
    nop

    .line 114
    .local v12, "fromStack":Ljava/lang/Object;
    if-eqz v12, :cond_a

    return-object v12

    .end local v3    # "linkedScope":Lorg/koin/core/scope/Scope;
    .end local v4    # "factory":Lorg/koin/core/instance/InstanceFactory;
    .end local v12    # "fromStack":Ljava/lang/Object;
    :cond_a
    goto/16 :goto_0

    .line 116
    :cond_b
    return-object v2
.end method

.method private final resolveFromRegistry(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveDirectDefinition(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveFromScopeSource(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveFromLinkedScopes(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method private final resolveFromScopeArchetype(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Lorg/koin/core/instance/InstanceFactory;
    .locals 6
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "archetype":Lorg/koin/core/qualifier/TypeQualifier;
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$-let-CoreResolverV2$resolveFromScopeArchetype$1":I
    invoke-virtual {p2, v0}, Lorg/koin/core/instance/ResolutionContext;->setScopeArchetype(Lorg/koin/core/qualifier/TypeQualifier;)V

    .line 72
    iget-object v2, p0, Lorg/koin/core/resolution/CoreResolverV2;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v2

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v2, v3, v4, v5}, Lorg/koin/core/registry/InstanceRegistry;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v1

    .line 70
    .end local v0    # "archetype":Lorg/koin/core/qualifier/TypeQualifier;
    .end local v1    # "$i$a$-let-CoreResolverV2$resolveFromScopeArchetype$1":I
    nop

    :cond_1
    return-object v1
.end method

.method private final resolveFromScopeSource(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1

    .line 77
    :cond_3
    :goto_1
    return-object v1
.end method

.method private final resolveFromStackedParameters(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$f$resolveFromStackedParameters":I
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->get_parameterStack$koin_core()Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 135
    .local v1, "stack":Ljava/lang/ThreadLocal;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 136
    .local v3, "current":Lkotlin/collections/ArrayDeque;
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/koin/core/parameter/ParametersHolder;

    .line 140
    .local v4, "parameters":Lorg/koin/core/parameter/ParametersHolder;
    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    .line 136
    .end local v4    # "parameters":Lorg/koin/core/parameter/ParametersHolder;
    :cond_4
    :goto_2
    return-object v2
.end method

.method private final resolveInExtensions(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/koin/core/resolution/CoreResolverV2;->getExtendedResolution()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/resolution/ResolutionExtension;

    .local v1, "it":Lorg/koin/core/resolution/ResolutionExtension;
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-firstNotNullOfOrNull-CoreResolverV2$resolveInExtensions$1":I
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|- [\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/koin/core/resolution/ResolutionExtension;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'] ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 166
    invoke-interface {v1, p1, p2}, Lorg/koin/core/resolution/ResolutionExtension;->resolve(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .end local v1    # "it":Lorg/koin/core/resolution/ResolutionExtension;
    .end local v2    # "$i$a$-firstNotNullOfOrNull-CoreResolverV2$resolveInExtensions$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final throwNoDefinitionFound(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 16
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "ctx"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 145
    .local v1, "$i$f$throwNoDefinitionFound":I
    invoke-virtual/range {p2 .. p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x27

    if-eqz v2, :cond_0

    .line 198
    .local v2, "it":Lorg/koin/core/qualifier/Qualifier;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$a$-let-CoreResolverV2$throwNoDefinitionFound$qualifierString$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " and qualifier \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "it":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "$i$a$-let-CoreResolverV2$throwNoDefinitionFound$qualifierString$1":I
    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 146
    .local v2, "qualifierString":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "scope \'"

    if-nez v5, :cond_2

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (resolution context scope: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 149
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    :goto_0
    nop

    .line 151
    .local v5, "scopeInfo":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getLinkedScopeIds()Ljava/util/List;

    move-result-object v6

    .line 152
    .local v6, "linkedScopeIds":Ljava/util/List;
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Searched scopes: [\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\'] -> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 206
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 207
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 208
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 153
    .local v15, "$i$a$-map-CoreResolverV2$throwNoDefinitionFound$searchedScopes$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\']"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-map-CoreResolverV2$throwNoDefinitionFound$searchedScopes$1":I
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    const/16 v4, 0x27

    goto :goto_1

    .line 209
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 206
    nop

    .line 153
    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 154
    :cond_4
    nop

    .line 152
    :goto_2
    nop

    .line 155
    .local v3, "searchedScopes":Ljava/lang/String;
    new-instance v0, Lorg/koin/core/error/NoDefinitionFoundException;

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No definition found for type \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v7}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x27

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " on "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". Check or add definition for type \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v7}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x27

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " in scope \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-direct {v0, v4}, Lorg/koin/core/error/NoDefinitionFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addResolutionExtension(Lorg/koin/core/resolution/ResolutionExtension;)V
    .locals 1
    .param p1, "resolutionExtension"    # Lorg/koin/core/resolution/ResolutionExtension;

    const-string v0, "resolutionExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lorg/koin/core/resolution/CoreResolverV2;->getExtendedResolution()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getExtendedResolution()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/koin/core/resolution/ResolutionExtension;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/koin/core/resolution/CoreResolverV2;->extendedResolution:Ljava/util/ArrayList;

    return-object v0
.end method

.method public resolveFromContext(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 20
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "instanceContext"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "scope"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct/range {p0 .. p2}, Lorg/koin/core/resolution/CoreResolverV2;->resolveFromContextOrNull(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    move-object/from16 v0, p2

    .local v0, "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object/from16 v3, p1

    .local v3, "scope$iv":Lorg/koin/core/scope/Scope;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    const/4 v5, 0x0

    .line 170
    .local v5, "$i$f$throwNoDefinitionFound":I
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    const-string v7, ""

    const/16 v8, 0x27

    if-eqz v6, :cond_0

    .line 171
    .local v6, "it$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v9, 0x0

    .line 170
    .local v9, "$i$a$-let-CoreResolverV2$throwNoDefinitionFound$qualifierString$1$iv":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " and qualifier \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "it$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "$i$a$-let-CoreResolverV2$throwNoDefinitionFound$qualifierString$1$iv":I
    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 172
    .local v6, "qualifierString$iv":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "scope \'"

    if-nez v9, :cond_2

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' (resolution context scope: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 175
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 172
    :goto_0
    nop

    .line 177
    .local v9, "scopeInfo$iv":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getLinkedScopeIds()Ljava/util/List;

    move-result-object v10

    .line 178
    .local v10, "linkedScopeIds$iv":Ljava/util/List;
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Searched scopes: [\'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "\'] -> "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$map$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 180
    .local v12, "$i$f$map":I
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v11, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 181
    .local v15, "$i$f$mapTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 182
    .local v17, "item$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/String;

    .local v8, "it$iv":Ljava/lang/String;
    const/16 v18, 0x0

    .line 179
    .local v18, "$i$a$-map-CoreResolverV2$throwNoDefinitionFound$searchedScopes$1$iv":I
    move-object/from16 v19, v0

    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .local v19, "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .end local v8    # "it$iv":Ljava/lang/String;
    .end local v18    # "$i$a$-map-CoreResolverV2$throwNoDefinitionFound$searchedScopes$1$iv":I
    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object/from16 v0, v19

    const/16 v8, 0x27

    goto :goto_1

    .line 183
    .end local v17    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .restart local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    :cond_3
    move-object/from16 v19, v0

    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v13    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapTo":I
    .restart local v19    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 180
    nop

    .line 179
    .end local v11    # "$this$map$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$map":I
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 184
    .end local v19    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .restart local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    :cond_4
    move-object/from16 v19, v0

    .line 178
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .restart local v19    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    :goto_2
    nop

    .line 185
    .local v7, "searchedScopes$iv":Ljava/lang/String;
    new-instance v0, Lorg/koin/core/error/NoDefinitionFoundException;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No definition found for type \'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v8}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v8, 0x27

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " on "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v8, 0x2e

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ". Check or add definition for type \'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v8}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v8, 0x27

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " in scope \'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\'."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, Lorg/koin/core/error/NoDefinitionFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    .end local v3    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "this_$iv":Lorg/koin/core/resolution/CoreResolverV2;
    .end local v5    # "$i$f$throwNoDefinitionFound":I
    .end local v6    # "qualifierString$iv":Ljava/lang/String;
    .end local v7    # "searchedScopes$iv":Ljava/lang/String;
    .end local v9    # "scopeInfo$iv":Ljava/lang/String;
    .end local v10    # "linkedScopeIds$iv":Ljava/util/List;
    .end local v19    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    :cond_5
    return-object v0
.end method
