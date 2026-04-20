.class public final Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt;
.super Ljava/lang/Object;
.source "KoinApplicationExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinApplicationExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinApplicationExt.kt\norg/koin/androidx/fragment/koin/KoinApplicationExtKt\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,34:1\n105#2,6:35\n111#2,5:62\n214#3,6:41\n220#3:61\n130#4,14:47\n*S KotlinDebug\n*F\n+ 1 KoinApplicationExt.kt\norg/koin/androidx/fragment/koin/KoinApplicationExtKt\n*L\n25#1:35,6\n25#1:62,5\n25#1:41,6\n25#1:61\n25#1:47,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "fragmentFactoryModule",
        "Lorg/koin/core/module/Module;",
        "fragmentFactory",
        "",
        "Lorg/koin/core/KoinApplication;",
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


# static fields
.field private static final fragmentFactoryModule:Lorg/koin/core/module/Module;


# direct methods
.method public static synthetic $r8$lambda$5OpmMcCQ_F3uY3PcYro_gomtURg(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/fragment/app/FragmentFactory;
    .locals 0

    invoke-static {p0, p1}, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt;->fragmentFactoryModule$lambda$0$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/fragment/app/FragmentFactory;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt;->fragmentFactoryModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final fragmentFactory(Lorg/koin/core/KoinApplication;)V
    .locals 7
    .param p0, "$this$fragmentFactory"    # Lorg/koin/core/KoinApplication;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    sget-object v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt;->fragmentFactoryModule:Lorg/koin/core/module/Module;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZZILjava/lang/Object;)V

    .line 34
    return-void
.end method

.method static final fragmentFactoryModule$lambda$0(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 21
    .param p0, "$this$module"    # Lorg/koin/core/module/Module;

    const-string v0, "$this$module"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$$ExternalSyntheticLambda1;-><init>()V

    .local v0, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v2, p0

    .line 35
    .local v2, "$this$iv":Lorg/koin/core/module/Module;
    nop

    .line 36
    const/4 v3, 0x0

    .line 35
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 37
    const/4 v4, 0x0

    .line 35
    .local v4, "createdAtStart$iv":Z
    const/4 v5, 0x0

    .line 40
    .local v5, "$i$f$single":I
    move-object v6, v0

    .local v6, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v7, v3

    .line 41
    .local v7, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 44
    sget-object v8, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v8}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v8

    check-cast v8, Lorg/koin/core/qualifier/Qualifier;

    .line 41
    .local v8, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v9, 0x0

    .line 46
    .local v9, "$i$f$_singleInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .local v15, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v11, v8

    .local v11, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v14, v6

    .local v14, "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v13, v7

    .line 47
    .local v13, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 47
    .local v16, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 54
    .local v20, "$i$f$_createDefinition":I
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 55
    const-class v12, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 54
    const/16 v18, 0x40

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .end local v11    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v15    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v20    # "$i$f$_createDefinition":I
    nop

    .line 61
    .local v10, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v11, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v11, v10}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 40
    .end local v6    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v7    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "$i$f$_singleInstanceFactory":I
    .end local v10    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 62
    .local v11, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v6, v11

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 63
    invoke-virtual {v2}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v2, v11}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 66
    :cond_0
    new-instance v6, Lorg/koin/core/definition/KoinDefinition;

    move-object v7, v11

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v6, v2, v7}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 26
    .end local v0    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$this$iv":Lorg/koin/core/module/Module;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "createdAtStart$iv":Z
    .end local v5    # "$i$f$single":I
    .end local v11    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final fragmentFactoryModule$lambda$0$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/fragment/app/FragmentFactory;
    .locals 3
    .param p0, "$this$single"    # Lorg/koin/core/scope/Scope;
    .param p1, "it"    # Lorg/koin/core/parameter/ParametersHolder;

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;-><init>(Lorg/koin/core/scope/Scope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/fragment/app/FragmentFactory;

    return-object v0
.end method
