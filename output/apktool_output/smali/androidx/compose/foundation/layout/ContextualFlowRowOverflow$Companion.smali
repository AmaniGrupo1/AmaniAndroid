.class public final Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;
.super Ljava/lang/Object;
.source "FlowLayoutOverflow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayoutOverflow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayoutOverflow.kt\nandroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,851:1\n122#2:852\n75#3:853\n1#4:854\n1128#5,6:855\n*S KotlinDebug\n*F\n+ 1 FlowLayoutOverflow.kt\nandroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion\n*L\n405#1:852\n408#1:853\n409#1:855,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "FlowLayout overflow is no longer maintained"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000c\u001a\u00020\u00052\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00a2\u0006\u0002\u0010\u0013J_\u0010\u0014\u001a\u00020\u00052\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122\u001c\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;",
        "",
        "<init>",
        "()V",
        "Visible",
        "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;",
        "getVisible$annotations",
        "getVisible",
        "()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;",
        "Clip",
        "getClip$annotations",
        "getClip",
        "expandIndicator",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
        "",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;",
        "expandOrCollapseIndicator",
        "collapseIndicator",
        "minRowsToShowCollapse",
        "",
        "minHeightToShowCollapse",
        "Landroidx/compose/ui/unit/Dp;",
        "expandOrCollapseIndicator--jt2gSs",
        "(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;",
        "foundation-layout"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RuJi7GAoNLkzZ-s_hmUQN9DCwNI(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$1(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z3zBpQ3hAYoxyQd3Hb9pdGZE3YQ(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o-IUjP_QMKQZZhPgBjfdNSfUMI8(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oJjfSWohrh5v7dkpJjN9tMltTaU(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qa6VULScfP7emwhc8KFoTIrIbVw(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandIndicator$lambda$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;-><init>()V

    return-void
.end method

.method static final expandIndicator$lambda$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;
    .locals 3
    .param p0, "$content"    # Lkotlin/jvm/functions/Function3;
    .param p1, "state"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 366
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;)V

    const v1, 0x45f806f1

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 369
    return-object v0
.end method

.method private static final expandIndicator$lambda$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$state"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .param p1, "$content"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C367@17460L9:FlowLayoutOverflow.kt#2w3rfo"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandIndicator.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:366)"

    const v3, 0x45f806f1

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 367
    :cond_1
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    .line 368
    .local v0, "scope":Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "scope":Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;
    goto :goto_1

    .line 366
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 369
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;
    .locals 3
    .param p0, "$expandIndicator"    # Lkotlin/jvm/functions/Function3;
    .param p1, "state"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 416
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;)V

    const v1, 0x779a2468

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 419
    return-object v0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$state"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .param p1, "$expandIndicator"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C417@20067L17:FlowLayoutOverflow.kt#2w3rfo"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:416)"

    const v3, 0x779a2468

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 417
    :cond_1
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    .line 418
    .local v0, "scope":Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "scope":Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;
    goto :goto_1

    .line 416
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 419
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$1(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lkotlin/jvm/functions/Function2;
    .locals 3
    .param p0, "$collapseIndicator"    # Lkotlin/jvm/functions/Function3;
    .param p1, "state"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 423
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;)V

    const v1, -0x257ac07f

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 426
    return-object v0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4
    .param p0, "$state"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .param p1, "$collapseIndicator"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C424@20341L19:FlowLayoutOverflow.kt#2w3rfo"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:423)"

    const v3, -0x257ac07f

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 424
    :cond_1
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    .line 425
    .local v0, "scope":Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "scope":Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;
    goto :goto_1

    .line 423
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 426
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic getClip$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVisible$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final expandIndicator(Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 9
    .param p1, "content"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;"
        }
    .end annotation

    .line 365
    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function3;)V

    move-object v5, v0

    .line 371
    .local v5, "seeMoreGetter":Lkotlin/jvm/functions/Function1;
    new-instance v1, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    .line 372
    sget-object v2, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 371
    nop

    .line 373
    nop

    .line 371
    const/16 v7, 0x16

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final expandOrCollapseIndicator--jt2gSs(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 18
    .param p1, "expandIndicator"    # Lkotlin/jvm/functions/Function3;
    .param p2, "collapseIndicator"    # Lkotlin/jvm/functions/Function3;
    .param p3, "minRowsToShowCollapse"    # I
    .param p4, "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0"    # F
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;IF",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;"
        }
    .end annotation

    .line 406
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p6

    const v4, 0x6b6f7116

    const-string v5, "C(expandOrCollapseIndicator)N(expandIndicator,collapseIndicator,minRowsToShowCollapse,minHeightToShowCollapse:c#ui.unit.Dp)407@19609L7,408@19677L1111:FlowLayoutOverflow.kt#2w3rfo"

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_0

    .line 404
    const/4 v5, 0x1

    move v8, v5

    .end local p3    # "minRowsToShowCollapse":I
    .local v5, "minRowsToShowCollapse":I
    goto :goto_0

    .line 406
    .end local v5    # "minRowsToShowCollapse":I
    .restart local p3    # "minRowsToShowCollapse":I
    :cond_0
    move/from16 v8, p3

    .line 404
    .end local p3    # "minRowsToShowCollapse":I
    .local v8, "minRowsToShowCollapse":I
    :goto_0
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_1

    .line 405
    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 852
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .end local v6    # "$i$f$getDp":I
    .end local p4    # "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0":F
    .local v5, "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0":F
    goto :goto_1

    .line 404
    .end local v5    # "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0":F
    .restart local p4    # "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0":F
    :cond_1
    move/from16 v5, p4

    .line 852
    .end local p4    # "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0":F
    .restart local v5    # "$v$c$androidx-compose-ui-unit-Dp$-minHeightToShowCollapse$0":F
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    const-string/jumbo v7, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator (FlowLayoutOverflow.kt:405)"

    invoke-static {v4, v3, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 408
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    move-object/from16 v7, p5

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 853
    .local v9, "$i$f$getCurrent":I
    const v10, 0x789c5f52

    const-string v11, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v7, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 408
    .end local v4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$getCurrent":I
    move-object v4, v10

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 854
    .local v4, "$this$expandOrCollapseIndicator__jt2gSs_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 408
    .local v6, "$i$a$-with-ContextualFlowRowOverflow$Companion$expandOrCollapseIndicator$minHeightToShowCollapsePx$1":I
    invoke-interface {v4, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v9

    .line 407
    .end local v4    # "$this$expandOrCollapseIndicator__jt2gSs_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v6    # "$i$a$-with-ContextualFlowRowOverflow$Companion$expandOrCollapseIndicator$minHeightToShowCollapsePx$1":I
    nop

    .line 409
    .local v9, "minHeightToShowCollapsePx":I
    const v4, 0x4d57c3ad    # 2.26245328E8f

    const-string v6, "CC(remember):FlowLayoutOverflow.kt#9igjgp"

    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v4, v3, 0x380

    xor-int/lit16 v4, v4, 0x180

    const/16 v6, 0x100

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-le v4, v6, :cond_3

    .line 410
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    and-int/lit16 v4, v3, 0x180

    if-ne v4, v6, :cond_5

    :cond_4
    move v4, v10

    goto :goto_2

    :cond_5
    move v4, v7

    .line 411
    :goto_2
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v4, v6

    and-int/lit8 v6, v3, 0xe

    xor-int/lit8 v6, v6, 0x6

    const/4 v11, 0x4

    if-le v6, v11, :cond_6

    .line 412
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    and-int/lit8 v6, v3, 0x6

    if-ne v6, v11, :cond_8

    :cond_7
    move v6, v10

    goto :goto_3

    :cond_8
    move v6, v7

    :goto_3
    or-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v11, 0x20

    if-le v6, v11, :cond_9

    .line 413
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    and-int/lit8 v6, v3, 0x30

    if-ne v6, v11, :cond_b

    :cond_a
    move v7, v10

    :cond_b
    or-int/2addr v4, v7

    .line 409
    nop

    .local v4, "invalid$iv":Z
    move-object/from16 v13, p5

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 855
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 856
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_d

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v15, v6, :cond_c

    goto :goto_4

    .line 860
    :cond_c
    goto :goto_5

    .line 857
    :cond_d
    :goto_4
    const/16 v17, 0x0

    .line 415
    .local v17, "$i$a$-cache-ContextualFlowRowOverflow$Companion$expandOrCollapseIndicator$1":I
    new-instance v10, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 422
    .local v10, "seeMoreGetter":Lkotlin/jvm/functions/Function1;
    new-instance v11, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v11, v1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 429
    .local v11, "collapseGetter":Lkotlin/jvm/functions/Function1;
    new-instance v6, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    .line 430
    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 431
    nop

    .line 432
    nop

    .line 433
    nop

    .line 434
    nop

    .line 429
    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 435
    nop

    .line 857
    .end local v10    # "seeMoreGetter":Lkotlin/jvm/functions/Function1;
    .end local v11    # "collapseGetter":Lkotlin/jvm/functions/Function1;
    .end local v17    # "$i$a$-cache-ContextualFlowRowOverflow$Companion$expandOrCollapseIndicator$1":I
    nop

    .line 858
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 859
    move-object v15, v6

    .line 855
    .end local v6    # "value$iv":Ljava/lang/Object;
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_5
    nop

    .line 409
    .end local v4    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v15, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 406
    :cond_e
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 409
    return-object v15
.end method

.method public final getClip()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 1

    .line 348
    invoke-static {}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->access$getClip$cp()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    move-result-object v0

    return-object v0
.end method

.method public final getVisible()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 1

    .line 344
    invoke-static {}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->access$getVisible$cp()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    move-result-object v0

    return-object v0
.end method
