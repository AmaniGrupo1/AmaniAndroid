.class public final Landroidx/compose/material3/TabIndicatorOffsetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "TabRow.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabIndicatorOffsetNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1355:1\n1#2:1356\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u001f\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R&\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/material3/TabIndicatorOffsetNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "tabPositionsState",
        "Landroidx/compose/runtime/State;",
        "",
        "Landroidx/compose/material3/TabPosition;",
        "selectedTabIndex",
        "",
        "followContentSize",
        "",
        "(Landroidx/compose/runtime/State;IZ)V",
        "getFollowContentSize",
        "()Z",
        "setFollowContentSize",
        "(Z)V",
        "initialOffset",
        "Landroidx/compose/ui/unit/Dp;",
        "initialWidth",
        "offsetAnimatable",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "getSelectedTabIndex",
        "()I",
        "setSelectedTabIndex",
        "(I)V",
        "getTabPositionsState",
        "()Landroidx/compose/runtime/State;",
        "setTabPositionsState",
        "(Landroidx/compose/runtime/State;)V",
        "widthAnimatable",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private followContentSize:Z

.field private initialOffset:Landroidx/compose/ui/unit/Dp;

.field private initialWidth:Landroidx/compose/ui/unit/Dp;

.field private offsetAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTabIndex:I

.field private tabPositionsState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;>;"
        }
    .end annotation
.end field

.field private widthAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/State;IZ)V
    .locals 0
    .param p1, "tabPositionsState"    # Landroidx/compose/runtime/State;
    .param p2, "selectedTabIndex"    # I
    .param p3, "followContentSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 872
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 869
    iput-object p1, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 870
    iput p2, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    .line 871
    iput-boolean p3, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->followContentSize:Z

    .line 868
    return-void
.end method


# virtual methods
.method public final getFollowContentSize()Z
    .locals 1

    .line 871
    iget-boolean v0, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->followContentSize:Z

    return v0
.end method

.method public final getSelectedTabIndex()I
    .locals 1

    .line 870
    iget v0, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    return v0
.end method

.method public final getTabPositionsState()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;>;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "constraints"    # J

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    sget-object v1, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$1;->INSTANCE:Landroidx/compose/material3/TabIndicatorOffsetNode$measure$1;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    return-object v2

    .line 888
    :cond_0
    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->followContentSize:Z

    .line 891
    iget-object v3, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 888
    if-eqz v2, :cond_1

    .line 889
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget v3, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/TabPosition;

    invoke-virtual {v2}, Landroidx/compose/material3/TabPosition;->getContentWidth-D9Ej5fM()F

    move-result v2

    goto :goto_0

    .line 891
    :cond_1
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget v3, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/TabPosition;

    invoke-virtual {v2}, Landroidx/compose/material3/TabPosition;->getWidth-D9Ej5fM()F

    move-result v2

    .line 888
    :goto_0
    nop

    .line 887
    move v8, v2

    .line 894
    .local v8, "currentTabWidth":F
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialWidth:Landroidx/compose/ui/unit/Dp;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 896
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    if-nez v2, :cond_2

    .line 897
    new-instance v9, Landroidx/compose/animation/core/Animatable;

    iget-object v10, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialWidth:Landroidx/compose/ui/unit/Dp;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v11

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v9

    .line 1356
    .local v2, "it":Landroidx/compose/animation/core/Animatable;
    const/4 v4, 0x0

    .line 897
    .local v4, "$i$a$-also-TabIndicatorOffsetNode$measure$widthAnim$1":I
    iput-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 896
    .end local v2    # "it":Landroidx/compose/animation/core/Animatable;
    .end local v4    # "$i$a$-also-TabIndicatorOffsetNode$measure$widthAnim$1":I
    :cond_2
    nop

    .line 895
    nop

    .line 899
    .local v2, "widthAnim":Landroidx/compose/animation/core/Animatable;
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v4

    invoke-static {v8, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v4

    if-nez v4, :cond_4

    .line 900
    invoke-virtual {v0}, Landroidx/compose/material3/TabIndicatorOffsetNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    new-instance v4, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$2;

    invoke-direct {v4, v2, v8, v3}, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$2;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/Continuation;)V

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 903
    .end local v2    # "widthAnim":Landroidx/compose/animation/core/Animatable;
    :cond_3
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialWidth:Landroidx/compose/ui/unit/Dp;

    .line 906
    :cond_4
    :goto_1
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget v4, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/TabPosition;

    invoke-virtual {v2}, Landroidx/compose/material3/TabPosition;->getLeft-D9Ej5fM()F

    move-result v9

    .line 908
    .local v9, "indicatorOffset":F
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialOffset:Landroidx/compose/ui/unit/Dp;

    if-eqz v2, :cond_6

    .line 910
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->offsetAnimatable:Landroidx/compose/animation/core/Animatable;

    if-nez v2, :cond_5

    .line 911
    new-instance v10, Landroidx/compose/animation/core/Animatable;

    iget-object v11, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialOffset:Landroidx/compose/ui/unit/Dp;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v12

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v10

    .local v2, "it":Landroidx/compose/animation/core/Animatable;
    const/4 v4, 0x0

    .line 912
    .local v4, "$i$a$-also-TabIndicatorOffsetNode$measure$offsetAnim$1":I
    iput-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->offsetAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 913
    nop

    .line 911
    .end local v2    # "it":Landroidx/compose/animation/core/Animatable;
    .end local v4    # "$i$a$-also-TabIndicatorOffsetNode$measure$offsetAnim$1":I
    nop

    .line 910
    :cond_5
    nop

    .line 909
    nop

    .line 915
    .local v2, "offsetAnim":Landroidx/compose/animation/core/Animatable;
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v4

    invoke-static {v9, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v4

    if-nez v4, :cond_7

    .line 916
    invoke-virtual {v0}, Landroidx/compose/material3/TabIndicatorOffsetNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    new-instance v4, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$3;

    invoke-direct {v4, v2, v9, v3}, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$3;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/Continuation;)V

    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 919
    .end local v2    # "offsetAnim":Landroidx/compose/animation/core/Animatable;
    :cond_6
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialOffset:Landroidx/compose/ui/unit/Dp;

    .line 922
    :cond_7
    :goto_2
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->offsetAnimatable:Landroidx/compose/animation/core/Animatable;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    goto :goto_3

    :cond_8
    move v2, v9

    :goto_3
    move v10, v2

    .line 924
    .local v10, "offset":F
    iget-object v2, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    goto :goto_4

    :cond_9
    move v2, v8

    :goto_4
    move v11, v2

    .line 927
    .local v11, "width":F
    nop

    .line 928
    invoke-interface {v1, v11}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v14

    invoke-interface {v1, v11}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v15

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v12, p3

    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 927
    move-object/from16 v12, p2

    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 926
    move-object v13, v2

    .line 931
    .local v13, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    new-instance v4, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$4;

    invoke-direct {v4, v13, v1, v10}, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$4;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;F)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    return-object v2
.end method

.method public final setFollowContentSize(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 871
    iput-boolean p1, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->followContentSize:Z

    return-void
.end method

.method public final setSelectedTabIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 870
    iput p1, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    return-void
.end method

.method public final setTabPositionsState(Landroidx/compose/runtime/State;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;>;)V"
        }
    .end annotation

    .line 869
    iput-object p1, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    return-void
.end method
