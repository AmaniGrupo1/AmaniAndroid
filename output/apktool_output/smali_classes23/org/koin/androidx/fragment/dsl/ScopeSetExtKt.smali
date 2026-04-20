.class public final Lorg/koin/androidx/fragment/dsl/ScopeSetExtKt;
.super Ljava/lang/Object;
.source "ScopeSetExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeSetExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeSetExt.kt\norg/koin/androidx/fragment/dsl/ScopeSetExtKt\n+ 2 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Module.kt\norg/koin/core/module/ModuleKt\n+ 5 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,35:1\n46#2:36\n162#3:37\n163#3,2:54\n229#4:38\n230#4:53\n130#5,14:39\n*S KotlinDebug\n*F\n+ 1 ScopeSetExt.kt\norg/koin/androidx/fragment/dsl/ScopeSetExtKt\n*L\n34#1:36\n34#1:37\n34#1:54,2\n34#1:38\n34#1:53\n34#1:39,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001aY\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062)\u0008\u0008\u0010\u0007\u001a#\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00020\u0008j\u0008\u0012\u0004\u0012\u0002H\u0002`\u000c\u00a2\u0006\u0002\u0008\u000bH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "fragment",
        "Lorg/koin/core/definition/KoinDefinition;",
        "T",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/koin/dsl/ScopeDSL;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "definition",
        "Lkotlin/Function2;",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lkotlin/ExtensionFunctionType;",
        "Lorg/koin/core/definition/Definition;",
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
.method public static final synthetic fragment(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 28
    .param p0, "$this$fragment"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
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

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$fragment":I
    move-object/from16 v3, p2

    .local v3, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    move-object/from16 v5, p1

    .local v5, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v6, 0x0

    .line 36
    .local v6, "$i$f$factory":I
    invoke-virtual {v4}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v7

    .local v7, "this_$iv$iv":Lorg/koin/core/module/Module;
    invoke-virtual {v4}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v8

    .local v8, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v9, v5

    .local v9, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v10, v3

    .local v10, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v11, 0x0

    .line 37
    .local v11, "$i$f$factory":I
    move-object v12, v8

    .local v12, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v13, v10

    .local v13, "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v14, v9

    .local v14, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v15, 0x0

    .line 38
    .local v15, "$i$f$_factoryInstanceFactory":I
    sget-object v21, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .local v21, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object/from16 v17, v12

    .local v17, "scopeQualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v20, v13

    .local v20, "definition$iv$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v19, v14

    .line 39
    .local v19, "qualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    .line 39
    .local v22, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v26, 0x0

    .line 46
    .local v26, "$i$f$_createDefinition":I
    new-instance v16, Lorg/koin/core/definition/BeanDefinition;

    .line 47
    move/from16 v27, v0

    .end local v0    # "$i$f$fragment":I
    .local v27, "$i$f$fragment":I
    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 46
    const/16 v24, 0x40

    const/16 v25, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v16 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .end local v17    # "scopeQualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v19    # "qualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v20    # "definition$iv$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v22    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v26    # "$i$f$_createDefinition":I
    move-object/from16 v0, v16

    .line 53
    .local v0, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 37
    .end local v0    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v14    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "$i$f$_factoryInstanceFactory":I
    nop

    .line 54
    .local v1, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v0, v1

    check-cast v0, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v7, v0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 55
    new-instance v0, Lorg/koin/core/definition/KoinDefinition;

    move-object v12, v1

    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v0, v7, v12}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 36
    .end local v1    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v7    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v8    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "$i$f$factory":I
    nop

    .line 34
    .end local v3    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v4    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "$i$f$factory":I
    return-object v0
.end method

.method public static synthetic fragment$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 28
    .param p0, "$this$fragment_u24default"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;

    .line 31
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 31
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "definition"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 34
    .local v1, "$i$f$fragment":I
    move-object/from16 v4, p2

    .local v4, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v5, p0

    .local v5, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    move-object v6, v0

    .local v6, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v7, 0x0

    .line 36
    .local v7, "$i$f$factory":I
    invoke-virtual {v5}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v8

    .local v8, "this_$iv$iv":Lorg/koin/core/module/Module;
    invoke-virtual {v5}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v9

    .local v9, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v10, v6

    .local v10, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v11, v4

    .local v11, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v12, 0x0

    .line 37
    .local v12, "$i$f$factory":I
    move-object v13, v9

    .local v13, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v14, v11

    .local v14, "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v15, v10

    .local v15, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/16 v16, 0x0

    .line 38
    .local v16, "$i$f$_factoryInstanceFactory":I
    sget-object v22, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .local v22, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object/from16 v18, v13

    .local v18, "scopeQualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v21, v14

    .local v21, "definition$iv$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v20, v15

    .line 39
    .local v20, "qualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v23

    .line 39
    .local v23, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v27, 0x0

    .line 46
    .local v27, "$i$f$_createDefinition":I
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 47
    move-object/from16 p1, v0

    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    const/4 v0, 0x4

    move/from16 p3, v1

    .end local v1    # "$i$f$fragment":I
    .local p3, "$i$f$fragment":I
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v19

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 46
    const/16 v25, 0x40

    const/16 v26, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v17 .. v26}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .end local v18    # "scopeQualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v20    # "qualifier$iv$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v21    # "definition$iv$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v23    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v27    # "$i$f$_createDefinition":I
    move-object/from16 v0, v17

    .line 53
    .local v0, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 37
    .end local v0    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v13    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v15    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v16    # "$i$f$_factoryInstanceFactory":I
    nop

    .line 54
    .local v1, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v0, v1

    check-cast v0, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v8, v0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 55
    new-instance v0, Lorg/koin/core/definition/KoinDefinition;

    move-object v13, v1

    check-cast v13, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v0, v8, v13}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 36
    .end local v1    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v8    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v9    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v12    # "$i$f$factory":I
    nop

    .line 34
    .end local v4    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v6    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "$i$f$factory":I
    return-object v0
.end method
