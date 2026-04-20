.class public final Lorg/koin/core/registry/InstanceRegistry;
.super Ljava/lang/Object;
.source "InstanceRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,231:1\n1915#2,2:232\n1915#2,2:234\n296#2,2:240\n1915#2,2:242\n1915#2:265\n1916#2:273\n1915#2:288\n1916#2:296\n1915#2:311\n1916#2:319\n1915#2:334\n1916#2:342\n1915#2,2:357\n777#2:363\n873#2,2:364\n1642#2,10:366\n1915#2:376\n1916#2:378\n1652#2:379\n1915#2,2:380\n1915#2,2:382\n37#3,2:236\n37#3,2:343\n37#3,2:359\n221#4,2:238\n114#5,7:244\n114#5,7:251\n137#5,7:258\n114#5,7:266\n114#5,7:274\n137#5,7:281\n114#5,7:289\n137#5,7:297\n114#5,7:304\n114#5,7:312\n137#5,7:320\n114#5,7:327\n114#5,7:335\n4253#6,12:345\n14048#6,2:361\n1#7:377\n*S KotlinDebug\n*F\n+ 1 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n*L\n53#1:232,2\n60#1:234,2\n93#1:240,2\n105#1:242,2\n164#1:265\n164#1:273\n164#1:288\n164#1:296\n184#1:311\n184#1:319\n184#1:334\n184#1:342\n192#1:357,2\n203#1:363\n203#1:364,2\n211#1:366,10\n211#1:376\n211#1:378\n211#1:379\n215#1:380,2\n219#1:382,2\n66#1:236,2\n191#1:343,2\n196#1:359,2\n72#1:238,2\n113#1:244,7\n154#1:251,7\n160#1:258,7\n165#1:266,7\n154#1:274,7\n160#1:281,7\n165#1:289,7\n180#1:297,7\n182#1:304,7\n185#1:312,7\n180#1:320,7\n182#1:327,7\n185#1:335,7\n192#1:345,12\n197#1:361,2\n211#1:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0018H\u0002J\r\u0010\u001e\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u001fJ\u0018\u0010 \u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J2\u0010!\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\"\u001a\u00060\nj\u0002`\u000b2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0008\u0008\u0002\u0010$\u001a\u00020\u001aH\u0007J\u001a\u0010%\u001a\u00020\u00152\u0010\u0010\r\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00130&H\u0002J1\u0010\'\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c2\n\u0010(\u001a\u0006\u0012\u0002\u0008\u00030)2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008-J5\u0010.\u001a\u0004\u0018\u0001H/\"\u0004\u0008\u0000\u0010/2\u0008\u0010*\u001a\u0004\u0018\u00010+2\n\u00100\u001a\u0006\u0012\u0002\u0008\u00030)2\u0006\u00101\u001a\u000202H\u0001\u00a2\u0006\u0004\u00083\u00104J=\u00105\u001a\u0004\u0018\u0001H/\"\u0004\u0008\u0000\u0010/2\u0008\u0010*\u001a\u0004\u0018\u00010+2\n\u0010(\u001a\u0006\u0012\u0002\u0008\u00030)2\u0006\u0010,\u001a\u00020+2\u0006\u00106\u001a\u000202H\u0000\u00a2\u0006\u0004\u00087\u00108Jd\u00109\u001a\u00020\u0015\"\u0006\u0008\u0000\u0010/\u0018\u00012\u0006\u0010:\u001a\u0002H/2\u0006\u0010,\u001a\u00020+2\n\u0010;\u001a\u00060\nj\u0002`<2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+2\u0012\u0008\u0002\u0010=\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030)0>2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001aH\u0081\u0008\u00a2\u0006\u0002\u0010@JH\u0010A\u001a\u00020\u0015\"\u0006\u0008\u0000\u0010/\u0018\u00012\u0006\u0010:\u001a\u0002H/2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+2\u0012\u0008\u0002\u0010=\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030)0>2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0081\u0008\u00a2\u0006\u0002\u0010BJ\u0015\u0010C\u001a\u00020\u00152\u0006\u0010D\u001a\u00020EH\u0000\u00a2\u0006\u0002\u0008FJ\r\u0010G\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008HJ-\u0010I\u001a\u0008\u0012\u0004\u0012\u0002H/0>\"\u0004\u0008\u0000\u0010/2\n\u0010(\u001a\u0006\u0012\u0002\u0008\u00030)2\u0006\u00106\u001a\u000202H\u0000\u00a2\u0006\u0002\u0008JJ\u001b\u0010K\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0000\u00a2\u0006\u0002\u0008LJ\u0010\u0010M\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0018H\u0002J\u0006\u0010N\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\"\u0010\u0008\u001a\u0016\u0012\u0008\u0012\u00060\nj\u0002`\u000b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\r\u001a\u0016\u0012\u0008\u0012\u00060\nj\u0002`\u000b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00130\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lorg/koin/core/registry/InstanceRegistry;",
        "",
        "_koin",
        "Lorg/koin/core/Koin;",
        "<init>",
        "(Lorg/koin/core/Koin;)V",
        "get_koin",
        "()Lorg/koin/core/Koin;",
        "_instances",
        "",
        "",
        "Lorg/koin/core/definition/IndexKey;",
        "Lorg/koin/core/instance/InstanceFactory;",
        "instances",
        "",
        "getInstances",
        "()Ljava/util/Map;",
        "eagerInstances",
        "",
        "Lorg/koin/core/instance/SingleInstanceFactory;",
        "loadModules",
        "",
        "modules",
        "",
        "Lorg/koin/core/module/Module;",
        "allowOverride",
        "",
        "loadModules$koin_core",
        "addAllEagerInstances",
        "module",
        "createAllEagerInstances",
        "createAllEagerInstances$koin_core",
        "loadModule",
        "saveMapping",
        "mapping",
        "factory",
        "logWarning",
        "createEagerInstances",
        "",
        "resolveDefinition",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "scopeQualifier",
        "resolveDefinition$koin_core",
        "resolveScopeArchetypeInstance",
        "T",
        "klass",
        "context",
        "Lorg/koin/core/instance/ResolutionContext;",
        "resolveScopeArchetypeInstance$koin_core",
        "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;",
        "resolveInstance",
        "instanceContext",
        "resolveInstance$koin_core",
        "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;",
        "scopeDeclaredInstance",
        "instance",
        "scopeID",
        "Lorg/koin/core/scope/ScopeID;",
        "secondaryTypes",
        "",
        "holdInstance",
        "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZ)V",
        "declareRootInstance",
        "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V",
        "dropScopeInstances",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "dropScopeInstances$koin_core",
        "close",
        "close$koin_core",
        "getAll",
        "getAll$koin_core",
        "unloadModules",
        "unloadModules$koin_core",
        "unloadModule",
        "size",
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
.field private final _instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final _koin:Lorg/koin/core/Koin;

.field private final eagerInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1
    .param p1, "_koin"    # Lorg/koin/core/Koin;

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    .line 46
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->safeHashMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    .line 50
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->safeHashMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private final addAllEagerInstances(Lorg/koin/core/module/Module;)V
    .locals 8
    .param p1, "module"    # Lorg/koin/core/module/Module;

    .line 60
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getEagerInstances()Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 234
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .local v4, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    const/4 v5, 0x0

    .line 61
    .local v5, "$i$a$-forEach-InstanceRegistry$addAllEagerInstances$1":I
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/koin/core/instance/SingleInstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/definition/BeanDefinition;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    nop

    .line 234
    .end local v4    # "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$addAllEagerInstances$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 235
    :cond_0
    nop

    .line 63
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final createEagerInstances(Ljava/util/Collection;)V
    .locals 8
    .param p1, "instances"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;>;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/koin/core/instance/ResolutionContext;

    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    iget-object v2, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    const-class v3, Lorg/koin/core/instance/NoClass;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/koin/core/instance/ResolutionContext;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .local v0, "defaultContext":Lorg/koin/core/instance/ResolutionContext;
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 242
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .local v5, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-forEach-InstanceRegistry$createEagerInstances$1":I
    invoke-virtual {v5, v0}, Lorg/koin/core/instance/SingleInstanceFactory;->get(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    .line 242
    .end local v5    # "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v6    # "$i$a$-forEach-InstanceRegistry$createEagerInstances$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 243
    :cond_0
    nop

    .line 106
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic declareRootInstance$default(Lorg/koin/core/registry/InstanceRegistry;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 22
    .param p0, "$this"    # Lorg/koin/core/registry/InstanceRegistry;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "allowOverride"    # Z

    .line 173
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 173
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p2

    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    .line 176
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .end local p3    # "secondaryTypes":Ljava/util/List;
    .local v1, "secondaryTypes":Ljava/util/List;
    goto :goto_1

    .line 173
    .end local v1    # "secondaryTypes":Ljava/util/List;
    .restart local p3    # "secondaryTypes":Ljava/util/List;
    :cond_1
    move-object/from16 v1, p3

    .end local p3    # "secondaryTypes":Ljava/util/List;
    .restart local v1    # "secondaryTypes":Ljava/util/List;
    :goto_1
    and-int/lit8 v2, p5, 0x8

    if-eqz v2, :cond_2

    .line 177
    const/4 v2, 0x1

    move v4, v2

    .end local p4    # "allowOverride":Z
    .local v2, "allowOverride":Z
    goto :goto_2

    .line 173
    .end local v2    # "allowOverride":Z
    .restart local p4    # "allowOverride":Z
    :cond_2
    move/from16 v4, p4

    .end local p4    # "allowOverride":Z
    .local v4, "allowOverride":Z
    :goto_2
    const-string v2, "secondaryTypes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 179
    .local v2, "$i$f$declareRootInstance":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->get_koin()Lorg/koin/core/Koin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v10

    .line 180
    .local v10, "rootQualifier":Lorg/koin/core/qualifier/Qualifier;
    sget-object v16, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v16, "kind$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;-><init>(Ljava/lang/Object;)V

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .local v15, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object v12, v10

    .local v12, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v14, v0

    .local v14, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v17, v1

    .local v17, "secondaryTypes$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 320
    .local v3, "$i$f$_createDefinition":I
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 321
    const-string v6, "T"

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 323
    nop

    .line 324
    nop

    .line 325
    nop

    .line 326
    nop

    .line 320
    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .end local v3    # "$i$f$_createDefinition":I
    .end local v12    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v17    # "secondaryTypes$iv":Ljava/util/List;
    nop

    .line 181
    .local v11, "def":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v11}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    move-object v12, v3

    .line 182
    .local v12, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    invoke-virtual {v11}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v3

    .local v3, "clazz$iv":Lkotlin/reflect/KClass;
    invoke-virtual {v11}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    .local v6, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual {v11}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .local v7, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v8, 0x0

    .line 327
    .local v8, "$i$f$indexKey":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v9

    check-cast v13, Ljava/lang/StringBuilder;

    .local v13, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 328
    .local v14, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static {v3}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v15, 0x3a

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    const-string v16, ""

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v15, v17

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v15, v16

    :goto_4
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/16 v15, 0x3a

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    nop

    .line 327
    .end local v13    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v14    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    .end local v3    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v6    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "$i$f$indexKey":I
    nop

    .line 183
    .local v9, "indexKey":Ljava/lang/String;
    move-object v6, v12

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    const/16 v8, 0x8

    move-object v5, v9

    .end local v9    # "indexKey":Ljava/lang/String;
    .local v5, "indexKey":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 184
    move-object v13, v5

    .end local v5    # "indexKey":Ljava/lang/String;
    .local v13, "indexKey":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 334
    .local v15, "$i$f$forEach":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "element$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Lkotlin/reflect/KClass;

    .local v19, "clazz":Lkotlin/reflect/KClass;
    const/16 v20, 0x0

    .line 185
    .local v20, "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    invoke-virtual {v11}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .local v3, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual {v11}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .local v5, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v6, v19

    .local v6, "clazz$iv":Lkotlin/reflect/KClass;
    const/4 v7, 0x0

    .line 335
    .local v7, "$i$f$indexKey":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v8

    check-cast v9, Ljava/lang/StringBuilder;

    .local v9, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .line 336
    .local v21, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    move-object/from16 p6, v0

    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local p6, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    invoke-static {v6}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    move-object/from16 v0, v16

    :cond_6
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    nop

    .line 335
    .end local v9    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v21    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 185
    .end local v3    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v7    # "$i$f$indexKey":I
    move-object v5, v8

    .line 186
    .local v5, "index":Ljava/lang/String;
    move-object v6, v12

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 187
    nop

    .line 334
    .end local v5    # "index":Ljava/lang/String;
    .end local v19    # "clazz":Lkotlin/reflect/KClass;
    .end local v20    # "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    move-object/from16 v0, p6

    .end local v18    # "element$iv":Ljava/lang/Object;
    goto :goto_5

    .line 342
    .end local p6    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_7
    nop

    .line 188
    .end local v14    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach":I
    return-void
.end method

.method private final loadModule(Lorg/koin/core/module/Module;Z)V
    .locals 13
    .param p1, "module"    # Lorg/koin/core/module/Module;
    .param p2, "allowOverride"    # Z

    .line 72
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getMappings()Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 238
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .local v4, "$i$a$-forEach-InstanceRegistry$loadModule$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .local v8, "mapping":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lorg/koin/core/instance/InstanceFactory;

    .line 73
    .local v9, "factory":Lorg/koin/core/instance/InstanceFactory;
    invoke-virtual {v9}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/definition/BeanDefinition;->getAllowOverride()Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 74
    .local v5, "hasFactoryAllowOverride":Z
    if-nez p2, :cond_1

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    move v7, v6

    .line 75
    .local v7, "override":Z
    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 77
    .end local v5    # "hasFactoryAllowOverride":Z
    .end local v7    # "override":Z
    nop

    .line 238
    .end local v4    # "$i$a$-forEach-InstanceRegistry$loadModule$1":I
    .end local v8    # "mapping":Ljava/lang/String;
    .end local v9    # "factory":Lorg/koin/core/instance/InstanceFactory;
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 239
    :cond_2
    nop

    .line 78
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V
    .locals 0

    .line 81
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 85
    const/4 p4, 0x1

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping(ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V

    return-void
.end method

.method public static synthetic scopeDeclaredInstance$default(Lorg/koin/core/registry/InstanceRegistry;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZILjava/lang/Object;)V
    .locals 32
    .param p0, "$this"    # Lorg/koin/core/registry/InstanceRegistry;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "scopeID"    # Ljava/lang/String;
    .param p4, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p5, "secondaryTypes"    # Ljava/util/List;
    .param p6, "allowOverride"    # Z
    .param p7, "holdInstance"    # Z

    .line 144
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p7

    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_0

    .line 148
    const/4 v3, 0x0

    .end local p4    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v3, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 144
    .end local v3    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p4    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v3, p4

    .end local p4    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v3    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_1

    .line 149
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .end local p5    # "secondaryTypes":Ljava/util/List;
    .local v4, "secondaryTypes":Ljava/util/List;
    goto :goto_1

    .line 144
    .end local v4    # "secondaryTypes":Ljava/util/List;
    .restart local p5    # "secondaryTypes":Ljava/util/List;
    :cond_1
    move-object/from16 v4, p5

    .end local p5    # "secondaryTypes":Ljava/util/List;
    .restart local v4    # "secondaryTypes":Ljava/util/List;
    :goto_1
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_2

    .line 150
    const/4 v5, 0x1

    .end local p6    # "allowOverride":Z
    .local v5, "allowOverride":Z
    goto :goto_2

    .line 144
    .end local v5    # "allowOverride":Z
    .restart local p6    # "allowOverride":Z
    :cond_2
    move/from16 v5, p6

    .end local p6    # "allowOverride":Z
    .restart local v5    # "allowOverride":Z
    :goto_2
    const-string v6, "scopeQualifier"

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "scopeID"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "secondaryTypes"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "$i$f$scopeDeclaredInstance":I
    const/4 v8, 0x4

    const-string v9, "T"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 153
    nop

    .line 154
    .local v10, "primaryType":Lkotlin/reflect/KClass;
    move-object/from16 v11, p2

    .local v11, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v12, v3

    .local v12, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v13, v10

    .local v13, "clazz$iv":Lkotlin/reflect/KClass;
    const/4 v14, 0x0

    .line 274
    .local v14, "$i$f$indexKey":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v15

    check-cast v8, Ljava/lang/StringBuilder;

    .local v8, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 275
    .local v16, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    move-object/from16 p9, v3

    .end local v3    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local p9, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    invoke-static {v13}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const/16 v3, 0x3a

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const-string v17, ""

    if-eqz v12, :cond_4

    invoke-interface {v12}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v3, v18

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v3, v17

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const/16 v3, 0x3a

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    nop

    .line 274
    .end local v8    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .end local v11    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v14    # "$i$f$indexKey":I
    nop

    .line 155
    .local v3, "indexKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->getInstances()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v11, v8, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v11, :cond_5

    check-cast v8, Lorg/koin/core/instance/ScopedInstanceFactory;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 156
    .local v8, "existingFactory":Lorg/koin/core/instance/ScopedInstanceFactory;
    :goto_5
    if-eqz v8, :cond_6

    .line 157
    invoke-virtual {v8, v1, v0}, Lorg/koin/core/instance/ScopedInstanceFactory;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v3

    goto/16 :goto_c

    .line 159
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    if-nez v2, :cond_7

    new-instance v11, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$1;

    invoke-direct {v11, v10}, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$1;-><init>(Lkotlin/reflect/KClass;)V

    goto :goto_6

    :cond_7
    new-instance v11, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$2;

    invoke-direct {v11, v0}, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$2;-><init>(Ljava/lang/Object;)V

    :goto_6
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 160
    .local v11, "definitionFunction":Lkotlin/jvm/functions/Function2;
    sget-object v23, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v23, "kind$iv":Lorg/koin/core/definition/Kind;
    move-object/from16 v19, p2

    .local v19, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v21, p9

    .local v21, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v22, v11

    .local v22, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v24, v4

    .local v24, "secondaryTypes$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 281
    .local v12, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 282
    const/4 v13, 0x4

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v20

    .line 284
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    nop

    .line 281
    const/16 v26, 0x40

    const/16 v27, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v18 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .end local v12    # "$i$f$_createDefinition":I
    .end local v19    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v21    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v22    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v24    # "secondaryTypes$iv":Ljava/util/List;
    move-object/from16 v9, v18

    .line 161
    .local v9, "def":Lorg/koin/core/definition/BeanDefinition;
    new-instance v12, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v12, v9, v2}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;Z)V

    .line 162
    .local v12, "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual {v12}, Lorg/koin/core/instance/ScopedInstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v13

    invoke-virtual {v13}, Lorg/koin/core/definition/BeanDefinition;->getAllowOverride()Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 163
    .local v13, "hasFactoryAllowOverride":Z
    if-nez v5, :cond_9

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    const/16 v19, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v19, v14

    :goto_8
    move-object/from16 v21, v12

    check-cast v21, Lorg/koin/core/instance/InstanceFactory;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, p0

    move-object/from16 v20, v3

    .end local v3    # "indexKey":Ljava/lang/String;
    .local v20, "indexKey":Ljava/lang/String;
    invoke-static/range {v18 .. v24}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 164
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 288
    .local v16, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v21, v19

    check-cast v21, Lkotlin/reflect/KClass;

    .local v21, "clazz":Lkotlin/reflect/KClass;
    const/16 v22, 0x0

    .line 165
    .local v22, "$i$a$-forEach-InstanceRegistry$scopeDeclaredInstance$1":I
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v23

    .local v23, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v14

    .local v14, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v24, v21

    .local v24, "clazz$iv":Lkotlin/reflect/KClass;
    const/16 v25, 0x0

    .line 289
    .local v25, "$i$f$indexKey":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v26

    check-cast v15, Ljava/lang/StringBuilder;

    .local v15, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/16 v27, 0x0

    .line 290
    .local v27, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static/range {v24 .. v24}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const/16 v2, 0x3a

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    if-eqz v23, :cond_a

    invoke-interface/range {v23 .. v23}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    move-object/from16 v2, v17

    :cond_b
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/16 v2, 0x3a

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    nop

    .line 289
    .end local v15    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v27    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 165
    .end local v14    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v23    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v24    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v25    # "$i$f$indexKey":I
    nop

    .line 166
    .local v27, "index":Ljava/lang/String;
    if-nez v5, :cond_d

    if-eqz v13, :cond_c

    goto :goto_a

    :cond_c
    const/16 v26, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/16 v26, 0x1

    :goto_b
    move-object/from16 v28, v12

    check-cast v28, Lorg/koin/core/instance/InstanceFactory;

    const/16 v30, 0x8

    const/16 v31, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, p0

    invoke-static/range {v25 .. v31}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 167
    nop

    .line 288
    .end local v21    # "clazz":Lkotlin/reflect/KClass;
    .end local v22    # "$i$a$-forEach-InstanceRegistry$scopeDeclaredInstance$1":I
    .end local v27    # "index":Ljava/lang/String;
    move/from16 v2, p7

    const/4 v14, 0x1

    .end local v19    # "element$iv":Ljava/lang/Object;
    goto :goto_9

    .line 296
    :cond_e
    nop

    .line 168
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$forEach":I
    invoke-virtual {v12, v1, v0}, Lorg/koin/core/instance/ScopedInstanceFactory;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    .end local v9    # "def":Lorg/koin/core/definition/BeanDefinition;
    .end local v11    # "definitionFunction":Lkotlin/jvm/functions/Function2;
    .end local v12    # "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v13    # "hasFactoryAllowOverride":Z
    :goto_c
    return-void
.end method

.method private final unloadModule(Lorg/koin/core/module/Module;)V
    .locals 7
    .param p1, "module"    # Lorg/koin/core/module/Module;

    .line 219
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getMappings()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 382
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .local v4, "mapping":Ljava/lang/String;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$a$-forEach-InstanceRegistry$unloadModule$1":I
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/koin/core/instance/InstanceFactory;->dropAll()V

    .line 221
    :cond_0
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    nop

    .line 382
    .end local v4    # "mapping":Ljava/lang/String;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$unloadModule$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 383
    :cond_1
    nop

    .line 223
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final close$koin_core()V
    .locals 8

    .line 196
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 359
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 360
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v4, v3, [Lorg/koin/core/instance/InstanceFactory;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lorg/koin/core/instance/InstanceFactory;

    .line 197
    .local v0, "factories":[Lorg/koin/core/instance/InstanceFactory;
    move-object v1, v0

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 361
    .local v2, "$i$f$forEach":I
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "factory":Lorg/koin/core/instance/InstanceFactory;
    const/4 v7, 0x0

    .line 197
    .local v7, "$i$a$-forEach-InstanceRegistry$close$1":I
    invoke-virtual {v6}, Lorg/koin/core/instance/InstanceFactory;->dropAll()V

    .line 361
    .end local v6    # "factory":Lorg/koin/core/instance/InstanceFactory;
    .end local v7    # "$i$a$-forEach-InstanceRegistry$close$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    nop

    .line 198
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 199
    return-void
.end method

.method public final createAllEagerInstances$koin_core()V
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 236
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 237
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 66
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lorg/koin/core/instance/SingleInstanceFactory;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "instances":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 68
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lorg/koin/core/registry/InstanceRegistry;->createEagerInstances(Ljava/util/Collection;)V

    .line 69
    return-void
.end method

.method public final synthetic declareRootInstance(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V
    .locals 22
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "allowOverride"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z)V"
        }
    .end annotation

    const-string v0, "secondaryTypes"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 179
    .local v0, "$i$f$declareRootInstance":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->get_koin()Lorg/koin/core/Koin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 180
    .local v2, "rootQualifier":Lorg/koin/core/qualifier/Qualifier;
    sget-object v8, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v8, "kind$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;

    move-object/from16 v13, p1

    invoke-direct {v3, v13}, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;-><init>(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .local v7, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object v4, v2

    .local v4, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v6, p2

    .local v6, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v9, p3

    .local v9, "secondaryTypes$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 297
    .local v14, "$i$f$_createDefinition":I
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 298
    const/4 v5, 0x4

    const-string v10, "T"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 300
    nop

    .line 301
    nop

    .line 302
    nop

    .line 303
    nop

    .line 297
    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .end local v4    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v8    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v9    # "secondaryTypes$iv":Ljava/util/List;
    .end local v14    # "$i$f$_createDefinition":I
    nop

    .line 181
    .local v3, "def":Lorg/koin/core/definition/BeanDefinition;
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 182
    .local v4, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v5

    .local v5, "clazz$iv":Lkotlin/reflect/KClass;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    .local v6, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .local v7, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v8, 0x0

    .line 304
    .local v8, "$i$f$indexKey":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    check-cast v10, Ljava/lang/StringBuilder;

    .local v10, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 305
    .local v11, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static {v5}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/16 v12, 0x3a

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    const-string v14, ""

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    :cond_0
    move-object v15, v14

    :cond_1
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    nop

    .line 304
    .end local v10    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    .end local v5    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v6    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "$i$f$indexKey":I
    move-object/from16 v17, v9

    .line 183
    .local v17, "indexKey":Ljava/lang/String;
    move-object/from16 v18, v4

    check-cast v18, Lorg/koin/core/instance/InstanceFactory;

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p0

    move/from16 v16, p4

    invoke-static/range {v15 .. v21}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 184
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 311
    .local v16, "$i$f$forEach":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    check-cast v20, Lkotlin/reflect/KClass;

    .local v20, "clazz":Lkotlin/reflect/KClass;
    const/16 v21, 0x0

    .line 185
    .local v21, "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .local v5, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    .local v6, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v7, v20

    .local v7, "clazz$iv":Lkotlin/reflect/KClass;
    const/4 v8, 0x0

    .line 312
    .restart local v8    # "$i$f$indexKey":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    check-cast v10, Ljava/lang/StringBuilder;

    .restart local v10    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 313
    .restart local v11    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static {v7}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/16 v12, 0x3a

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    :cond_2
    move-object v12, v14

    :cond_3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v12, 0x3a

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    nop

    .line 312
    .end local v10    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 185
    .end local v5    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v8    # "$i$f$indexKey":I
    move-object v7, v9

    .line 186
    .local v7, "index":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Lorg/koin/core/instance/InstanceFactory;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p4

    invoke-static/range {v5 .. v11}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 187
    nop

    .line 311
    .end local v7    # "index":Ljava/lang/String;
    .end local v20    # "clazz":Lkotlin/reflect/KClass;
    .end local v21    # "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    nop

    .end local v19    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 319
    :cond_4
    nop

    .line 188
    .end local v15    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$forEach":I
    return-void
.end method

.method public final dropScopeInstances$koin_core(Lorg/koin/core/scope/Scope;)V
    .locals 10
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 343
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 344
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v4, v3, [Lorg/koin/core/instance/InstanceFactory;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 191
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lorg/koin/core/instance/InstanceFactory;

    .line 192
    .local v0, "factories":[Lorg/koin/core/instance/InstanceFactory;
    move-object v1, v0

    .local v1, "$this$filterIsInstance$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 345
    .local v2, "$i$f$filterIsInstance":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterIsInstanceTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 355
    .local v6, "$i$f$filterIsInstanceTo":I
    array-length v7, v5

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v8, v5, v3

    .local v8, "element$iv$iv":Ljava/lang/Object;
    instance-of v9, v8, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterIsInstanceTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$filterIsInstanceTo":I
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    .line 345
    nop

    .end local v1    # "$this$filterIsInstance$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filterIsInstance":I
    check-cast v3, Ljava/lang/Iterable;

    .line 192
    nop

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 357
    .local v1, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/instance/ScopedInstanceFactory;

    .local v5, "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$a$-forEach-InstanceRegistry$dropScopeInstances$1":I
    invoke-virtual {v5, p1}, Lorg/koin/core/instance/ScopedInstanceFactory;->drop(Lorg/koin/core/scope/Scope;)V

    .line 357
    .end local v5    # "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v6    # "$i$a$-forEach-InstanceRegistry$dropScopeInstances$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 358
    :cond_2
    nop

    .line 193
    .end local v1    # "$i$f$forEach":I
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    return-void
.end method

.method public final getAll$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/instance/ResolutionContext;)Ljava/util/List;
    .locals 18
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "instanceContext"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "clazz"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "instanceContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 203
    nop

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 363
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 364
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lorg/koin/core/instance/InstanceFactory;

    .local v10, "factory":Lorg/koin/core/instance/InstanceFactory;
    const/4 v11, 0x0

    .line 204
    .local v11, "$i$a$-filter-InstanceRegistry$getAll$factories$1":I
    invoke-virtual {v10}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v12

    invoke-virtual {v12}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v12

    invoke-virtual {v1}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v13

    invoke-virtual {v13}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 205
    invoke-virtual {v10}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v12

    invoke-virtual {v12}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v12

    invoke-virtual {v1}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v13

    invoke-virtual {v13}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 207
    :cond_1
    invoke-virtual {v10}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v12

    invoke-virtual {v12}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v12

    invoke-virtual {v12}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, 0x1

    .line 364
    .end local v10    # "factory":Lorg/koin/core/instance/InstanceFactory;
    .end local v11    # "$i$a$-filter-InstanceRegistry$getAll$factories$1":I
    :goto_2
    if-eqz v12, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 363
    nop

    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 209
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 202
    nop

    .line 211
    .local v3, "factories":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 366
    .local v5, "$i$f$mapNotNull":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 375
    .local v8, "$i$f$mapNotNullTo":I
    move-object v9, v7

    .local v9, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 376
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 375
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v13

    check-cast v15, Lorg/koin/core/instance/InstanceFactory;

    .local v15, "it":Lorg/koin/core/instance/InstanceFactory;
    const/16 v16, 0x0

    .line 211
    .local v16, "$i$a$-mapNotNull-InstanceRegistry$getAll$1":I
    invoke-virtual {v15, v1}, Lorg/koin/core/instance/InstanceFactory;->get(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_5

    const/16 v17, 0x0

    .line 375
    .end local v15    # "it":Lorg/koin/core/instance/InstanceFactory;
    .end local v16    # "$i$a$-mapNotNull-InstanceRegistry$getAll$1":I
    :cond_5
    if-eqz v17, :cond_6

    move-object/from16 v15, v17

    .line 377
    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 375
    .local v16, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_6
    nop

    .end local v12    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 378
    :cond_7
    nop

    .line 379
    .end local v9    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNullTo":I
    check-cast v6, Ljava/util/List;

    .line 366
    nop

    .line 211
    .end local v4    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNull":I
    return-object v6
.end method

.method public final getInstances()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    return-object v0
.end method

.method public final get_koin()Lorg/koin/core/Koin;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final loadModules$koin_core(Ljava/util/Set;Z)V
    .locals 6
    .param p1, "modules"    # Ljava/util/Set;
    .param p2, "allowOverride"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/koin/core/module/Module;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "module":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$a$-forEach-InstanceRegistry$loadModules$1":I
    invoke-direct {p0, v4, p2}, Lorg/koin/core/registry/InstanceRegistry;->loadModule(Lorg/koin/core/module/Module;Z)V

    .line 55
    invoke-direct {p0, v4}, Lorg/koin/core/registry/InstanceRegistry;->addAllEagerInstances(Lorg/koin/core/module/Module;)V

    .line 56
    nop

    .line 232
    .end local v4    # "module":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$loadModules$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 233
    :cond_0
    nop

    .line 57
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;
    .locals 9
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    move-object v0, p3

    .local v0, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v1, p2

    .local v1, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v2, p1

    .local v2, "clazz$iv":Lkotlin/reflect/KClass;
    const/4 v3, 0x0

    .line 244
    .local v3, "$i$f$indexKey":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v4

    .local v5, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static {v2}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, ""

    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    nop

    .line 244
    .end local v5    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v6    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .end local v0    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v1    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v3    # "$i$f$indexKey":I
    nop

    .line 114
    .local v4, "indexKey":Ljava/lang/String;
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/instance/InstanceFactory;

    return-object v0
.end method

.method public final resolveInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "clazz"    # Lkotlin/reflect/KClass;
    .param p3, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p4, "instanceContext"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p2, p1, p3}, Lorg/koin/core/registry/InstanceRegistry;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 136
    .local v0, "factory":Lorg/koin/core/instance/InstanceFactory;
    :cond_0
    nop

    .line 137
    :try_start_0
    invoke-virtual {v0, p4}, Lorg/koin/core/instance/InstanceFactory;->get(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/koin/core/error/MissingScopeValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Lorg/koin/core/error/MissingScopeValueException;
    nop

    .line 136
    .end local v2    # "e":Lorg/koin/core/error/MissingScopeValueException;
    :goto_0
    return-object v1
.end method

.method public final resolveScopeArchetypeInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "klass"    # Lkotlin/reflect/KClass;
    .param p3, "context"    # Lorg/koin/core/instance/ResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/instance/ResolutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const-string v0, "klass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Lorg/koin/core/instance/ResolutionContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getScopeArchetype()Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lorg/koin/core/qualifier/TypeQualifier;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$a$-let-InstanceRegistry$resolveScopeArchetypeInstance$1":I
    invoke-virtual {p3, v0}, Lorg/koin/core/instance/ResolutionContext;->setScopeArchetype(Lorg/koin/core/qualifier/TypeQualifier;)V

    .line 125
    move-object v2, v0

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {p0, p1, p2, v2, p3}, Lorg/koin/core/registry/InstanceRegistry;->resolveInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .end local v0    # "it":Lorg/koin/core/qualifier/TypeQualifier;
    .end local v1    # "$i$a$-let-InstanceRegistry$resolveScopeArchetypeInstance$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final saveMapping(ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V
    .locals 14
    .param p1, "allowOverride"    # Z
    .param p2, "mapping"    # Ljava/lang/String;
    .param p3, "factory"    # Lorg/koin/core/instance/InstanceFactory;
    .param p4, "logWarning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "mapping"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/koin/core/instance/InstanceFactory;

    const/16 v3, 0x27

    const-string v4, "\' -> \'"

    if-eqz v2, :cond_4

    .local v2, "it":Lorg/koin/core/instance/InstanceFactory;
    const/4 v5, 0x0

    .line 88
    .local v5, "$i$a$-let-InstanceRegistry$saveMapping$1":I
    if-nez p1, :cond_0

    .line 89
    invoke-static {v1, v0}, Lorg/koin/core/module/ModuleKt;->throwOverrideError(Lorg/koin/core/instance/InstanceFactory;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_0
    if-eqz p4, :cond_3

    .line 91
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v6}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(+) override index \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/koin/core/logger/Logger;->warn(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 240
    .local v7, "$i$f$firstOrNull":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lorg/koin/core/instance/SingleInstanceFactory;

    .local v10, "it":Lorg/koin/core/instance/SingleInstanceFactory;
    const/4 v11, 0x0

    .line 93
    .local v11, "$i$a$-firstOrNull-InstanceRegistry$saveMapping$1$existingFactory$1":I
    invoke-virtual {v10}, Lorg/koin/core/instance/SingleInstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v12

    invoke-virtual {v1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 240
    .end local v10    # "it":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v11    # "$i$a$-firstOrNull-InstanceRegistry$saveMapping$1$existingFactory$1":I
    if-eqz v10, :cond_1

    goto :goto_0

    .line 241
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v9, 0x0

    .line 93
    .end local v6    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$firstOrNull":I
    :goto_0
    move-object v6, v9

    check-cast v6, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 94
    .local v6, "existingFactory":Lorg/koin/core/instance/SingleInstanceFactory;
    if-eqz v6, :cond_3

    .line 95
    iget-object v7, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v8

    invoke-virtual {v8}, Lorg/koin/core/definition/BeanDefinition;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v6    # "existingFactory":Lorg/koin/core/instance/SingleInstanceFactory;
    :cond_3
    :goto_1
    nop

    .line 87
    .end local v2    # "it":Lorg/koin/core/instance/InstanceFactory;
    .end local v5    # "$i$a$-let-InstanceRegistry$saveMapping$1":I
    nop

    .line 99
    :cond_4
    iget-object v2, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(+) index \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public final synthetic scopeDeclaredInstance(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZ)V
    .locals 33
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "scopeID"    # Ljava/lang/String;
    .param p4, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p5, "secondaryTypes"    # Ljava/util/List;
    .param p6, "allowOverride"    # Z
    .param p7, "holdInstance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/lang/String;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p7

    const-string v3, "scopeQualifier"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "scopeID"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "secondaryTypes"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "$i$f$scopeDeclaredInstance":I
    const/4 v6, 0x4

    const-string v7, "T"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 153
    nop

    .line 154
    .local v8, "primaryType":Lkotlin/reflect/KClass;
    move-object/from16 v9, p2

    .local v9, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v10, p4

    .local v10, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v11, v8

    .local v11, "clazz$iv":Lkotlin/reflect/KClass;
    const/4 v12, 0x0

    .line 251
    .local v12, "$i$f$indexKey":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    check-cast v14, Ljava/lang/StringBuilder;

    .local v14, "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 252
    .local v15, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static {v11}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/16 v6, 0x3a

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    const-string v17, ""

    if-eqz v10, :cond_1

    invoke-interface {v10}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v6, v18

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v6, v17

    :goto_1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v6, 0x3a

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    nop

    .line 251
    .end local v14    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .end local v9    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v12    # "$i$f$indexKey":I
    nop

    .line 155
    .local v6, "indexKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->getInstances()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v10, :cond_2

    check-cast v9, Lorg/koin/core/instance/ScopedInstanceFactory;

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 156
    .local v9, "existingFactory":Lorg/koin/core/instance/ScopedInstanceFactory;
    :goto_2
    if-eqz v9, :cond_3

    .line 157
    invoke-virtual {v9, v1, v0}, Lorg/koin/core/instance/ScopedInstanceFactory;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v21, v6

    goto/16 :goto_9

    .line 159
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    if-nez v2, :cond_4

    new-instance v10, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$1;

    invoke-direct {v10, v8}, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$1;-><init>(Lkotlin/reflect/KClass;)V

    goto :goto_3

    :cond_4
    new-instance v10, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$2;

    invoke-direct {v10, v0}, Lorg/koin/core/registry/InstanceRegistry$scopeDeclaredInstance$definitionFunction$2;-><init>(Ljava/lang/Object;)V

    :goto_3
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 160
    .local v10, "definitionFunction":Lkotlin/jvm/functions/Function2;
    sget-object v24, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v24, "kind$iv":Lorg/koin/core/definition/Kind;
    move-object/from16 v20, p2

    .local v20, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v22, p4

    .local v22, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v23, v10

    .local v23, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v25, p5

    .local v25, "secondaryTypes$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 258
    .local v11, "$i$f$_createDefinition":I
    new-instance v19, Lorg/koin/core/definition/BeanDefinition;

    .line 259
    const/4 v12, 0x4

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v21

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 258
    const/16 v27, 0x40

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v19 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .end local v11    # "$i$f$_createDefinition":I
    .end local v20    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v22    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v23    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v25    # "secondaryTypes$iv":Ljava/util/List;
    move-object/from16 v7, v19

    .line 161
    .local v7, "def":Lorg/koin/core/definition/BeanDefinition;
    new-instance v11, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v11, v7, v2}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;Z)V

    .line 162
    .local v11, "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual {v11}, Lorg/koin/core/instance/ScopedInstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v12

    invoke-virtual {v12}, Lorg/koin/core/definition/BeanDefinition;->getAllowOverride()Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 163
    .local v12, "hasFactoryAllowOverride":Z
    if-nez p6, :cond_6

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v20, v13

    :goto_5
    move-object/from16 v22, v11

    check-cast v22, Lorg/koin/core/instance/InstanceFactory;

    const/16 v24, 0x8

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v6

    .end local v6    # "indexKey":Ljava/lang/String;
    .local v21, "indexKey":Ljava/lang/String;
    invoke-static/range {v19 .. v25}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 164
    invoke-virtual {v7}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 265
    .local v15, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    check-cast v20, Lkotlin/reflect/KClass;

    .local v20, "clazz":Lkotlin/reflect/KClass;
    const/16 v22, 0x0

    .line 165
    .local v22, "$i$a$-forEach-InstanceRegistry$scopeDeclaredInstance$1":I
    invoke-virtual {v7}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v23

    .local v23, "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual {v7}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v13

    .local v13, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v25, v20

    .local v25, "clazz$iv":Lkotlin/reflect/KClass;
    const/16 v26, 0x0

    .line 266
    .local v26, "$i$f$indexKey":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v27

    check-cast v14, Ljava/lang/StringBuilder;

    .restart local v14    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    const/16 v28, 0x0

    .line 267
    .local v28, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-static/range {v25 .. v25}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/16 v2, 0x3a

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    if-eqz v23, :cond_7

    invoke-interface/range {v23 .. v23}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    move-object/from16 v2, v17

    :cond_8
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/16 v2, 0x3a

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    nop

    .line 266
    .end local v14    # "$this$indexKey_u24lambda_u240$iv":Ljava/lang/StringBuilder;
    .end local v28    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv":I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 165
    .end local v13    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v23    # "typeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v25    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v26    # "$i$f$indexKey":I
    nop

    .line 166
    .local v28, "index":Ljava/lang/String;
    if-nez p6, :cond_a

    if-eqz v12, :cond_9

    goto :goto_7

    :cond_9
    const/16 v27, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v27, 0x1

    :goto_8
    move-object/from16 v29, v11

    check-cast v29, Lorg/koin/core/instance/InstanceFactory;

    const/16 v31, 0x8

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, p0

    invoke-static/range {v26 .. v32}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 167
    nop

    .line 265
    .end local v20    # "clazz":Lkotlin/reflect/KClass;
    .end local v22    # "$i$a$-forEach-InstanceRegistry$scopeDeclaredInstance$1":I
    .end local v28    # "index":Ljava/lang/String;
    move/from16 v2, p7

    const/4 v13, 0x1

    .end local v19    # "element$iv":Ljava/lang/Object;
    goto :goto_6

    .line 273
    :cond_b
    nop

    .line 168
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach":I
    invoke-virtual {v11, v1, v0}, Lorg/koin/core/instance/ScopedInstanceFactory;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    .end local v7    # "def":Lorg/koin/core/definition/BeanDefinition;
    .end local v10    # "definitionFunction":Lkotlin/jvm/functions/Function2;
    .end local v11    # "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v12    # "hasFactoryAllowOverride":Z
    :goto_9
    return-void
.end method

.method public final size()I
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final unloadModules$koin_core(Ljava/util/Set;)V
    .locals 6
    .param p1, "modules"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 380
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "it":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 215
    .local v5, "$i$a$-forEach-InstanceRegistry$unloadModules$1":I
    invoke-direct {p0, v4}, Lorg/koin/core/registry/InstanceRegistry;->unloadModule(Lorg/koin/core/module/Module;)V

    .line 380
    .end local v4    # "it":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$unloadModules$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 381
    :cond_0
    nop

    .line 216
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
