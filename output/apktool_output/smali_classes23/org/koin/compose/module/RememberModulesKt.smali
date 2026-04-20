.class public final Lorg/koin/compose/module/RememberModulesKt;
.super Ljava/lang/Object;
.source "RememberModules.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRememberModules.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberModules.kt\norg/koin/compose/module/RememberModulesKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,49:1\n1128#2,6:50\n*S KotlinDebug\n*F\n+ 1 RememberModules.kt\norg/koin/compose/module/RememberModulesKt\n*L\n45#1:50,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aN\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0019\u0008\u0006\u0010\u0006\u001a\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0002\u0008\nH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "rememberKoinModules",
        "",
        "unloadOnForgotten",
        "",
        "unloadOnAbandoned",
        "unloadModules",
        "modules",
        "Lkotlin/Function0;",
        "",
        "Lorg/koin/core/module/Module;",
        "Landroidx/compose/runtime/DisallowComposableCalls;",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "koin-compose_release"
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
.method public static final rememberKoinModules(Ljava/lang/Boolean;Ljava/lang/Boolean;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0, "unloadOnForgotten"    # Ljava/lang/Boolean;
    .param p1, "unloadOnAbandoned"    # Ljava/lang/Boolean;
    .param p2, "unloadModules"    # Z
    .param p3, "modules"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x70a
        key = -0x658a1008
        startOffset = 0x575
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    move-object/from16 v0, p4

    const/4 v1, 0x0

    .line 43
    .local v1, "$i$f$rememberKoinModules":I
    const v2, -0x658a1008

    const-string v3, "CC(rememberKoinModules)N(unloadOnForgotten,unloadOnAbandoned,unloadModules,modules)43@1647L9,44@1661L139:RememberModules.kt#48p8hv"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    .line 39
    const/4 v2, 0x0

    .end local p0    # "unloadOnForgotten":Ljava/lang/Boolean;
    .local v2, "unloadOnForgotten":Ljava/lang/Boolean;
    goto :goto_0

    .line 43
    .end local v2    # "unloadOnForgotten":Ljava/lang/Boolean;
    .restart local p0    # "unloadOnForgotten":Ljava/lang/Boolean;
    :cond_0
    move-object/from16 v2, p0

    .line 39
    .end local p0    # "unloadOnForgotten":Ljava/lang/Boolean;
    .restart local v2    # "unloadOnForgotten":Ljava/lang/Boolean;
    :goto_0
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_1

    .line 40
    const/4 v3, 0x0

    .end local p1    # "unloadOnAbandoned":Ljava/lang/Boolean;
    .local v3, "unloadOnAbandoned":Ljava/lang/Boolean;
    goto :goto_1

    .line 39
    .end local v3    # "unloadOnAbandoned":Ljava/lang/Boolean;
    .restart local p1    # "unloadOnAbandoned":Ljava/lang/Boolean;
    :cond_1
    move-object/from16 v3, p1

    .line 40
    .end local p1    # "unloadOnAbandoned":Ljava/lang/Boolean;
    .restart local v3    # "unloadOnAbandoned":Ljava/lang/Boolean;
    :goto_1
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_2

    .line 41
    const/4 v4, 0x0

    .end local p2    # "unloadModules":Z
    .local v4, "unloadModules":Z
    goto :goto_2

    .line 40
    .end local v4    # "unloadModules":Z
    .restart local p2    # "unloadModules":Z
    :cond_2
    move/from16 v4, p2

    .line 41
    .end local p2    # "unloadModules":Z
    .restart local v4    # "unloadModules":Z
    :goto_2
    and-int/lit8 v5, p6, 0x8

    if-eqz v5, :cond_3

    .line 42
    sget-object v5, Lorg/koin/compose/module/RememberModulesKt$rememberKoinModules$1;->INSTANCE:Lorg/koin/compose/module/RememberModulesKt$rememberKoinModules$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .end local p3    # "modules":Lkotlin/jvm/functions/Function0;
    .local v5, "modules":Lkotlin/jvm/functions/Function0;
    goto :goto_3

    .line 41
    .end local v5    # "modules":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "modules":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v5, p3

    .line 42
    .end local p3    # "modules":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "modules":Lkotlin/jvm/functions/Function0;
    :goto_3
    nop

    .line 44
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lorg/koin/compose/KoinApplicationKt;->getKoin(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;

    move-result-object v6

    .line 45
    .local v6, "koin":Lorg/koin/core/Koin;
    const v7, -0x2b460c7d

    const-string v8, "CC(remember):RememberModules.kt#9igjgp"

    invoke-static {v0, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv":Z
    move-object/from16 v8, p4

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 50
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_6

    .line 52
    const/4 v12, 0x0

    .line 46
    .local v12, "$i$a$-cache-RememberModulesKt$rememberKoinModules$2":I
    new-instance v13, Lorg/koin/compose/module/CompositionKoinModuleLoader;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_4

    :cond_4
    move v15, v4

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v0, v16

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    invoke-direct {v13, v14, v6, v15, v0}, Lorg/koin/compose/module/CompositionKoinModuleLoader;-><init>(Ljava/util/List;Lorg/koin/core/Koin;ZZ)V

    .line 52
    .end local v12    # "$i$a$-cache-RememberModulesKt$rememberKoinModules$2":I
    nop

    .line 53
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 54
    move-object v10, v13

    .end local v13    # "value$iv":Ljava/lang/Object;
    goto :goto_6

    .line 55
    :cond_6
    nop

    .line 50
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_6
    nop

    .line 45
    .end local v7    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v10, Lorg/koin/compose/module/CompositionKoinModuleLoader;

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 43
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 48
    return-void
.end method
