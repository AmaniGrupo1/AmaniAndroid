.class public final Lorg/koin/compose/application/RememberKoinApplicationKt;
.super Ljava/lang/Object;
.source "RememberKoinApplication.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRememberKoinApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberKoinApplication.kt\norg/koin/compose/application/RememberKoinApplicationKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,49:1\n1128#2,6:50\n1128#2,6:56\n*S KotlinDebug\n*F\n+ 1 RememberKoinApplication.kt\norg/koin/compose/application/RememberKoinApplicationKt\n*L\n34#1:50,6\n45#1:56,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u001d\u0008\u0008\u0010\u0002\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0007\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a\u001e\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u00a2\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "rememberKoinApplication",
        "Lorg/koin/core/Koin;",
        "koinAppDeclaration",
        "Lkotlin/Function1;",
        "Lorg/koin/core/KoinApplication;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;",
        "rememberKoinMPApplication",
        "configuration",
        "Lorg/koin/dsl/KoinConfiguration;",
        "logLevel",
        "Lorg/koin/core/logger/Level;",
        "(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;",
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
.method public static final rememberKoinApplication(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;
    .locals 9
    .param p0, "koinAppDeclaration"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x5df
        key = 0x3ecb0633
        startOffset = 0x46b
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lorg/koin/core/Koin;"
        }
    .end annotation

    const-string v0, "koinAppDeclaration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    .local v0, "$i$f$rememberKoinApplication":I
    const v1, 0x3ecb0633

    const-string v2, "CC(rememberKoinApplication)N(koinAppDeclaration)33@1234L166:RememberKoinApplication.kt#f93w7t"

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 34
    const v1, -0x47ddad07

    const-string v2, "CC(remember):RememberKoinApplication.kt#9igjgp"

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p2, 0xe

    xor-int/lit8 v1, v1, 0x6

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    and-int/lit8 v1, p2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    :goto_0
    move-object v2, p1

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 51
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_4

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 55
    :cond_3
    goto :goto_3

    .line 52
    :cond_4
    :goto_1
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinApplication$wrapper$1":I
    new-instance v7, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    sget-object v8, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual {v8}, Lorg/koin/mp/KoinPlatform;->getKoinOrNull()Lorg/koin/core/Koin;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-static {p0}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-direct {v7, v8}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 52
    .end local v6    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinApplication$wrapper$1":I
    nop

    .line 53
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 54
    move-object v4, v7

    .line 50
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 34
    .end local v1    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    move-object v1, v4

    check-cast v1, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .local v1, "wrapper":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 37
    invoke-virtual {v1}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->getKoin()Lorg/koin/core/Koin;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 33
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 37
    return-object v2

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Koin context has not been initialized in rememberKoinApplication"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final rememberKoinMPApplication(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;
    .locals 10
    .param p0, "configuration"    # Lorg/koin/dsl/KoinConfiguration;
    .param p1, "logLevel"    # Lorg/koin/core/logger/Level;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x80a
        key = 0x2027347c
        startOffset = 0x624
    .end annotation

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$rememberKoinMPApplication":I
    const v1, 0x2027347c

    const-string v2, "CC(rememberKoinMPApplication)N(configuration,logLevel)43@1691L67,44@1777L178:RememberKoinApplication.kt#f93w7t"

    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 44
    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v2, p3, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p1, p0, p2, v1, v2}, Lorg/koin/compose/KoinApplication_androidKt;->composeMultiplatformConfiguration(Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;Landroidx/compose/runtime/Composer;II)Lorg/koin/dsl/KoinConfiguration;

    move-result-object v1

    .line 45
    .local v1, "mergedConfiguration":Lorg/koin/dsl/KoinConfiguration;
    const v3, -0x4cd3e032

    const-string v4, "CC(remember):RememberKoinApplication.kt#9igjgp"

    invoke-static {p2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v4, p3, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-le v4, v5, :cond_0

    move-object v4, p1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    and-int/lit8 v4, p3, 0x30

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    or-int/2addr v2, v3

    .local v2, "invalid$iv":Z
    move-object v3, p2

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 57
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_4

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_3

    goto :goto_0

    .line 61
    :cond_3
    goto :goto_2

    .line 58
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 46
    .local v7, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1":I
    new-instance v8, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    sget-object v9, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual {v9}, Lorg/koin/mp/KoinPlatform;->getKoinOrNull()Lorg/koin/core/Koin;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-static {v1}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lorg/koin/dsl/KoinConfiguration;)Lorg/koin/core/KoinApplication;

    move-result-object v9

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v8, v9}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 58
    .end local v7    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1":I
    nop

    .line 59
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    move-object v5, v8

    .line 56
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 45
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v2, v5

    check-cast v2, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .local v2, "wrapper":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 48
    invoke-virtual {v2}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->getKoin()Lorg/koin/core/Koin;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 43
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 48
    return-object v3

    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Koin context has not been initialized in rememberKoinApplication"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
