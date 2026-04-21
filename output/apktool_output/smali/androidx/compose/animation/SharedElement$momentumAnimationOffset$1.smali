.class final Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedElement.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedElement;-><init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/geometry/Offset;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedElement.kt\nandroidx/compose/animation/SharedElement$momentumAnimationOffset$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,198:1\n118#2:199\n35#2,5:200\n119#2:205\n*S KotlinDebug\n*F\n+ 1 SharedElement.kt\nandroidx/compose/animation/SharedElement$momentumAnimationOffset$1\n*L\n89#1:199\n89#1:200,5\n89#1:205\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/geometry/Offset;",
        "invoke-F1C5BW0",
        "()J"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/SharedElement;


# direct methods
.method constructor <init>(Landroidx/compose/animation/SharedElement;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->invoke-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-F1C5BW0()J
    .locals 15

    .line 87
    iget-object v0, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    invoke-static {v0}, Landroidx/compose/animation/SharedElement;->access$getAnimationSpecFinalized$p(Landroidx/compose/animation/SharedElement;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    invoke-static {v0}, Landroidx/compose/animation/SharedElement;->access$getMomentumAnimation$p(Landroidx/compose/animation/SharedElement;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    nop

    .line 88
    iget-object v0, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    .line 89
    nop

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$fastFirstOrNull":I
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 201
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 202
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 199
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/animation/SharedElementEntry;

    .local v10, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v11, 0x0

    .line 89
    .local v11, "$i$a$-fastFirstOrNull-SharedElement$momentumAnimationOffset$1$1":I
    invoke-virtual {v10}, Landroidx/compose/animation/SharedElementEntry;->getTarget()Z

    move-result v10

    .line 199
    .end local v10    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v11    # "$i$a$-fastFirstOrNull-SharedElement$momentumAnimationOffset$1$1":I
    if-eqz v10, :cond_0

    goto :goto_1

    .line 202
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_0
    nop

    .line 200
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 205
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move-object v8, v6

    .line 89
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v8, Landroidx/compose/animation/SharedElementEntry;

    .line 90
    if-eqz v8, :cond_3

    .line 88
    nop

    .line 90
    iget-object v0, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    .local v8, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$a$-let-SharedElement$momentumAnimationOffset$1$2":I
    invoke-virtual {v8}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/BoundsAnimation;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    .line 94
    .local v2, "targetSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    instance-of v3, v2, Landroidx/compose/animation/core/SpringSpec;

    if-eqz v3, :cond_2

    .line 97
    move-object v3, v2

    check-cast v3, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v3}, Landroidx/compose/animation/core/SpringSpec;->getDampingRatio()F

    move-result v3

    .line 98
    move-object v4, v2

    check-cast v4, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v4}, Landroidx/compose/animation/core/SpringSpec;->getStiffness()F

    move-result v4

    .line 99
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v5}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Offset$Companion;)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    .line 96
    invoke-static {v3, v4, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v3

    .line 95
    nop

    .line 101
    .local v3, "spring":Landroidx/compose/animation/core/SpringSpec;
    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    new-instance v4, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1$2$1;

    invoke-direct {v4, v0, v3, v6}, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1$2$1;-><init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 105
    .end local v3    # "spring":Landroidx/compose/animation/core/SpringSpec;
    :cond_2
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/compose/animation/SharedElement;->access$setAnimationSpecFinalized$p(Landroidx/compose/animation/SharedElement;Z)V

    .line 106
    nop

    .line 90
    .end local v1    # "$i$a$-let-SharedElement$momentumAnimationOffset$1$2":I
    .end local v2    # "targetSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v8    # "it":Landroidx/compose/animation/SharedElementEntry;
    :cond_3
    nop

    .line 108
    :cond_4
    iget-object v0, p0, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;->this$0:Landroidx/compose/animation/SharedElement;

    invoke-static {v0}, Landroidx/compose/animation/SharedElement;->access$getMomentumAnimation$p(Landroidx/compose/animation/SharedElement;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method
