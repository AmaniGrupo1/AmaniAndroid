.class public final Lorg/koin/android/ext/koin/KoinExtKt;
.super Ljava/lang/Object;
.source "KoinExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinExt.kt\norg/koin/android/ext/koin/KoinExtKt\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n+ 3 Koin.kt\norg/koin/core/Koin\n+ 4 Scope.kt\norg/koin/core/scope/Scope\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Module.kt\norg/koin/core/module/Module\n+ 7 Module.kt\norg/koin/core/module/ModuleKt\n+ 8 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,104:1\n43#2:105\n43#2:112\n43#2:113\n130#3,4:106\n153#4:110\n1#5:111\n105#6,6:114\n111#6,5:141\n105#6,6:146\n111#6,5:173\n214#7,6:120\n220#7:140\n214#7,6:152\n220#7:172\n130#8,14:126\n130#8,14:158\n*S KotlinDebug\n*F\n+ 1 KoinExt.kt\norg/koin/android/ext/koin/KoinExtKt\n*L\n55#1:105\n88#1:112\n95#1:113\n81#1:106,4\n81#1:110\n62#1:114,6\n62#1:141,5\n64#1:146,6\n64#1:173,5\n62#1:120,6\n62#1:140\n64#1:152,6\n64#1:172\n62#1:126,14\n64#1:158,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "androidLogger",
        "Lorg/koin/core/KoinApplication;",
        "level",
        "Lorg/koin/core/logger/Level;",
        "androidContext",
        "Landroid/content/Context;",
        "androidFileProperties",
        "koinPropertyFile",
        "",
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
.method public static synthetic $r8$lambda$B5s9fl_OkEg1pFnuB8qTK-uqQnM(Landroid/content/Context;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroid/content/Context;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext$lambda$0$1(Landroid/content/Context;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eDTvrfD1RNTwsBCbKxLhE5MMTSc(Landroid/content/Context;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroid/app/Application;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext$lambda$0$0(Landroid/content/Context;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public static final androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;
    .locals 12
    .param p0, "$this$androidContext"    # Lorg/koin/core/KoinApplication;
    .param p1, "androidContext"    # Landroid/content/Context;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .local v1, "lvl$iv":Lorg/koin/core/logger/Level;
    const/4 v2, 0x0

    .line 105
    .local v2, "$i$f$isAt":I
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getLevel()Lorg/koin/core/logger/Level;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Lorg/koin/core/logger/Level;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 55
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v2    # "$i$f$isAt":I
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    const-string v1, "[init] declare Android Context"

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->info(Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v6

    .line 60
    new-instance v0, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v5, v0, v4, v1}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZZILjava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method static final androidContext$lambda$0(Landroid/content/Context;Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 22
    .param p0, "$androidContext"    # Landroid/content/Context;
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    move-object/from16 v0, p0

    const-string v1, "$this$module"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .local v1, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v3, p1

    .line 114
    .local v3, "$this$iv":Lorg/koin/core/module/Module;
    nop

    .line 115
    const/4 v4, 0x0

    .line 114
    .local v4, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 116
    const/4 v5, 0x0

    .line 114
    .local v5, "createdAtStart$iv":Z
    const/4 v6, 0x0

    .line 119
    .local v6, "$i$f$single":I
    move-object v7, v1

    .local v7, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v8, v4

    .line 120
    .local v8, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 123
    sget-object v9, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v9}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    check-cast v9, Lorg/koin/core/qualifier/Qualifier;

    .line 120
    .local v9, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v10, 0x0

    .line 125
    .local v10, "$i$f$_singleInstanceFactory":I
    sget-object v16, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .local v16, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v12, v9

    .local v12, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v14, v8

    .local v14, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v15, v7

    .line 126
    .local v15, "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 126
    .local v17, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 133
    .local v21, "$i$f$_createDefinition":I
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 134
    const-class v13, Landroid/app/Application;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 133
    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .end local v12    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v17    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$_createDefinition":I
    nop

    .line 140
    .local v11, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v12, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v12, v11}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 119
    .end local v7    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "$i$f$_singleInstanceFactory":I
    .end local v11    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 141
    .local v12, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v7, v12

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v3, v7}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 142
    invoke-virtual {v3}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    invoke-virtual {v3, v12}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 145
    :cond_0
    new-instance v7, Lorg/koin/core/definition/KoinDefinition;

    move-object v8, v12

    check-cast v8, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v7, v3, v8}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v3    # "$this$iv":Lorg/koin/core/module/Module;
    .end local v4    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "createdAtStart$iv":Z
    .end local v6    # "$i$f$single":I
    .end local v12    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 62
    invoke-static {v7, v1}, Lorg/koin/dsl/DefinitionBindingKt;->bind(Lorg/koin/core/definition/KoinDefinition;Lkotlin/reflect/KClass;)Lorg/koin/core/definition/KoinDefinition;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .restart local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v3, p1

    .line 146
    .restart local v3    # "$this$iv":Lorg/koin/core/module/Module;
    nop

    .line 147
    const/4 v4, 0x0

    .line 146
    .restart local v4    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 148
    const/4 v5, 0x0

    .line 146
    .restart local v5    # "createdAtStart$iv":Z
    const/4 v6, 0x0

    .line 151
    .restart local v6    # "$i$f$single":I
    move-object v7, v1

    .restart local v7    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object v8, v4

    .line 152
    .restart local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 155
    sget-object v9, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v9}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    check-cast v9, Lorg/koin/core/qualifier/Qualifier;

    .line 152
    .restart local v9    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v10, 0x0

    .line 157
    .restart local v10    # "$i$f$_singleInstanceFactory":I
    sget-object v16, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .restart local v16    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    move-object v12, v9

    .local v12, "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v14, v8

    .restart local v14    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v15, v7

    .line 158
    .restart local v15    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 162
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 158
    .restart local v17    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 165
    .restart local v21    # "$i$f$_createDefinition":I
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 166
    const-class v13, Landroid/content/Context;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 165
    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .end local v12    # "scopeQualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "definition$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v17    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$_createDefinition":I
    nop

    .line 172
    .restart local v11    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v12, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v12, v11}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 151
    .end local v7    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "$i$f$_singleInstanceFactory":I
    .end local v11    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    nop

    .line 173
    .local v12, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v7, v12

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v3, v7}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 174
    invoke-virtual {v3}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    invoke-virtual {v3, v12}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 177
    :cond_2
    new-instance v7, Lorg/koin/core/definition/KoinDefinition;

    move-object v8, v12

    check-cast v8, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v7, v3, v8}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 66
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v3    # "$this$iv":Lorg/koin/core/module/Module;
    .end local v4    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "createdAtStart$iv":Z
    .end local v6    # "$i$f$single":I
    .end local v12    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final androidContext$lambda$0$0(Landroid/content/Context;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroid/app/Application;
    .locals 1
    .param p0, "$androidContext"    # Landroid/content/Context;
    .param p1, "$this$single"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/ParametersHolder;

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method private static final androidContext$lambda$0$1(Landroid/content/Context;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroid/content/Context;
    .locals 1
    .param p0, "$androidContext"    # Landroid/content/Context;
    .param p1, "$this$single"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/ParametersHolder;

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    return-object p0
.end method

.method public static final androidFileProperties(Lorg/koin/core/KoinApplication;Ljava/lang/String;)Lorg/koin/core/KoinApplication;
    .locals 11
    .param p0, "$this$androidFileProperties"    # Lorg/koin/core/KoinApplication;
    .param p1, "koinPropertyFile"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koinPropertyFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 81
    .local v0, "koinProperties":Ljava/util/Properties;
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 106
    .local v1, "$this$iv":Lorg/koin/core/Koin;
    nop

    .line 107
    const/4 v2, 0x0

    .line 106
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 108
    const/4 v3, 0x0

    .line 106
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 109
    .local v4, "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    move-object v6, v3

    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v7, v2

    .local v7, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$f$get":I
    const-class v9, Landroid/content/Context;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v5, v9, v7, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 109
    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "$i$f$get":I
    nop

    .line 81
    .end local v1    # "$this$iv":Lorg/koin/core/Koin;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$get":I
    move-object v1, v5

    check-cast v1, Landroid/content/Context;

    .line 82
    .local v1, "androidContext":Landroid/content/Context;
    nop

    .line 83
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 84
    .local v2, "hasFile":Z
    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 85
    nop

    .line 86
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/InputStream;

    .line 111
    .local v6, "it":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 86
    .local v7, "$i$a$-use-KoinExtKt$androidFileProperties$1":I
    invoke-virtual {v0, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .end local v6    # "it":Ljava/io/InputStream;
    .end local v7    # "$i$a$-use-KoinExtKt$androidFileProperties$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x0

    :try_start_3
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/Koin;->getPropertyRegistry()Lorg/koin/core/registry/PropertyRegistry;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/koin/core/registry/PropertyRegistryExtKt;->saveProperties(Lorg/koin/core/registry/PropertyRegistry;Ljava/util/Properties;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 88
    .local v5, "nb":Lkotlin/Unit;
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v6

    invoke-virtual {v6}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v6

    sget-object v7, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .local v6, "this_$iv":Lorg/koin/core/logger/Logger;
    .local v7, "lvl$iv":Lorg/koin/core/logger/Level;
    const/4 v8, 0x0

    .line 112
    .local v8, "$i$f$isAt":I
    invoke-virtual {v6}, Lorg/koin/core/logger/Logger;->getLevel()Lorg/koin/core/logger/Level;

    move-result-object v9

    move-object v10, v7

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v9, v10}, Lorg/koin/core/logger/Level;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gtz v9, :cond_1

    move v3, v4

    .line 88
    .end local v6    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v7    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v8    # "$i$f$isAt":I
    :cond_1
    if-eqz v3, :cond_4

    .line 89
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Android-Properties] loaded "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " properties from assets/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v5    # "nb":Lkotlin/Unit;
    goto/16 :goto_1

    .line 86
    :catchall_0
    move-exception v3

    .end local v0    # "koinProperties":Ljava/util/Properties;
    .end local v1    # "androidContext":Landroid/content/Context;
    .end local v2    # "hasFile":Z
    .end local p0    # "$this$androidFileProperties":Lorg/koin/core/KoinApplication;
    .end local p1    # "koinPropertyFile":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "koinProperties":Ljava/util/Properties;
    .restart local v1    # "androidContext":Landroid/content/Context;
    .restart local v2    # "hasFile":Z
    .restart local p0    # "$this$androidFileProperties":Lorg/koin/core/KoinApplication;
    .restart local p1    # "koinPropertyFile":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "koinProperties":Ljava/util/Properties;
    .end local v1    # "androidContext":Landroid/content/Context;
    .end local v2    # "hasFile":Z
    .end local p0    # "$this$androidFileProperties":Lorg/koin/core/KoinApplication;
    .end local p1    # "koinPropertyFile":Ljava/lang/String;
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 91
    .restart local v0    # "koinProperties":Ljava/util/Properties;
    .restart local v1    # "androidContext":Landroid/content/Context;
    .restart local v2    # "hasFile":Z
    .restart local p0    # "$this$androidFileProperties":Lorg/koin/core/KoinApplication;
    .restart local p1    # "koinPropertyFile":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Android-Properties] error for binding properties : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/koin/core/logger/Logger;->error(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v5

    sget-object v6, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .local v5, "this_$iv":Lorg/koin/core/logger/Logger;
    .local v6, "lvl$iv":Lorg/koin/core/logger/Level;
    const/4 v7, 0x0

    .line 113
    .local v7, "$i$f$isAt":I
    invoke-virtual {v5}, Lorg/koin/core/logger/Logger;->getLevel()Lorg/koin/core/logger/Level;

    move-result-object v8

    move-object v9, v6

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v8, v9}, Lorg/koin/core/logger/Level;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gtz v8, :cond_3

    move v3, v4

    .line 95
    .end local v5    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v6    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v7    # "$i$f$isAt":I
    :cond_3
    if-eqz v3, :cond_4

    .line 96
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Android-Properties] no assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file to load"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v2    # "hasFile":Z
    goto :goto_1

    .line 99
    :catch_1
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Android-Properties] error while loading properties from assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/koin/core/logger/Logger;->error(Ljava/lang/String;)V

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-object p0
.end method

.method public static synthetic androidFileProperties$default(Lorg/koin/core/KoinApplication;Ljava/lang/String;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;
    .locals 0

    .line 77
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 78
    const-string p1, "koin.properties"

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lorg/koin/android/ext/koin/KoinExtKt;->androidFileProperties(Lorg/koin/core/KoinApplication;Ljava/lang/String;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method

.method public static final androidLogger(Lorg/koin/core/KoinApplication;Lorg/koin/core/logger/Level;)Lorg/koin/core/KoinApplication;
    .locals 2
    .param p0, "$this$androidLogger"    # Lorg/koin/core/KoinApplication;
    .param p1, "level"    # Lorg/koin/core/logger/Level;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    new-instance v1, Lorg/koin/android/logger/AndroidLogger;

    invoke-direct {v1, p1}, Lorg/koin/android/logger/AndroidLogger;-><init>(Lorg/koin/core/logger/Level;)V

    check-cast v1, Lorg/koin/core/logger/Logger;

    invoke-virtual {v0, v1}, Lorg/koin/core/Koin;->setupLogger(Lorg/koin/core/logger/Logger;)V

    .line 46
    return-object p0
.end method

.method public static synthetic androidLogger$default(Lorg/koin/core/KoinApplication;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;
    .locals 0

    .line 42
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 43
    sget-object p1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .line 42
    :cond_0
    invoke-static {p0, p1}, Lorg/koin/android/ext/koin/KoinExtKt;->androidLogger(Lorg/koin/core/KoinApplication;Lorg/koin/core/logger/Level;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method
