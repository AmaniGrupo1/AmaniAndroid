.class public final Lorg/koin/core/resolution/CoreResolver;
.super Ljava/lang/Object;
.source "CoreResolver.kt"

# interfaces
.implements Lorg/koin/core/resolution/InstanceResolver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreResolver.kt\norg/koin/core/resolution/CoreResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n142#1:178\n143#1,2:180\n91#1,4:182\n99#1,6:186\n109#1,3:192\n116#1,3:195\n1#2:179\n1#2:198\n*S KotlinDebug\n*F\n+ 1 CoreResolver.kt\norg/koin/core/resolution/CoreResolver\n*L\n69#1:178\n69#1:180,2\n73#1:182,4\n75#1:186,6\n76#1:192,3\n77#1:195,3\n69#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J#\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J/\u0010\u0016\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u0002\u00a2\u0006\u0002\u0010\u0019J%\u0010\u001a\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u001c\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010\u001dJ&\u0010\u001e\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010\u0015J&\u0010\u001f\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010\u0015J&\u0010 \u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0083\u0008\u00a2\u0006\u0002\u0010\u0015J%\u0010!\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J%\u0010\"\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J\u001c\u0010#\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\u0008\u00a2\u0006\u0002\u0010\u001dJ%\u0010$\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006%"
    }
    d2 = {
        "Lorg/koin/core/resolution/CoreResolver;",
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
        "lookupParent",
        "",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;Z)Ljava/lang/Object;",
        "resolveFromRegistry",
        "ctx",
        "resolveFromInjectedParameters",
        "(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;",
        "resolveFromStackedParameters",
        "resolveFromScopeSource",
        "resolveFromScopeArchetype",
        "resolveFromParentScopes",
        "findInOtherScope",
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/koin/core/resolution/CoreResolver;->_koin:Lorg/koin/core/Koin;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/koin/core/resolution/CoreResolver;->extendedResolution:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method private final findInOtherScope(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 8
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

    .line 131
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getLinkedScopes$koin_core()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "hasSingleLink":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getLinkedScopes$koin_core()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getLinkedScopes$koin_core()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lorg/koin/core/resolution/CoreResolverKt;->flatten(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getLinkedScopes$koin_core()Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/util/Collection;

    .line 133
    .local v1, "parentScopes":Ljava/util/Collection;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/scope/Scope;

    .local v3, "it":Lorg/koin/core/scope/Scope;
    const/4 v4, 0x0

    .line 134
    .local v4, "$i$a$-firstNotNullOfOrNull-CoreResolver$findInOtherScope$1":I
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|- ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " look in scope \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2, v3}, Lorg/koin/core/instance/ResolutionContext;->newContextForScope(Lorg/koin/core/scope/Scope;)Lorg/koin/core/instance/ResolutionContext;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, p2

    .line 137
    .local v5, "instanceContext":Lorg/koin/core/instance/ResolutionContext;
    :goto_2
    invoke-direct {p0, v3, v5, v0}, Lorg/koin/core/resolution/CoreResolver;->resolveFromContextOrNull(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;Z)Ljava/lang/Object;

    move-result-object v3

    .line 133
    .end local v3    # "it":Lorg/koin/core/scope/Scope;
    .end local v4    # "$i$a$-firstNotNullOfOrNull-CoreResolver$findInOtherScope$1":I
    .end local v5    # "instanceContext":Lorg/koin/core/instance/ResolutionContext;
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method

.method private final resolveFromContextOrNull(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;Z)Ljava/lang/Object;
    .locals 10
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "instanceContext"    # Lorg/koin/core/instance/ResolutionContext;
    .param p3, "lookupParent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/instance/ResolutionContext;",
            "Z)TT;"
        }
    .end annotation

    .line 73
    move-object v0, p2

    .local v0, "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p0

    .local v1, "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    const/4 v2, 0x0

    .line 182
    .local v2, "$i$f$resolveFromInjectedParameters":I
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v3

    const-string v4, "|- ? "

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/parameter/ParametersHolder;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " look in injected parameters"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    move-object v3, v5

    :goto_1
    nop

    .line 73
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    .end local v2    # "$i$f$resolveFromInjectedParameters":I
    if-nez v3, :cond_10

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolver;->resolveFromRegistry(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    if-nez v3, :cond_10

    .line 75
    move-object v0, p2

    .restart local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p0

    .restart local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    move-object v2, p1

    .local v2, "scope$iv":Lorg/koin/core/scope/Scope;
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$f$resolveFromStackedParameters":I
    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->get_parameterStack$koin_core()Ljava/lang/ThreadLocal;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/ArrayDeque;

    goto :goto_2

    :cond_2
    move-object v6, v5

    .line 187
    .local v6, "current$iv":Lkotlin/collections/ArrayDeque;
    :goto_2
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_5

    move-object v8, v5

    goto :goto_5

    .line 189
    :cond_5
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " look in stack parameters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/koin/core/parameter/ParametersHolder;

    .line 191
    .local v7, "parameters$iv":Lorg/koin/core/parameter/ParametersHolder;
    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_5

    :cond_6
    move-object v8, v5

    .line 187
    .end local v7    # "parameters$iv":Lorg/koin/core/parameter/ParametersHolder;
    :goto_5
    nop

    .line 75
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    .end local v2    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v3    # "$i$f$resolveFromStackedParameters":I
    .end local v6    # "current$iv":Lkotlin/collections/ArrayDeque;
    nop

    .line 73
    if-nez v8, :cond_f

    .line 76
    move-object v0, p2

    .restart local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p1

    .local v1, "scope$iv":Lorg/koin/core/scope/Scope;
    move-object v2, p0

    .local v2, "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    const/4 v3, 0x0

    .line 192
    .local v3, "$i$f$resolveFromScopeSource":I
    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_7

    .line 193
    :cond_7
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " look at scope source"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    move-object v3, v6

    goto :goto_8

    :cond_9
    :goto_6
    move-object v3, v5

    goto :goto_8

    .line 192
    :cond_a
    :goto_7
    move-object v3, v5

    .line 76
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v1    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    .end local v3    # "$i$f$resolveFromScopeSource":I
    :goto_8
    nop

    .line 73
    if-nez v3, :cond_10

    .line 77
    move-object v0, p2

    .restart local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p0

    .local v1, "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    move-object v2, p1

    .local v2, "scope$iv":Lorg/koin/core/scope/Scope;
    const/4 v3, 0x0

    .line 195
    .local v3, "$i$f$resolveFromScopeArchetype":I
    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_9

    .line 196
    :cond_b
    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " look at scope archetype"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 197
    iget-object v4, v1, Lorg/koin/core/resolution/CoreResolver;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v4}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v4

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    invoke-virtual {v0}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v0}, Lorg/koin/core/registry/InstanceRegistry;->resolveScopeArchetypeInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    goto :goto_a

    .line 195
    :cond_c
    :goto_9
    move-object v3, v5

    .line 77
    .end local v0    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local v1    # "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    .end local v2    # "scope$iv":Lorg/koin/core/scope/Scope;
    .end local v3    # "$i$f$resolveFromScopeArchetype":I
    :goto_a
    nop

    .line 73
    if-nez v3, :cond_10

    .line 78
    if-eqz p3, :cond_d

    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolver;->resolveFromParentScopes(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v5

    .line 73
    :cond_d
    if-nez v5, :cond_e

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolver;->resolveInExtensions(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_b

    .line 73
    :cond_e
    move-object v3, v5

    goto :goto_b

    :cond_f
    move-object v3, v8

    :cond_10
    :goto_b
    return-object v3
.end method

.method static synthetic resolveFromContextOrNull$default(Lorg/koin/core/resolution/CoreResolver;Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/core/resolution/CoreResolver;->resolveFromContextOrNull(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final resolveFromInjectedParameters(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 4
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

    .line 91
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

    .line 93
    :cond_0
    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|- ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " look in injected parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getParameters()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private final resolveFromParentScopes(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
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

    .line 122
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|- ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " look in other scopes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lorg/koin/core/resolution/CoreResolver;->findInOtherScope(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final resolveFromRegistry(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
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

    .line 87
    iget-object v0, p0, Lorg/koin/core/resolution/CoreResolver;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lorg/koin/core/registry/InstanceRegistry;->resolveInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final resolveFromScopeArchetype(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
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

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const/4 v0, 0x0

    .line 116
    .local v0, "$i$f$resolveFromScopeArchetype":I
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|- ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " look at scope archetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/koin/core/resolution/CoreResolver;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v1

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lorg/koin/core/registry/InstanceRegistry;->resolveScopeArchetypeInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 116
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final resolveFromScopeSource(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
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

    .line 109
    .local v0, "$i$f$resolveFromScopeSource":I
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->isRoot()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|- ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " look at scope source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getSourceValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    return-object v2

    .line 109
    :cond_3
    :goto_1
    return-object v2
.end method

.method private final resolveFromStackedParameters(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
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

    const/4 v0, 0x0

    .line 99
    .local v0, "$i$f$resolveFromStackedParameters":I
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->get_parameterStack$koin_core()Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/collections/ArrayDeque;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 100
    .local v1, "current":Lkotlin/collections/ArrayDeque;
    :goto_0
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|- ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getDebugTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " look in stack parameters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 104
    .local v3, "parameters":Lorg/koin/core/parameter/ParametersHolder;
    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    .end local v3    # "parameters":Lorg/koin/core/parameter/ParametersHolder;
    :cond_4
    :goto_3
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

    .line 152
    invoke-virtual {p0}, Lorg/koin/core/resolution/CoreResolver;->getExtendedResolution()Ljava/util/ArrayList;

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

    .line 153
    .local v2, "$i$a$-firstNotNullOfOrNull-CoreResolver$resolveInExtensions$1":I
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

    .line 154
    invoke-interface {v1, p1, p2}, Lorg/koin/core/resolution/ResolutionExtension;->resolve(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    .end local v1    # "it":Lorg/koin/core/resolution/ResolutionExtension;
    .end local v2    # "$i$a$-firstNotNullOfOrNull-CoreResolver$resolveInExtensions$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final throwNoDefinitionFound(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 6
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

    .line 142
    .local v0, "$i$f$throwNoDefinitionFound":I
    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    const/16 v2, 0x27

    if-eqz v1, :cond_0

    .line 198
    .local v1, "it":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .line 142
    .local v3, "$i$a$-let-CoreResolver$throwNoDefinitionFound$qualifierString$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and qualifier \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "it":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$a$-let-CoreResolver$throwNoDefinitionFound$qualifierString$1":I
    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 143
    .local v1, "qualifierString":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/koin/core/error/NoDefinitionFoundException;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No definition found for type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Check your Modules configuration and add missing type and/or qualifier!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-direct {v3, v2}, Lorg/koin/core/error/NoDefinitionFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public addResolutionExtension(Lorg/koin/core/resolution/ResolutionExtension;)V
    .locals 1
    .param p1, "resolutionExtension"    # Lorg/koin/core/resolution/ResolutionExtension;

    const-string v0, "resolutionExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/koin/core/resolution/CoreResolver;->getExtendedResolution()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
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

    .line 62
    iget-object v0, p0, Lorg/koin/core/resolution/CoreResolver;->extendedResolution:Ljava/util/ArrayList;

    return-object v0
.end method

.method public resolveFromContext(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
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

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "scope":Lorg/koin/core/scope/Scope;
    .end local p2    # "instanceContext":Lorg/koin/core/instance/ResolutionContext;
    .local v2, "scope":Lorg/koin/core/scope/Scope;
    .local v3, "instanceContext":Lorg/koin/core/instance/ResolutionContext;
    invoke-static/range {v1 .. v6}, Lorg/koin/core/resolution/CoreResolver;->resolveFromContextOrNull$default(Lorg/koin/core/resolution/CoreResolver;Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v3

    .local p1, "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    move-object p2, p0

    .local p2, "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    const/4 v0, 0x0

    .line 178
    .local v0, "$i$f$throwNoDefinitionFound":I
    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    const/16 v4, 0x27

    if-eqz v1, :cond_0

    .line 179
    .local v1, "it$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v5, 0x0

    .line 178
    .local v5, "$i$a$-let-CoreResolver$throwNoDefinitionFound$qualifierString$1$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " and qualifier \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "it$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "$i$a$-let-CoreResolver$throwNoDefinitionFound$qualifierString$1$iv":I
    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 180
    .local v1, "qualifierString$iv":Ljava/lang/String;
    :cond_1
    new-instance v5, Lorg/koin/core/error/NoDefinitionFoundException;

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No definition found for type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/koin/core/instance/ResolutionContext;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v7}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". Check your Modules configuration and add missing type and/or qualifier!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-direct {v5, v4}, Lorg/koin/core/error/NoDefinitionFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    .end local v0    # "$i$f$throwNoDefinitionFound":I
    .end local v1    # "qualifierString$iv":Ljava/lang/String;
    .end local p1    # "ctx$iv":Lorg/koin/core/instance/ResolutionContext;
    .end local p2    # "this_$iv":Lorg/koin/core/resolution/CoreResolver;
    :cond_2
    return-object p1
.end method
