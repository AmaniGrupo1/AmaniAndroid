.class public final Landroidx/compose/animation/core/KeyframesWithSplineSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationSpec.kt\nandroidx/compose/animation/core/KeyframesWithSplineSpec\n+ 2 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1072:1\n382#2,4:1073\n354#2,6:1077\n364#2,3:1084\n367#2,9:1088\n386#2:1097\n425#2:1098\n425#2:1099\n1399#3:1083\n1270#3:1087\n*S KotlinDebug\n*F\n+ 1 AnimationSpec.kt\nandroidx/compose/animation/core/KeyframesWithSplineSpec\n*L\n763#1:1073,4\n763#1:1077,6\n763#1:1084,3\n763#1:1088,9\n763#1:1097\n767#1:1098\n770#1:1099\n763#1:1083\n763#1:1087\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0012B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B!\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tJ,\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0008\u0008\u0001\u0010\u000e*\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u000e0\u0011H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec;",
        "T",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "config",
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;",
        "<init>",
        "(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V",
        "periodicBias",
        "",
        "(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;F)V",
        "getConfig",
        "()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;",
        "vectorize",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "converter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "KeyframesWithSplineSpecConfig",
        "animation-core"
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
.field private final config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private periodicBias:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V
    .locals 1
    .param p1, "config"    # Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    .line 725
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->periodicBias:F

    .line 722
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;F)V
    .locals 0
    .param p1, "config"    # Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .param p2, "periodicBias"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;F)V"
        }
    .end annotation

    .line 738
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;-><init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V

    .line 739
    iput p2, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->periodicBias:F

    .line 740
    return-void
.end method


# virtual methods
.method public final getConfig()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    return-object v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 721
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object v0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 27
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    .line 760
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getKeyframes$animation_core()Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    .line 761
    .local v1, "keyframes":Landroidx/collection/MutableIntObjectMap;
    new-instance v2, Landroidx/collection/MutableIntList;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 762
    .local v2, "timestamps":Landroidx/collection/MutableIntList;
    new-instance v3, Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->getSize()I

    move-result v4

    invoke-direct {v3, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    .line 763
    .local v3, "timeToVectorMap":Landroidx/collection/MutableIntObjectMap;
    move-object v4, v1

    check-cast v4, Landroidx/collection/IntObjectMap;

    .local v4, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v5, 0x0

    .line 1073
    .local v5, "$i$f$forEach":I
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->keys:[I

    .line 1074
    .local v6, "k$iv":[I
    iget-object v7, v4, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 1076
    .local v7, "v$iv":[Ljava/lang/Object;
    move-object v8, v4

    .local v8, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v9, 0x0

    .line 1077
    .local v9, "$i$f$forEachIndexed":I
    iget-object v10, v8, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 1078
    .local v10, "m$iv$iv":[J
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    .line 1080
    .local v11, "lastIndex$iv$iv":I
    const/4 v12, 0x0

    .local v12, "i$iv$iv":I
    if-gt v12, v11, :cond_4

    .line 1081
    :goto_0
    aget-wide v14, v10, v12

    .line 1082
    .local v14, "slot$iv$iv":J
    move-wide/from16 v16, v14

    .local v16, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v18, 0x0

    .line 1083
    .local v18, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v19, v14

    move-wide/from16 v13, v16

    move-object v15, v4

    move/from16 v16, v5

    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEach":I
    .end local v14    # "slot$iv$iv":J
    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v15, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v16, "$i$f$forEach":I
    .local v19, "slot$iv$iv":J
    not-long v4, v13

    const/16 v17, 0x7

    shl-long v4, v4, v17

    and-long/2addr v4, v13

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v21

    .line 1082
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v18    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v21

    if-eqz v4, :cond_3

    .line 1084
    sub-int v4, v12, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    .line 1085
    .local v4, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v4, :cond_2

    .line 1086
    const-wide/16 v17, 0xff

    and-long v17, v19, v17

    .local v17, "value$iv$iv$iv":J
    const/4 v14, 0x0

    .line 1087
    .local v14, "$i$f$isFull":I
    const-wide/16 v21, 0x80

    cmp-long v21, v17, v21

    if-gez v21, :cond_0

    const/16 v21, 0x1

    goto :goto_2

    :cond_0
    const/16 v21, 0x0

    .line 1086
    .end local v14    # "$i$f$isFull":I
    .end local v17    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v21, :cond_1

    .line 1088
    shl-int/lit8 v14, v12, 0x3

    add-int/2addr v14, v13

    .line 1089
    .local v14, "index$iv$iv":I
    move/from16 v17, v14

    .local v17, "index$iv":I
    const/16 v18, 0x0

    .line 1076
    .local v18, "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    move/from16 v21, v5

    aget v5, v6, v17

    .local v5, "key":I
    aget-object v22, v7, v17

    check-cast v22, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .local v22, "value":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    const/16 v23, 0x0

    .line 764
    .local v23, "$i$a$-forEach-KeyframesWithSplineSpec$vectorize$1":I
    invoke-virtual {v2, v5}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 765
    move-object/from16 v24, v1

    .end local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .local v24, "keyframes":Landroidx/collection/MutableIntObjectMap;
    new-instance v1, Lkotlin/Pair;

    move-object/from16 v25, v6

    .end local v6    # "k$iv":[I
    .local v25, "k$iv":[I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    move-object/from16 v26, v7

    .end local v7    # "v$iv":[Ljava/lang/Object;
    .local v26, "v$iv":[Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->getValue$animation_core()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->getEasing$animation_core()Landroidx/compose/animation/core/Easing;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 766
    nop

    .line 1076
    .end local v5    # "key":I
    .end local v22    # "value":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .end local v23    # "$i$a$-forEach-KeyframesWithSplineSpec$vectorize$1":I
    nop

    .line 1089
    .end local v17    # "index$iv":I
    .end local v18    # "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    goto :goto_3

    .line 1086
    .end local v14    # "index$iv$iv":I
    .end local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v25    # "k$iv":[I
    .end local v26    # "v$iv":[Ljava/lang/Object;
    .restart local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v24, v1

    move/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 1091
    .end local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .restart local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v25    # "k$iv":[I
    .restart local v26    # "v$iv":[Ljava/lang/Object;
    :goto_3
    shr-long v19, v19, v21

    .line 1085
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v21

    move-object/from16 v1, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    goto :goto_1

    .end local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v25    # "k$iv":[I
    .end local v26    # "v$iv":[Ljava/lang/Object;
    .restart local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v24, v1

    move/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 1093
    .end local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .end local v13    # "j$iv$iv":I
    .restart local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v25    # "k$iv":[I
    .restart local v26    # "v$iv":[Ljava/lang/Object;
    move/from16 v1, v21

    if-ne v4, v1, :cond_6

    goto :goto_4

    .line 1082
    .end local v4    # "bitCount$iv$iv":I
    .end local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v25    # "k$iv":[I
    .end local v26    # "v$iv":[Ljava/lang/Object;
    .restart local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v24, v1

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 1080
    .end local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .end local v19    # "slot$iv$iv":J
    .restart local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v25    # "k$iv":[I
    .restart local v26    # "v$iv":[Ljava/lang/Object;
    :goto_4
    if-eq v12, v11, :cond_5

    add-int/lit8 v12, v12, 0x1

    move-object v4, v15

    move/from16 v5, v16

    move-object/from16 v1, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    goto/16 :goto_0

    .end local v15    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v16    # "$i$f$forEach":I
    .end local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v25    # "k$iv":[I
    .end local v26    # "v$iv":[Ljava/lang/Object;
    .restart local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .local v4, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v5, "$i$f$forEach":I
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v24, v1

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 1096
    .end local v1    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .end local v12    # "i$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v16    # "$i$f$forEach":I
    .restart local v24    # "keyframes":Landroidx/collection/MutableIntObjectMap;
    .restart local v25    # "k$iv":[I
    .restart local v26    # "v$iv":[Ljava/lang/Object;
    :cond_5
    nop

    .line 1097
    .end local v8    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v9    # "$i$f$forEachIndexed":I
    .end local v10    # "m$iv$iv":[J
    .end local v11    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 767
    .end local v15    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v16    # "$i$f$forEach":I
    .end local v25    # "k$iv":[I
    .end local v26    # "v$iv":[Ljava/lang/Object;
    move-object/from16 v1, v24

    check-cast v1, Landroidx/collection/IntObjectMap;

    .local v1, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v4, 0x0

    .local v4, "key$iv":I
    const/4 v5, 0x0

    .line 1098
    .local v5, "$i$f$contains":I
    invoke-virtual {v1, v4}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v1

    .line 767
    .end local v1    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v4    # "key$iv":I
    .end local v5    # "$i$f$contains":I
    if-nez v1, :cond_7

    .line 768
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1}, Landroidx/collection/MutableIntList;->add(II)V

    .line 770
    :cond_7
    move-object/from16 v1, v24

    check-cast v1, Landroidx/collection/IntObjectMap;

    .restart local v1    # "this_$iv":Landroidx/collection/IntObjectMap;
    iget-object v4, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v4}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getDurationMillis()I

    move-result v4

    .restart local v4    # "key$iv":I
    const/4 v5, 0x0

    .line 1099
    .restart local v5    # "$i$f$contains":I
    invoke-virtual {v1, v4}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v1

    .line 770
    .end local v1    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v4    # "key$iv":I
    .end local v5    # "$i$f$contains":I
    if-nez v1, :cond_8

    .line 771
    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getDurationMillis()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 773
    :cond_8
    invoke-virtual {v2}, Landroidx/collection/MutableIntList;->sort()V

    .line 774
    new-instance v4, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;

    .line 775
    move-object v5, v2

    check-cast v5, Landroidx/collection/IntList;

    .line 776
    move-object v6, v3

    check-cast v6, Landroidx/collection/IntObjectMap;

    .line 777
    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getDurationMillis()I

    move-result v7

    .line 778
    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getDelayMillis()I

    move-result v8

    .line 779
    iget v9, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->periodicBias:F

    .line 774
    invoke-direct/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V

    check-cast v4, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    return-object v4
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 721
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    return-object v0
.end method
