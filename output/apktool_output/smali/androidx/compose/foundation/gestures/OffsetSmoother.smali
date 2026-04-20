.class public final Landroidx/compose/foundation/gestures/OffsetSmoother;
.super Ljava/lang/Object;
.source "IndirectPointerInputDragCycleDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndirectPointerInputDragCycleDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/OffsetSmoother\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,784:1\n151#2,2:785\n35#2,3:787\n39#2:793\n153#2:794\n151#2,2:795\n35#2,3:797\n39#2:803\n153#2:804\n65#3:790\n69#3:800\n60#4:791\n70#4:801\n53#4,3:806\n22#5:792\n22#5:802\n30#6:805\n*S KotlinDebug\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/OffsetSmoother\n*L\n769#1:785,2\n769#1:787,3\n769#1:793\n769#1:794\n770#1:795,2\n770#1:797,3\n770#1:803\n770#1:804\n769#1:790\n770#1:800\n769#1:791\n770#1:801\n772#1:806,3\n769#1:792\n770#1:802\n772#1:805\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/OffsetSmoother;",
        "",
        "<init>",
        "()V",
        "eventRotatingIndex",
        "",
        "eventRotatingArray",
        "",
        "Landroidx/compose/ui/geometry/Offset;",
        "smoothEventPosition",
        "offset",
        "smoothEventPosition-MK-Hz9U",
        "(J)J",
        "reset",
        "",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private eventRotatingArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private eventRotatingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingArray:Ljava/util/List;

    .line 755
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 776
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingIndex:I

    .line 777
    iget-object v0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 778
    return-void
.end method

.method public final smoothEventPosition-MK-Hz9U(J)J
    .locals 25
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 760
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 763
    iget-object v2, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingArray:Ljava/util/List;

    .line 760
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 761
    iget v1, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingIndex:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingIndex:I

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 763
    :cond_0
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :goto_0
    iget v1, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingIndex:I

    if-ne v1, v3, :cond_1

    .line 767
    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingIndex:I

    .line 769
    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingArray:Ljava/util/List;

    .local v1, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 785
    .local v2, "$i$f$fastMap":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 786
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 787
    .local v5, "$i$f$fastForEach":I
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_1
    const/16 v8, 0x20

    if-ge v6, v7, :cond_2

    .line 788
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 789
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 786
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v13}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v13

    .local v13, "it":J
    const/4 v15, 0x0

    .line 769
    .local v15, "$i$a$-fastMap-OffsetSmoother$smoothEventPosition$xPosition$1":I
    move-wide/from16 v16, v13

    .local v16, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v18, 0x0

    .line 790
    .local v18, "$i$f$getX-impl":I
    move-wide/from16 v19, v16

    .local v19, "value$iv$iv":J
    const/16 v21, 0x0

    .line 791
    .local v21, "$i$f$unpackFloat1":I
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .local v22, "$this$fastMap$iv":Ljava/util/List;
    .local v23, "$i$f$fastMap":I
    shr-long v1, v19, v8

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 792
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 791
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 790
    .end local v19    # "value$iv$iv":J
    .end local v21    # "$i$f$unpackFloat1":I
    nop

    .line 769
    .end local v16    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v18    # "$i$f$getX-impl":I
    nop

    .end local v13    # "it":J
    .end local v15    # "$i$a$-fastMap-OffsetSmoother$smoothEventPosition$xPosition$1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 786
    invoke-interface {v12, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    nop

    .line 787
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v22

    move/from16 v2, v23

    goto :goto_1

    .end local v22    # "$this$fastMap$iv":Ljava/util/List;
    .end local v23    # "$i$f$fastMap":I
    .local v1, "$this$fastMap$iv":Ljava/util/List;
    .local v2, "$i$f$fastMap":I
    :cond_2
    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 793
    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v6    # "index$iv$iv":I
    .restart local v22    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v23    # "$i$f$fastMap":I
    nop

    .line 794
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v22    # "$this$fastMap$iv":Ljava/util/List;
    .end local v23    # "$i$f$fastMap":I
    check-cast v1, Ljava/lang/Iterable;

    .line 769
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 770
    .local v1, "xPosition":F
    iget-object v2, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->eventRotatingArray:Ljava/util/List;

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 795
    .local v3, "$i$f$fastMap":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 796
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 797
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_2
    const-wide v10, 0xffffffffL

    if-ge v7, v9, :cond_3

    .line 798
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 799
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 796
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    move-object v15, v4

    check-cast v15, Ljava/util/Collection;

    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v16

    .local v16, "it":J
    const/16 v18, 0x0

    .line 770
    .local v18, "$i$a$-fastMap-OffsetSmoother$smoothEventPosition$yPosition$1":I
    move-wide/from16 v19, v16

    .local v19, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v21, 0x0

    .line 800
    .local v21, "$i$f$getY-impl":I
    move-wide/from16 v22, v19

    .local v22, "value$iv$iv":J
    const/16 v24, 0x0

    .line 801
    .local v24, "$i$f$unpackFloat2":I
    and-long v10, v22, v10

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 802
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 801
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 800
    .end local v22    # "value$iv$iv":J
    .end local v24    # "$i$f$unpackFloat2":I
    nop

    .line 770
    .end local v19    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v21    # "$i$f$getY-impl":I
    nop

    .end local v16    # "it":J
    .end local v18    # "$i$a$-fastMap-OffsetSmoother$smoothEventPosition$yPosition$1":I
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 796
    invoke-interface {v15, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 799
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    nop

    .line 797
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 803
    .end local v7    # "index$iv$iv":I
    :cond_3
    nop

    .line 804
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    check-cast v2, Ljava/lang/Iterable;

    .line 770
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 772
    .local v2, "yPosition":F
    move v3, v2

    .local v3, "y$iv":F
    move v4, v1

    .local v4, "x$iv":F
    const/4 v5, 0x0

    .line 805
    .local v5, "$i$f$Offset":I
    move v6, v3

    .local v6, "val2$iv$iv":F
    move v7, v4

    .local v7, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 806
    .local v9, "$i$f$packFloats":I
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 807
    .local v12, "v1$iv$iv":J
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 808
    .local v14, "v2$iv$iv":J
    shl-long v16, v12, v8

    and-long/2addr v10, v14

    or-long v6, v16, v10

    .line 805
    .end local v6    # "val2$iv$iv":F
    .end local v7    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .line 772
    .end local v3    # "y$iv":F
    .end local v4    # "x$iv":F
    .end local v5    # "$i$f$Offset":I
    return-wide v3
.end method
