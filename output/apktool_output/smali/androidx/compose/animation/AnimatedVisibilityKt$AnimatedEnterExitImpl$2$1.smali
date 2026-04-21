.class final Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedVisibility.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/OnLookaheadMeasured;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,862:1\n30#2:863\n80#3:864\n*S KotlinDebug\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1\n*L\n762#1:863\n762#1:864\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $onLookaheadMeasured:Landroidx/compose/animation/OnLookaheadMeasured;


# direct methods
.method constructor <init>(Landroidx/compose/animation/OnLookaheadMeasured;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1;->$onLookaheadMeasured:Landroidx/compose/animation/OnLookaheadMeasured;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 759
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    move-object v2, p3

    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 760
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object/from16 v1, p0

    .local v0, "$this$invoke_3p2s80s_u24lambda_u240":Landroidx/compose/ui/layout/Placeable;
    iget-object v2, v1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1;->$onLookaheadMeasured:Landroidx/compose/animation/OnLookaheadMeasured;

    const/4 v3, 0x0

    .line 761
    .local v3, "$i$a$-run-AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1$1":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 762
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .local v4, "width$iv":I
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    .local v5, "height$iv":I
    const/4 v6, 0x0

    .line 863
    .local v6, "$i$f$IntSize":I
    move v7, v5

    .local v7, "val2$iv$iv":I
    move v8, v4

    .local v8, "val1$iv$iv":I
    const/4 v9, 0x0

    .line 864
    .local v9, "$i$f$packInts":I
    int-to-long v10, v8

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    int-to-long v12, v7

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    or-long v7, v10, v12

    .line 863
    .end local v7    # "val2$iv$iv":I
    .end local v8    # "val1$iv$iv":I
    .end local v9    # "$i$f$packInts":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v4

    .line 762
    .end local v4    # "width$iv":I
    .end local v5    # "height$iv":I
    .end local v6    # "$i$f$IntSize":I
    invoke-interface {v2, v4, v5}, Landroidx/compose/animation/OnLookaheadMeasured;->invoke-ozmzZPI(J)V

    .line 764
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    new-instance v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1$1$1;

    invoke-direct {v2, v0}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 760
    .end local v0    # "$this$invoke_3p2s80s_u24lambda_u240":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "$i$a$-run-AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1$1":I
    nop

    .line 765
    return-object v0
.end method
