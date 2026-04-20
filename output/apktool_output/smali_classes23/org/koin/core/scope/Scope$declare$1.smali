.class public final Lorg/koin/core/scope/Scope$declare$1;
.super Ljava/lang/Object;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->declare(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n+ 2 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,456:1\n153#2,2:457\n155#2,6:466\n161#2,4:479\n165#2,3:484\n168#2,3:488\n114#3,7:459\n137#3,7:472\n1915#4:483\n1916#4:487\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n*L\n364#1:457,2\n364#1:466,6\n364#1:479,4\n364#1:484,3\n364#1:488,3\n364#1:459,7\n364#1:472,7\n364#1:483\n364#1:487\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $allowOverride:Z

.field final synthetic $holdInstance:Z

.field final synthetic $instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $secondaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/core/scope/Scope$declare$1;->$instance:Ljava/lang/Object;

    iput-object p3, p0, Lorg/koin/core/scope/Scope$declare$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p4, p0, Lorg/koin/core/scope/Scope$declare$1;->$secondaryTypes:Ljava/util/List;

    iput-boolean p5, p0, Lorg/koin/core/scope/Scope$declare$1;->$allowOverride:Z

    iput-boolean p6, p0, Lorg/koin/core/scope/Scope$declare$1;->$holdInstance:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$declare$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 35

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->get_koin()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v1

    .line 365
    iget-object v2, v0, Lorg/koin/core/scope/Scope$declare$1;->$instance:Ljava/lang/Object;

    .line 366
    iget-object v3, v0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .line 367
    iget-object v4, v0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v4}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v4

    .line 368
    iget-object v5, v0, Lorg/koin/core/scope/Scope$declare$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 369
    iget-object v6, v0, Lorg/koin/core/scope/Scope$declare$1;->$secondaryTypes:Ljava/util/List;

    .line 370
    iget-boolean v7, v0, Lorg/koin/core/scope/Scope$declare$1;->$allowOverride:Z

    .line 371
    iget-boolean v8, v0, Lorg/koin/core/scope/Scope$declare$1;->$holdInstance:Z

    .line 364
    nop

    .local v2, "instance$iv":Ljava/lang/Object;
    .local v4, "scopeID$iv":Ljava/lang/String;
    .local v6, "secondaryTypes$iv":Ljava/util/List;
    .local v8, "holdInstance$iv":Z
    move-object v9, v1

    .local v3, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .local v5, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .local v7, "allowOverride$iv":Z
    .local v9, "this_$iv":Lorg/koin/core/registry/InstanceRegistry;
    const/4 v1, 0x0

    .local v1, "$i$f$scopeDeclaredInstance":I
    const/4 v10, 0x4

    const-string v11, "T"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 457
    nop

    .line 458
    .local v12, "primaryType$iv":Lkotlin/reflect/KClass;
    move-object v13, v3

    .local v13, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v14, v5

    .local v14, "typeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v15, v12

    .local v15, "clazz$iv$iv":Lkotlin/reflect/KClass;
    const/16 v16, 0x0

    .line 459
    .local v16, "$i$f$indexKey":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/StringBuilder;

    .local v10, "$this$indexKey_u24lambda_u240$iv$iv":Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    .line 460
    .local v19, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv$iv":I
    invoke-static {v15}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    const-string v20, ""

    if-eqz v14, :cond_1

    invoke-interface {v14}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, v21

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, v20

    :goto_1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 465
    nop

    .line 459
    .end local v10    # "$this$indexKey_u24lambda_u240$iv$iv":Ljava/lang/StringBuilder;
    .end local v19    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv$iv":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .end local v13    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "typeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "clazz$iv$iv":Lkotlin/reflect/KClass;
    .end local v16    # "$i$f$indexKey":I
    nop

    .line 466
    .local v0, "indexKey$iv":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/koin/core/registry/InstanceRegistry;->getInstances()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v13, v10, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v13, :cond_2

    check-cast v10, Lorg/koin/core/instance/ScopedInstanceFactory;

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 467
    .local v10, "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    :goto_2
    if-eqz v10, :cond_3

    .line 468
    invoke-virtual {v10, v4, v2}, Lorg/koin/core/instance/ScopedInstanceFactory;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v25, v0

    move/from16 v33, v1

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    goto/16 :goto_9

    .line 470
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    if-nez v8, :cond_4

    new-instance v13, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$scopeDeclaredInstance$1;

    invoke-direct {v13, v12}, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$scopeDeclaredInstance$1;-><init>(Lkotlin/reflect/KClass;)V

    goto :goto_3

    :cond_4
    new-instance v13, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$scopeDeclaredInstance$2;

    invoke-direct {v13, v2}, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$scopeDeclaredInstance$2;-><init>(Ljava/lang/Object;)V

    :goto_3
    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v13

    .line 471
    .local v16, "definitionFunction$iv":Lkotlin/jvm/functions/Function2;
    sget-object v27, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v27, "kind$iv$iv":Lorg/koin/core/definition/Kind;
    move-object/from16 v23, v3

    .local v23, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v25, v5

    .local v25, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v26, v16

    .local v26, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v28, v6

    .local v28, "secondaryTypes$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 472
    .local v13, "$i$f$_createDefinition":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 473
    const/4 v14, 0x4

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v24

    .line 475
    nop

    .line 476
    nop

    .line 477
    nop

    .line 478
    nop

    .line 472
    const/16 v30, 0x40

    const/16 v31, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v22 .. v31}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 471
    .end local v13    # "$i$f$_createDefinition":I
    .end local v23    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v25    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v26    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v27    # "kind$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v28    # "secondaryTypes$iv$iv":Ljava/util/List;
    move-object/from16 v11, v22

    .line 479
    .local v11, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v13, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v13, v11, v8}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;Z)V

    .line 480
    .local v13, "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual {v13}, Lorg/koin/core/instance/ScopedInstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v14

    invoke-virtual {v14}, Lorg/koin/core/definition/BeanDefinition;->getAllowOverride()Ljava/lang/Boolean;

    move-result-object v14

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    .line 481
    .local v18, "hasFactoryAllowOverride$iv":Z
    const/16 v19, 0x0

    if-nez v7, :cond_6

    if-eqz v18, :cond_5

    goto :goto_4

    :cond_5
    move-object v14, v10

    move/from16 v10, v19

    goto :goto_5

    :cond_6
    :goto_4
    move-object v14, v10

    move/from16 v10, v17

    .end local v10    # "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .local v14, "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    :goto_5
    move-object v15, v12

    .end local v12    # "primaryType$iv":Lkotlin/reflect/KClass;
    .local v15, "primaryType$iv":Lkotlin/reflect/KClass;
    move-object v12, v13

    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    move-object/from16 v22, v14

    .end local v14    # "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .local v22, "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    const/16 v14, 0x8

    move-object/from16 v23, v15

    .end local v15    # "primaryType$iv":Lkotlin/reflect/KClass;
    .local v23, "primaryType$iv":Lkotlin/reflect/KClass;
    const/4 v15, 0x0

    move-object/from16 v24, v13

    .end local v13    # "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .local v24, "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    const/4 v13, 0x0

    move-object/from16 v34, v11

    move-object v11, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v34

    .local v0, "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .local v11, "indexKey$iv":Ljava/lang/String;
    .local v24, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    invoke-static/range {v9 .. v15}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 482
    move-object/from16 v25, v11

    .end local v11    # "indexKey$iv":Ljava/lang/String;
    .local v25, "indexKey$iv":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v10

    move-object/from16 v26, v10

    check-cast v26, Ljava/lang/Iterable;

    .local v26, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/16 v27, 0x0

    .line 483
    .local v27, "$i$f$forEach":I
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    .local v29, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v30, v29

    check-cast v30, Lkotlin/reflect/KClass;

    .local v30, "clazz$iv":Lkotlin/reflect/KClass;
    const/16 v31, 0x0

    .line 484
    .local v31, "$i$a$-forEach-InstanceRegistry$scopeDeclaredInstance$1$iv":I
    invoke-virtual/range {v24 .. v24}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v10

    .local v10, "typeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    invoke-virtual/range {v24 .. v24}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v11

    .local v11, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v12, v30

    .local v12, "clazz$iv$iv":Lkotlin/reflect/KClass;
    const/4 v13, 0x0

    .line 459
    .local v13, "$i$f$indexKey":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v14

    check-cast v15, Ljava/lang/StringBuilder;

    .local v15, "$this$indexKey_u24lambda_u240$iv$iv":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    .line 460
    .local v32, "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv$iv":I
    move/from16 v33, v1

    .end local v1    # "$i$f$scopeDeclaredInstance":I
    .local v33, "$i$f$scopeDeclaredInstance":I
    invoke-static {v12}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/16 v1, 0x3a

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    if-eqz v10, :cond_7

    invoke-interface {v10}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    move-object/from16 v1, v20

    :cond_8
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v1, 0x3a

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 465
    nop

    .line 459
    .end local v15    # "$this$indexKey_u24lambda_u240$iv$iv":Ljava/lang/StringBuilder;
    .end local v32    # "$i$a$-buildString-BeanDefinitionKt$indexKey$1$iv$iv":I
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 484
    .end local v10    # "typeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "clazz$iv$iv":Lkotlin/reflect/KClass;
    .end local v13    # "$i$f$indexKey":I
    move-object v11, v14

    .line 485
    .local v11, "index$iv":Ljava/lang/String;
    if-nez v7, :cond_a

    if-eqz v18, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v10, v19

    goto :goto_8

    :cond_a
    :goto_7
    move/from16 v10, v17

    :goto_8
    move-object v12, v0

    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 486
    nop

    .line 483
    .end local v11    # "index$iv":Ljava/lang/String;
    .end local v30    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v31    # "$i$a$-forEach-InstanceRegistry$scopeDeclaredInstance$1$iv":I
    move/from16 v1, v33

    .end local v29    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 487
    .end local v33    # "$i$f$scopeDeclaredInstance":I
    .restart local v1    # "$i$f$scopeDeclaredInstance":I
    :cond_b
    move/from16 v33, v1

    .line 488
    .end local v1    # "$i$f$scopeDeclaredInstance":I
    .end local v26    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v27    # "$i$f$forEach":I
    .restart local v33    # "$i$f$scopeDeclaredInstance":I
    invoke-virtual {v0, v4, v2}, Lorg/koin/core/instance/ScopedInstanceFactory;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    .end local v0    # "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v16    # "definitionFunction$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "hasFactoryAllowOverride$iv":Z
    .end local v24    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    :goto_9
    nop

    .line 373
    .end local v2    # "instance$iv":Ljava/lang/Object;
    .end local v3    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "scopeID$iv":Ljava/lang/String;
    .end local v5    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "secondaryTypes$iv":Ljava/util/List;
    .end local v7    # "allowOverride$iv":Z
    .end local v8    # "holdInstance$iv":Z
    .end local v9    # "this_$iv":Lorg/koin/core/registry/InstanceRegistry;
    .end local v22    # "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v23    # "primaryType$iv":Lkotlin/reflect/KClass;
    .end local v25    # "indexKey$iv":Ljava/lang/String;
    .end local v33    # "$i$f$scopeDeclaredInstance":I
    return-void
.end method
