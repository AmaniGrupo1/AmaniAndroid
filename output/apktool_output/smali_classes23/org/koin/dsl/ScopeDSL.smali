.class public final Lorg/koin/dsl/ScopeDSL;
.super Ljava/lang/Object;
.source "ScopeDSL.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeDSL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 2 Module.kt\norg/koin/core/module/ModuleKt\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 Module.kt\norg/koin/core/module/Module\n*L\n1#1,49:1\n239#2:50\n240#2:65\n229#2:67\n230#2:82\n229#2,2:85\n130#3,14:51\n130#3,14:68\n162#4:66\n163#4,2:83\n*S KotlinDebug\n*F\n+ 1 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n*L\n37#1:50\n37#1:65\n46#1:67\n46#1:82\n46#1:85,2\n37#1:51,14\n46#1:68,14\n46#1:66\n46#1:83,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JQ\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0006\u0008\u0000\u0010\u000e\u0018\u00012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032)\u0008\u0008\u0010\u0010\u001a#\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\u000e0\u0011j\u0008\u0012\u0004\u0012\u0002H\u000e`\u0015\u00a2\u0006\u0002\u0008\u0014H\u0086\u0008\u00f8\u0001\u0000JQ\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0006\u0008\u0000\u0010\u000e\u0018\u00012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032)\u0008\u0008\u0010\u0010\u001a#\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\u000e0\u0011j\u0008\u0012\u0004\u0012\u0002H\u000e`\u0015\u00a2\u0006\u0002\u0008\u0014H\u0086\u0008\u00f8\u0001\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/koin/dsl/ScopeDSL;",
        "",
        "scopeQualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "module",
        "Lorg/koin/core/module/Module;",
        "<init>",
        "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/module/Module;)V",
        "getScopeQualifier",
        "()Lorg/koin/core/qualifier/Qualifier;",
        "getModule",
        "()Lorg/koin/core/module/Module;",
        "scoped",
        "Lorg/koin/core/definition/KoinDefinition;",
        "T",
        "qualifier",
        "definition",
        "Lkotlin/Function2;",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lkotlin/ExtensionFunctionType;",
        "Lorg/koin/core/definition/Definition;",
        "factory",
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

.annotation runtime Lorg/koin/core/module/KoinDslMarker;
.end annotation


# instance fields
.field private final module:Lorg/koin/core/module/Module;

.field private final scopeQualifier:Lorg/koin/core/qualifier/Qualifier;


# direct methods
.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/module/Module;)V
    .locals 1
    .param p1, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "module"    # Lorg/koin/core/module/Module;

    const-string v0, "scopeQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/koin/dsl/ScopeDSL;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p2, p0, Lorg/koin/dsl/ScopeDSL;->module:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static synthetic factory$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 23
    .param p0, "$this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;

    .line 42
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 42
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const-string v1, "definition"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 46
    .local v1, "$i$f$factory":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    .local v3, "this_$iv":Lorg/koin/core/module/Module;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    .local v4, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v5, p2

    .local v5, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object v6, v0

    .local v6, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v7, 0x0

    .line 66
    .local v7, "$i$f$factory":I
    move-object v8, v4

    .local v8, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v9, v6

    .local v9, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v10, v5

    .local v10, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v11, 0x0

    .line 85
    .local v11, "$i$f$_factoryInstanceFactory":I
    sget-object v17, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .local v17, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v13, v8

    .local v13, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v16, v10

    .local v16, "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v15, v9

    .line 68
    .local v15, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 68
    .local v18, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v22, 0x0

    .line 75
    .local v22, "$i$f$_createDefinition":I
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 76
    const/4 v14, 0x4

    move-object/from16 p1, v0

    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    const-string v0, "T"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 75
    const/16 v20, 0x40

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .end local v13    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v16    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v18    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v22    # "$i$f$_createDefinition":I
    nop

    .line 86
    .local v12, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v0, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v0, v12}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 66
    .end local v8    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "$i$f$_factoryInstanceFactory":I
    .end local v12    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 83
    .local v0, "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v8, v0

    check-cast v8, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v3, v8}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 84
    new-instance v8, Lorg/koin/core/definition/KoinDefinition;

    move-object v9, v0

    check-cast v9, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v8, v3, v9}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 46
    .end local v0    # "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v3    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v4    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "$i$f$factory":I
    return-object v8
.end method

.method public static synthetic scoped$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 18
    .param p0, "$this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;

    .line 33
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 33
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const-string v1, "definition"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 37
    .local v1, "$i$f$scoped":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .local v3, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v4, p2

    .local v4, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object v5, v0

    .local v5, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v6, 0x0

    .line 50
    .local v6, "$i$f$_scopedInstanceFactory":I
    sget-object v12, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v12, "kind$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v8, v3

    .local v8, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v11, v4

    .local v11, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v10, v5

    .line 51
    .local v10, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 51
    .local v13, "secondaryTypes$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 58
    .local v17, "$i$f$_createDefinition":I
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 59
    const/4 v9, 0x4

    const-string v14, "T"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 61
    nop

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 58
    const/16 v15, 0x40

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .end local v8    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v12    # "kind$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v13    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 65
    .local v7, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v8, Lorg/koin/core/instance/ScopedInstanceFactory;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11, v9, v10}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .end local v3    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "$i$f$_scopedInstanceFactory":I
    .end local v7    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 38
    .local v8, "def":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    move-object v4, v8

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v3, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 39
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v4, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic factory(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 23
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    const-string v0, "definition"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$f$factory":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v2

    .local v2, "this_$iv":Lorg/koin/core/module/Module;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .local v3, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v4, p2

    .local v4, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v5, p1

    .local v5, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v6, 0x0

    .line 66
    .local v6, "$i$f$factory":I
    move-object v7, v3

    .local v7, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v8, v5

    .local v8, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v9, v4

    .local v9, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v10, 0x0

    .line 67
    .local v10, "$i$f$_factoryInstanceFactory":I
    sget-object v16, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .local v16, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v12, v7

    .local v12, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v15, v9

    .local v15, "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v14, v8

    .line 68
    .local v14, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 68
    .local v17, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 75
    .local v21, "$i$f$_createDefinition":I
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 76
    const/4 v13, 0x4

    move/from16 v22, v0

    .end local v0    # "$i$f$factory":I
    .local v22, "$i$f$factory":I
    const-string v0, "T"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 75
    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .end local v12    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v17    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$_createDefinition":I
    nop

    .line 82
    .local v11, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v0, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v0, v11}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 66
    .end local v7    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v10    # "$i$f$_factoryInstanceFactory":I
    .end local v11    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 83
    .local v0, "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v7, v0

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v7}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 84
    new-instance v7, Lorg/koin/core/definition/KoinDefinition;

    move-object v8, v0

    check-cast v8, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v7, v2, v8}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 46
    .end local v0    # "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v2    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v3    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "$i$f$factory":I
    return-object v7
.end method

.method public final getModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/koin/dsl/ScopeDSL;->module:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public final getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/koin/dsl/ScopeDSL;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final synthetic scoped(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 17
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    const-string v0, "definition"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$scoped":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .local v2, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v3, p2

    .local v3, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v4, p1

    .local v4, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v5, 0x0

    .line 50
    .local v5, "$i$f$_scopedInstanceFactory":I
    sget-object v11, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v11, "kind$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v7, v2

    .local v7, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v10, v3

    .local v10, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v9, v4

    .line 51
    .local v9, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 51
    .local v12, "secondaryTypes$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 58
    .local v16, "$i$f$_createDefinition":I
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 59
    const/4 v8, 0x4

    const-string v13, "T"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 61
    nop

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 58
    const/16 v14, 0x40

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .end local v7    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "kind$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v12    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$_createDefinition":I
    nop

    .line 65
    .local v6, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v7, Lorg/koin/core/instance/ScopedInstanceFactory;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v6, v10, v8, v9}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .end local v2    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v4    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "$i$f$_scopedInstanceFactory":I
    .end local v6    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 38
    .local v7, "def":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 39
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    move-object v4, v7

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v2, v3, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-object v2
.end method
