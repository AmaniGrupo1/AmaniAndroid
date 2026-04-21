.class final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "AnimatedContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizeModifierNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,959:1\n30#2:960\n30#2:962\n30#2:964\n30#2:966\n80#3:961\n80#3:963\n80#3:965\n80#3:967\n85#3:969\n90#3:971\n54#4:968\n59#4:970\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode\n*L\n658#1:960\n661#1:962\n662#1:964\n664#1:966\n658#1:961\n661#1:963\n662#1:965\n664#1:967\n690#1:969\n690#1:971\n690#1:968\n690#1:970\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002BE\u0012\u001e\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004R\u0008\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010!\u001a\u00020\"H\u0016J#\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008*\u0010+R2\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004R\u0008\u0012\u0004\u0012\u00028\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001c\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;",
        "S",
        "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;",
        "sizeAnimation",
        "Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        "Landroidx/compose/animation/core/Transition;",
        "sizeTransform",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/animation/SizeTransform;",
        "scope",
        "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;",
        "<init>",
        "(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V",
        "getSizeAnimation",
        "()Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "setSizeAnimation",
        "(Landroidx/compose/animation/core/Transition$DeferredAnimation;)V",
        "getSizeTransform",
        "()Landroidx/compose/runtime/State;",
        "setSizeTransform",
        "(Landroidx/compose/runtime/State;)V",
        "getScope",
        "()Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;",
        "setScope",
        "(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V",
        "lastSize",
        "J",
        "lastContinuousSizeOrDefault",
        "default",
        "lastContinuousSizeOrDefault-mzRDjE0",
        "(J)J",
        "onReset",
        "",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "animation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private lastSize:J

.field private scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "TS;>;"
        }
    .end annotation
.end field

.field private sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private sizeTransform:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/SizeTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 2
    .param p1, "sizeAnimation"    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .param p2, "sizeTransform"    # Landroidx/compose/runtime/State;
    .param p3, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "TS;>;)V"
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;-><init>()V

    .line 635
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 636
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeTransform:Landroidx/compose/runtime/State;

    .line 637
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 641
    invoke-static {}, Landroidx/compose/animation/AnimatedContentKt;->access$getUnspecifiedSize$p()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    .line 634
    return-void
.end method

.method public static final synthetic access$lastContinuousSizeOrDefault-mzRDjE0(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;J)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-default$0"    # J

    .line 634
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastContinuousSizeOrDefault-mzRDjE0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final lastContinuousSizeOrDefault-mzRDjE0(J)J
    .locals 4
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-default$0"    # J

    .line 644
    iget-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    invoke-static {}, Landroidx/compose/animation/AnimatedContentKt;->access$getUnspecifiedSize$p()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final getScope()Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "TS;>;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-object v0
.end method

.method public final getSizeAnimation()Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    return-object v0
.end method

.method public final getSizeTransform()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/SizeTransform;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeTransform:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 24
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 655
    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 656
    .local v1, "placeable":Landroidx/compose/ui/layout/Placeable;
    const-wide/16 v2, 0x0

    .line 657
    .local v2, "measuredSize":J
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v4

    const/16 v7, 0x20

    if-eqz v4, :cond_0

    .line 658
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .local v4, "width$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    .local v8, "height$iv":I
    const/4 v9, 0x0

    .line 960
    .local v9, "$i$f$IntSize":I
    move v10, v8

    .local v10, "val2$iv$iv":I
    move v11, v4

    .local v11, "val1$iv$iv":I
    const/4 v12, 0x0

    .line 961
    .local v12, "$i$f$packInts":I
    int-to-long v13, v11

    shl-long/2addr v13, v7

    const-wide v15, 0xffffffffL

    int-to-long v5, v10

    and-long/2addr v5, v15

    or-long/2addr v5, v13

    .line 960
    .end local v10    # "val2$iv$iv":I
    .end local v11    # "val1$iv$iv":I
    .end local v12    # "$i$f$packInts":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v4

    .line 658
    .end local v4    # "width$iv":I
    .end local v8    # "height$iv":I
    .end local v9    # "$i$f$IntSize":I
    nop

    .end local v2    # "measuredSize":J
    .local v4, "measuredSize":J
    goto/16 :goto_0

    .line 659
    .end local v4    # "measuredSize":J
    .restart local v2    # "measuredSize":J
    :cond_0
    const-wide v15, 0xffffffffL

    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-nez v4, :cond_1

    .line 661
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .local v4, "width$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    .local v5, "height$iv":I
    const/4 v6, 0x0

    .line 962
    .local v6, "$i$f$IntSize":I
    move v8, v5

    .local v8, "val2$iv$iv":I
    move v9, v4

    .local v9, "val1$iv$iv":I
    const/4 v10, 0x0

    .line 963
    .local v10, "$i$f$packInts":I
    int-to-long v11, v9

    shl-long/2addr v11, v7

    int-to-long v13, v8

    and-long/2addr v13, v15

    or-long v8, v11, v13

    .line 962
    .end local v8    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v4

    .line 661
    .end local v4    # "width$iv":I
    .end local v5    # "height$iv":I
    .end local v6    # "$i$f$IntSize":I
    nop

    .line 662
    .end local v2    # "measuredSize":J
    .local v4, "measuredSize":J
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .local v2, "width$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .local v3, "height$iv":I
    const/4 v6, 0x0

    .line 964
    .restart local v6    # "$i$f$IntSize":I
    move v8, v3

    .restart local v8    # "val2$iv$iv":I
    move v9, v2

    .restart local v9    # "val1$iv$iv":I
    const/4 v10, 0x0

    .line 965
    .restart local v10    # "$i$f$packInts":I
    int-to-long v11, v9

    shl-long/2addr v11, v7

    int-to-long v13, v8

    and-long/2addr v13, v15

    or-long v8, v11, v13

    .line 964
    .end local v8    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v2

    .line 662
    .end local v2    # "width$iv":I
    .end local v3    # "height$iv":I
    .end local v6    # "$i$f$IntSize":I
    iput-wide v2, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    goto :goto_0

    .line 664
    .end local v4    # "measuredSize":J
    .local v2, "measuredSize":J
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .local v4, "width$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    .restart local v5    # "height$iv":I
    const/4 v6, 0x0

    .line 966
    .restart local v6    # "$i$f$IntSize":I
    move v8, v5

    .restart local v8    # "val2$iv$iv":I
    move v9, v4

    .restart local v9    # "val1$iv$iv":I
    const/4 v10, 0x0

    .line 967
    .restart local v10    # "$i$f$packInts":I
    int-to-long v11, v9

    shl-long/2addr v11, v7

    int-to-long v13, v8

    and-long/2addr v13, v15

    or-long v8, v11, v13

    .line 966
    .end local v8    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v4

    .line 664
    .end local v4    # "width$iv":I
    .end local v5    # "height$iv":I
    .end local v6    # "$i$f$IntSize":I
    nop

    .line 666
    .local v4, "currentSize":J
    iget-object v6, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v8, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;

    invoke-direct {v8, v0, v4, v5}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;J)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    new-instance v9, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2;

    invoke-direct {v9, v0, v4, v5}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;J)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v8, v9}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 665
    nop

    .line 686
    .local v6, "size":Landroidx/compose/runtime/State;
    iget-object v8, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {v8, v6}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->setAnimatedSize$animation(Landroidx/compose/runtime/State;)V

    .line 687
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v8}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v2

    .line 688
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v8}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    move-wide v4, v2

    .line 690
    .end local v2    # "measuredSize":J
    .end local v6    # "size":Landroidx/compose/runtime/State;
    .local v4, "measuredSize":J
    :goto_0
    move-wide v2, v4

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 968
    .local v6, "$i$f$getWidth-impl":I
    move-wide v8, v2

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 969
    .local v10, "$i$f$unpackInt1":I
    shr-long v11, v8, v7

    long-to-int v7, v11

    .line 968
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackInt1":I
    nop

    .line 690
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getWidth-impl":I
    nop

    .restart local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 970
    .local v6, "$i$f$getHeight-impl":I
    nop

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 971
    .local v10, "$i$f$unpackInt2":I
    and-long v11, v8, v15

    long-to-int v8, v11

    .line 970
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackInt2":I
    nop

    .line 690
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getHeight-impl":I
    new-instance v2, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;

    invoke-direct {v2, v0, v1, v4, v5}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;Landroidx/compose/ui/layout/Placeable;J)V

    move-object/from16 v21, v2

    check-cast v21, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, p1

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    return-object v2
.end method

.method public onReset()V
    .locals 2

    .line 647
    invoke-super {p0}, Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;->onReset()V

    .line 648
    invoke-static {}, Landroidx/compose/animation/AnimatedContentKt;->access$getUnspecifiedSize$p()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    .line 649
    return-void
.end method

.method public final setScope(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "TS;>;)V"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-void
.end method

.method public final setSizeAnimation(Landroidx/compose/animation/core/Transition$DeferredAnimation;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;)V"
        }
    .end annotation

    .line 635
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    return-void
.end method

.method public final setSizeTransform(Landroidx/compose/runtime/State;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/SizeTransform;",
            ">;)V"
        }
    .end annotation

    .line 636
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeTransform:Landroidx/compose/runtime/State;

    return-void
.end method
