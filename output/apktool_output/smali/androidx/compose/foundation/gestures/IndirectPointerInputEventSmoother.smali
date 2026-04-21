.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;
.super Ljava/lang/Object;
.source "IndirectPointerInputDragCycleDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndirectPointerInputDragCycleDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,784:1\n65#2:785\n69#2:788\n65#2:796\n69#2:806\n60#3:786\n70#3:789\n60#3:797\n70#3:807\n53#3,3:812\n22#4:787\n22#4:790\n22#4:798\n22#4:808\n151#5,2:791\n35#5,3:793\n39#5:799\n153#5:800\n151#5,2:801\n35#5,3:803\n39#5:809\n153#5:810\n30#6:811\n*S KotlinDebug\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother\n*L\n721#1:785\n722#1:788\n739#1:796\n740#1:806\n721#1:786\n722#1:789\n739#1:797\n740#1:807\n743#1:812,3\n721#1:787\n722#1:790\n739#1:798\n740#1:808\n739#1:791,2\n739#1:793,3\n739#1:799\n739#1:800\n740#1:801,2\n740#1:803,3\n740#1:809\n740#1:810\n743#1:811\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;",
        "",
        "<init>",
        "()V",
        "eventRotatingIndex",
        "",
        "eventRotatingArray",
        "",
        "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
        "smoothEventPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "change",
        "smoothEventPosition-tuRUvjQ",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)J",
        "Companion",
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

.field public static final Companion:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;

.field private static final SmoothingFactor:I = 0x3


# instance fields
.field private eventRotatingArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field private eventRotatingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->Companion:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Ljava/util/List;

    .line 715
    return-void
.end method


# virtual methods
.method public final smoothEventPosition-tuRUvjQ(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)J
    .locals 28
    .param p1, "change"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 785
    .local v4, "$i$f$getX-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 786
    .local v7, "$i$f$unpackFloat1":I
    const/16 v8, 0x20

    shr-long v9, v5, v8

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 787
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 786
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 785
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackFloat1":I
    nop

    .line 721
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getX-impl":I
    nop

    .line 722
    .local v9, "xPosition":F
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    .restart local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 788
    .local v4, "$i$f$getY-impl":I
    move-wide v5, v2

    .restart local v5    # "value$iv$iv":J
    const/4 v7, 0x0

    .line 789
    .local v7, "$i$f$unpackFloat2":I
    const-wide v10, 0xffffffffL

    and-long v12, v5, v10

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 790
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 789
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 788
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackFloat2":I
    nop

    .line 722
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getY-impl":I
    nop

    .line 724
    .local v12, "yPosition":F
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 725
    iput v3, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    .line 726
    iget-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 729
    :cond_0
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 730
    iget-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 733
    iget-object v4, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Ljava/util/List;

    .line 730
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 731
    iget v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    add-int/lit8 v6, v2, 0x1

    iput v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    invoke-interface {v4, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 733
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_0
    iget v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    if-ne v2, v5, :cond_2

    .line 737
    iput v3, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingIndex:I

    .line 739
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Ljava/util/List;

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 791
    .local v3, "$i$f$fastMap":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 792
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 793
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v13, v5

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    :goto_1
    if-ge v7, v13, :cond_3

    .line 794
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 795
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 792
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    move/from16 v17, v8

    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    move-object/from16 v18, v15

    check-cast v18, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v18, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/16 v19, 0x0

    .line 739
    .local v19, "$i$a$-fastMap-IndirectPointerInputEventSmoother$smoothEventPosition$1":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v20

    .local v20, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v22, 0x0

    .line 796
    .local v22, "$i$f$getX-impl":I
    move-wide/from16 v23, v20

    .local v23, "value$iv$iv":J
    const/16 v25, 0x0

    .line 797
    .local v25, "$i$f$unpackFloat1":I
    move-wide/from16 v26, v10

    shr-long v10, v23, v17

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 798
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 797
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 796
    .end local v23    # "value$iv$iv":J
    .end local v25    # "$i$f$unpackFloat1":I
    nop

    .line 739
    .end local v20    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v22    # "$i$f$getX-impl":I
    nop

    .end local v18    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v19    # "$i$a$-fastMap-IndirectPointerInputEventSmoother$smoothEventPosition$1":I
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 792
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    nop

    .line 793
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v17

    move-wide/from16 v10, v26

    goto :goto_1

    :cond_3
    move/from16 v17, v8

    move-wide/from16 v26, v10

    .line 799
    .end local v7    # "index$iv$iv":I
    nop

    .line 800
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    check-cast v2, Ljava/lang/Iterable;

    .line 739
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v9, v2

    .line 740
    iget-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->eventRotatingArray:Ljava/util/List;

    .restart local v2    # "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 801
    .restart local v3    # "$i$f$fastMap":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 802
    .restart local v4    # "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 803
    .restart local v6    # "$i$f$fastForEach":I
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_4

    .line 804
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 805
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 802
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    move-object v14, v4

    check-cast v14, Ljava/util/Collection;

    move-object v15, v11

    check-cast v15, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v15, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/16 v16, 0x0

    .line 740
    .local v16, "$i$a$-fastMap-IndirectPointerInputEventSmoother$smoothEventPosition$2":I
    invoke-virtual {v15}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v18

    .local v18, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v20, 0x0

    .line 806
    .local v20, "$i$f$getY-impl":I
    move-wide/from16 v21, v18

    .local v21, "value$iv$iv":J
    const/16 v23, 0x0

    .line 807
    .local v23, "$i$f$unpackFloat2":I
    and-long v0, v21, v26

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 808
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 807
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 806
    .end local v21    # "value$iv$iv":J
    .end local v23    # "$i$f$unpackFloat2":I
    nop

    .line 740
    .end local v18    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v20    # "$i$f$getY-impl":I
    nop

    .end local v15    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v16    # "$i$a$-fastMap-IndirectPointerInputEventSmoother$smoothEventPosition$2":I
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 802
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastMap$1$iv":I
    nop

    .line 803
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_2

    .line 809
    .end local v7    # "index$iv$iv":I
    :cond_4
    nop

    .line 810
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    check-cast v0, Ljava/lang/Iterable;

    .line 740
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v0

    double-to-float v12, v0

    goto :goto_3

    .line 729
    :cond_5
    move/from16 v17, v8

    move-wide/from16 v26, v10

    .line 743
    :goto_3
    move v0, v12

    .local v0, "y$iv":F
    move v1, v9

    .local v1, "x$iv":F
    const/4 v2, 0x0

    .line 811
    .local v2, "$i$f$Offset":I
    move v3, v0

    .local v3, "val2$iv$iv":F
    move v4, v1

    .local v4, "val1$iv$iv":F
    const/4 v5, 0x0

    .line 812
    .local v5, "$i$f$packFloats":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    .line 813
    .local v6, "v1$iv$iv":J
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v10, v8

    .line 814
    .local v10, "v2$iv$iv":J
    shl-long v13, v6, v17

    and-long v15, v10, v26

    or-long v3, v13, v15

    .line 811
    .end local v3    # "val2$iv$iv":F
    .end local v4    # "val1$iv$iv":F
    .end local v5    # "$i$f$packFloats":I
    .end local v6    # "v1$iv$iv":J
    .end local v10    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 743
    .end local v0    # "y$iv":F
    .end local v1    # "x$iv":F
    .end local v2    # "$i$f$Offset":I
    return-wide v0
.end method
