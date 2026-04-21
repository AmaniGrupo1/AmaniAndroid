.class public final Lorg/koin/compose/scope/KoinScopeKt;
.super Ljava/lang/Object;
.source "KoinScope.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinScope.kt\norg/koin/compose/scope/KoinScopeKt\n+ 2 Koin.kt\norg/koin/core/Koin\n*L\n1#1,100:1\n256#2,2:101\n*S KotlinDebug\n*F\n+ 1 KoinScope.kt\norg/koin/compose/scope/KoinScopeKt\n*L\n64#1:101,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a9\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\tH\u0007\u00a2\u0006\u0002\u0010\n\u001a>\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u000b\u0018\u0001*\u00020\u000c2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0013\u0008\u0008\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001a:\u0010\u0000\u001a\u00020\u00012\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0013\u0008\u0008\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u001a(\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00052\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\tH\u0001\u00a2\u0006\u0002\u0010\u0016\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "KoinScope",
        "",
        "scopeDefinition",
        "Lkotlin/Function1;",
        "Lorg/koin/core/Koin;",
        "Lorg/koin/core/scope/Scope;",
        "Lkotlin/ExtensionFunctionType;",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "T",
        "",
        "scopeID",
        "",
        "Lorg/koin/core/scope/ScopeID;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "scopeQualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "OnKoinScope",
        "scope",
        "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
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
.method public static final synthetic KoinScope(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p0, "scopeID"    # Ljava/lang/String;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x78c
        key = -0x58a5f737
        startOffset = 0x6cc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const-string v0, "scopeID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$KoinScope":I
    const v1, -0x58a5f737

    const-string v2, "CC(KoinScope)N(scopeID,content)63@1860L9,64@1903L27:KoinScope.kt#4cyfz7"

    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/koin/compose/KoinApplicationKt;->getKoin(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;

    move-result-object v2

    .local v2, "this_$iv":Lorg/koin/core/Koin;
    move-object v3, p0

    .local v3, "scopeId$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 101
    .local v1, "$i$f$getOrCreateScope":I
    new-instance v4, Lorg/koin/core/qualifier/TypeQualifier;

    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/reflect/KClass;)V

    move-object v9, v4

    .line 102
    .local v9, "qualifier$iv":Lorg/koin/core/qualifier/TypeQualifier;
    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/koin/core/registry/ScopeRegistry;->getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v9

    check-cast v4, Lorg/koin/core/qualifier/Qualifier;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/koin/core/Koin;->createScope$default(Lorg/koin/core/Koin;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;Lorg/koin/core/qualifier/TypeQualifier;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v4

    .line 64
    .end local v1    # "$i$f$getOrCreateScope":I
    .end local v2    # "this_$iv":Lorg/koin/core/Koin;
    .end local v3    # "scopeId$iv":Ljava/lang/String;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/TypeQualifier;
    :cond_0
    nop

    .line 65
    .local v4, "scope":Lorg/koin/core/scope/Scope;
    and-int/lit8 v1, p3, 0x70

    invoke-static {v4, p1, p2, v1}, Lorg/koin/compose/scope/KoinScopeKt;->OnKoinScope(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 63
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 66
    return-void
.end method

.method public static final KoinScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .param p0, "scopeID"    # Ljava/lang/String;
    .param p1, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x95c
        key = -0x159846d9
        startOffset = 0x882
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const-string v0, "scopeID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$KoinScope":I
    const v1, -0x159846d9

    const-string v2, "CC(KoinScope)N(scopeID,scopeQualifier,content)84@2311L9,85@2367L27:KoinScope.kt#4cyfz7"

    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lorg/koin/compose/KoinApplicationKt;->getKoin(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    .end local p0    # "scopeID":Ljava/lang/String;
    .end local p1    # "scopeQualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v3, "scopeID":Ljava/lang/String;
    .local v4, "scopeQualifier":Lorg/koin/core/qualifier/Qualifier;
    invoke-static/range {v2 .. v7}, Lorg/koin/core/Koin;->getOrCreateScope$default(Lorg/koin/core/Koin;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 86
    .local p0, "scope":Lorg/koin/core/scope/Scope;
    shr-int/lit8 p1, p4, 0x3

    and-int/lit8 p1, p1, 0x70

    invoke-static {p0, p2, p3, p1}, Lorg/koin/compose/scope/KoinScopeKt;->OnKoinScope(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 84
    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 87
    return-void
.end method

.method public static final KoinScope(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p0, "scopeDefinition"    # Lkotlin/jvm/functions/Function1;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x5ef
        key = -0xfc255e5
        startOffset = 0x545
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/Koin;",
            "Lorg/koin/core/scope/Scope;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const-string v0, "scopeDefinition"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const v0, -0xfc255e5

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(KoinScope)N(scopeDefinition,content)44@1475L9,45@1490L27:KoinScope.kt#4cyfz7"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p3, 0x30

    if-nez v2, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const-string v3, "org.koin.compose.scope.KoinScope (KoinScope.kt:43)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 45
    :cond_5
    invoke-static {p2, v4}, Lorg/koin/compose/KoinApplicationKt;->getKoin(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 46
    .local v0, "scope":Lorg/koin/core/scope/Scope;
    and-int/lit8 v2, v1, 0x70

    invoke-static {v0, p1, p2, v2}, Lorg/koin/compose/scope/KoinScopeKt;->OnKoinScope(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "scope":Lorg/koin/core/scope/Scope;
    goto :goto_3

    .line 41
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 47
    :cond_7
    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Lorg/koin/compose/scope/KoinScopeKt$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p3}, Lorg/koin/compose/scope/KoinScopeKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method static final KoinScope$lambda$0(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/koin/compose/scope/KoinScopeKt;->KoinScope(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final OnKoinScope(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .param p0, "scope"    # Lorg/koin/core/scope/Scope;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0xa97
        key = -0x613f5dc9
        startOffset = 0x9b5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    const-string v0, "scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const v0, -0x613f5dc9

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(OnKoinScope)N(scope,content)93@2554L24,96@2684L25,94@2583L126:KoinScope.kt#4cyfz7"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p3, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p3, 0x30

    if-nez v2, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    if-eq v2, v4, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v4, v1, 0x1

    invoke-interface {p2, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const-string v4, "org.koin.compose.scope.OnKoinScope (KoinScope.kt:92)"

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 94
    :cond_5
    and-int/lit8 v0, v1, 0xe

    invoke-static {p0, p2, v0}, Lorg/koin/compose/scope/RememberScopesKt;->rememberKoinScope(Lorg/koin/core/scope/Scope;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;

    .line 96
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getLocalKoinScopeContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    new-instance v2, Lorg/koin/compose/ComposeContextWrapper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3, v4}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    .line 97
    new-instance v2, Lorg/koin/compose/scope/KoinScopeKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/koin/compose/scope/KoinScopeKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/16 v3, 0x36

    const v4, 0x9ca66f7

    invoke-static {v4, v5, v2, p2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    sget v3, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v3, v3, 0x30

    .line 95
    invoke-static {v0, v2, p2, v3}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 93
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 100
    :cond_7
    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Lorg/koin/compose/scope/KoinScopeKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p3}, Lorg/koin/compose/scope/KoinScopeKt$$ExternalSyntheticLambda1;-><init>(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method static final OnKoinScope$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$content"    # Lkotlin/jvm/functions/Function2;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0xa95
        key = 0x9ca66f7
        startOffset = 0xa7c
    .end annotation

    const-string v0, "C97@2694L9:KoinScope.kt#4cyfz7"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.koin.compose.scope.OnKoinScope.<anonymous> (KoinScope.kt:97)"

    const v3, 0x9ca66f7

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 98
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 99
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final OnKoinScope$lambda$1(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/koin/compose/scope/KoinScopeKt;->OnKoinScope(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
