.class final Landroidx/compose/material/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "TextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextField.kt\nandroidx/compose/material/TextFieldMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,953:1\n116#2,2:954\n33#2,6:956\n118#2:962\n116#2,2:963\n33#2,6:965\n118#2:971\n116#2,2:972\n33#2,6:974\n118#2:980\n544#2,2:981\n33#2,6:983\n546#2:989\n116#2,2:990\n33#2,6:992\n118#2:998\n544#2,2:999\n33#2,6:1001\n546#2:1007\n116#2,2:1008\n33#2,6:1010\n118#2:1016\n116#2,2:1017\n33#2,6:1019\n118#2:1025\n116#2,2:1026\n33#2,6:1028\n118#2:1034\n116#2,2:1035\n33#2,6:1037\n118#2:1043\n116#2,2:1044\n33#2,6:1046\n118#2:1052\n116#2,2:1053\n33#2,6:1055\n118#2:1061\n116#2,2:1062\n33#2,6:1064\n118#2:1070\n544#2,2:1071\n33#2,6:1073\n546#2:1079\n116#2,2:1080\n33#2,6:1082\n118#2:1088\n*S KotlinDebug\n*F\n+ 1 TextField.kt\nandroidx/compose/material/TextFieldMeasurePolicy\n*L\n566#1:954,2\n566#1:956,6\n566#1:962\n572#1:963,2\n572#1:965,6\n572#1:971\n585#1:972,2\n585#1:974,6\n585#1:980\n605#1:981,2\n605#1:983,6\n605#1:989\n611#1:990,2\n611#1:992,6\n611#1:998\n710#1:999,2\n710#1:1001,6\n710#1:1007\n711#1:1008,2\n711#1:1010,6\n711#1:1016\n714#1:1017,2\n714#1:1019,6\n714#1:1025\n717#1:1026,2\n717#1:1028,6\n717#1:1034\n720#1:1035,2\n720#1:1037,6\n720#1:1043\n739#1:1044,2\n739#1:1046,6\n739#1:1052\n745#1:1053,2\n745#1:1055,6\n745#1:1061\n752#1:1062,2\n752#1:1064,6\n752#1:1070\n757#1:1071,2\n757#1:1073,6\n757#1:1079\n758#1:1080,2\n758#1:1082,6\n758#1:1088\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J8\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J<\u0010\u0011\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\"\u0010\u0014\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u0015\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016J,\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000c2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\"\u0010\u001e\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u001f\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/material/TextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "singleLine",
        "",
        "animationProgress",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "(ZFLandroidx/compose/foundation/layout/PaddingValues;)V",
        "intrinsicWidth",
        "",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "intrinsicMeasurer",
        "Lkotlin/Function2;",
        "intrinsicHeight",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "width",
        "maxIntrinsicHeight",
        "maxIntrinsicWidth",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animationProgress:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0
    .param p1, "singleLine"    # Z
    .param p2, "animationProgress"    # F
    .param p3, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-boolean p1, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    .line 549
    iput p2, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    .line 550
    iput-object p3, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 547
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material/TextFieldMeasurePolicy;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 547
    iget v0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    return v0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 547
    iget-object v0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 547
    iget-boolean v0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    return v0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 21
    .param p1, "$this$intrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .param p4, "intrinsicMeasurer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 738
    move-object/from16 v0, p4

    const/4 v1, 0x0

    .local v1, "remainingWidth":I
    move/from16 v1, p3

    .line 739
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1044
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1045
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1046
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1047
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 1048
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1049
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1045
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 739
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "Leading"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1045
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    if-eqz v12, :cond_0

    goto :goto_1

    .line 1049
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1047
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1051
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1052
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 739
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v2, 0x7fffffff

    if-eqz v10, :cond_2

    .local v10, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 740
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    nop

    .line 741
    invoke-interface {v10, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 740
    invoke-static {v1, v5}, Landroidx/compose/material/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v1

    .line 743
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v10, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 739
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    .end local v10    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    goto :goto_2

    .line 744
    :cond_2
    const/4 v4, 0x0

    .line 739
    :goto_2
    move v12, v4

    .line 745
    .local v12, "leadingHeight":I
    move-object/from16 v4, p2

    .local v4, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1053
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1054
    move-object v6, v4

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1055
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1056
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_4

    .line 1057
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1058
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v11

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1054
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 745
    .local v16, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    invoke-static {v15}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v8, "Trailing"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1054
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    if-eqz v3, :cond_3

    goto :goto_4

    .line 1058
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1056
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1060
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1061
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .line 745
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_5

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 746
    .local v3, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    nop

    .line 747
    invoke-interface {v13, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v2

    .line 746
    invoke-static {v1, v2}, Landroidx/compose/material/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v1

    .line 749
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 745
    .end local v3    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v13, v2

    goto :goto_5

    .line 750
    :cond_5
    const/4 v13, 0x0

    .line 745
    :goto_5
    nop

    .line 752
    .local v13, "trailingHeight":I
    move-object/from16 v2, p2

    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1062
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1063
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1064
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1065
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_6
    if-ge v6, v7, :cond_7

    .line 1066
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1067
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1063
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v11, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 752
    .local v14, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    invoke-static {v11}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v19, v1

    .end local v1    # "remainingWidth":I
    .local v19, "remainingWidth":I
    const-string v1, "Label"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1063
    .end local v11    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    if-eqz v1, :cond_6

    goto :goto_7

    .line 1067
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1065
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v19

    goto :goto_6

    .end local v19    # "remainingWidth":I
    .restart local v1    # "remainingWidth":I
    :cond_7
    move/from16 v19, v1

    .line 1069
    .end local v1    # "remainingWidth":I
    .end local v6    # "index$iv$iv":I
    .restart local v19    # "remainingWidth":I
    nop

    .line 1070
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 752
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_7
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_8

    .local v9, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v1, 0x0

    .line 753
    .local v1, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 752
    .end local v1    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    .end local v9    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v11, v1

    goto :goto_8

    .line 754
    :cond_8
    const/4 v11, 0x0

    .line 752
    :goto_8
    nop

    .line 757
    .local v11, "labelHeight":I
    move-object/from16 v1, p2

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1071
    .local v2, "$i$f$fastFirst":I
    nop

    .line 1072
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1073
    .local v4, "$i$f$fastForEach":I
    nop

    .line 1074
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_9
    if-ge v5, v6, :cond_e

    .line 1075
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1076
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1072
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v10, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 757
    .local v14, "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    invoke-static {v10}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    const-string/jumbo v1, "TextField"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1072
    .end local v10    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    if-eqz v1, :cond_d

    .line 757
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 756
    nop

    .line 758
    .local v9, "textFieldHeight":I
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1080
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1081
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1082
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 1083
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_a
    if-ge v5, v6, :cond_a

    .line 1084
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1085
    .restart local v7    # "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .restart local v8    # "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1081
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v8

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 758
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v20, v2

    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string v2, "Hint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1081
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    if-eqz v1, :cond_9

    goto :goto_b

    .line 1085
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1083
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v20

    goto :goto_a

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v20, v2

    .line 1087
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 1088
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 758
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_b

    .local v8, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v1, 0x0

    .line 759
    .local v1, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 758
    .end local v1    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    .end local v8    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v14, v1

    goto :goto_c

    .line 760
    :cond_b
    const/4 v14, 0x0

    .line 758
    :goto_c
    nop

    .line 763
    .local v14, "placeholderHeight":I
    nop

    .line 764
    if-lez v11, :cond_c

    const/4 v3, 0x1

    move v10, v3

    goto :goto_d

    :cond_c
    const/4 v10, 0x0

    .line 765
    :goto_d
    nop

    .line 766
    nop

    .line 767
    nop

    .line 768
    nop

    .line 769
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v15

    .line 770
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v17

    .line 771
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 762
    move-object/from16 v18, v2

    invoke-static/range {v9 .. v18}, Landroidx/compose/material/TextFieldKt;->access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v2

    return v2

    .line 1072
    .end local v14    # "placeholderHeight":I
    .local v2, "$i$f$fastFirst":I
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastForEach":I
    .restart local v5    # "index$iv$iv":I
    .restart local v7    # "item$iv$iv":Ljava/lang/Object;
    .local v8, "it$iv":Ljava/lang/Object;
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    :cond_d
    move-object/from16 v1, p0

    .line 1076
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    nop

    .line 1074
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_9

    .line 1078
    .end local v5    # "index$iv$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    :cond_e
    nop

    .line 1079
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Collection contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 18
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "height"    # I
    .param p3, "intrinsicMeasurer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 710
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 999
    .local v2, "$i$f$fastFirst":I
    nop

    .line 1000
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1001
    .local v4, "$i$f$fastForEach":I
    nop

    .line 1002
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_d

    .line 1003
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1004
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1000
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v10, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v11, 0x0

    .line 710
    .local v11, "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    invoke-static {v10}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "TextField"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 1000
    .end local v10    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v11    # "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    if-eqz v10, :cond_c

    .line 710
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 709
    move v4, v1

    .line 711
    .local v4, "textFieldWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1008
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1009
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1010
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1011
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_1

    .line 1012
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1013
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1009
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 711
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Label"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1009
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    if-eqz v12, :cond_0

    goto :goto_2

    .line 1013
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1011
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1015
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1016
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 711
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_2

    .local v10, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 712
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v10, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 711
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    .end local v10    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v5, v2

    goto :goto_3

    .line 713
    :cond_2
    const/4 v5, 0x0

    .line 711
    :goto_3
    nop

    .line 714
    .local v5, "labelWidth":I
    move-object/from16 v2, p1

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1017
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1018
    move-object v6, v2

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1019
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1020
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    if-ge v9, v10, :cond_4

    .line 1021
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1022
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1018
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 714
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v8, "Trailing"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1018
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    if-eqz v1, :cond_3

    goto :goto_5

    .line 1022
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1020
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1024
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1025
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 714
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_5
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v1, 0x0

    .line 715
    .local v1, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 714
    .end local v1    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v3, v1

    goto :goto_6

    .line 716
    :cond_5
    const/4 v3, 0x0

    .line 714
    :goto_6
    nop

    .line 717
    .local v3, "trailingWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1026
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1027
    move-object v6, v1

    .restart local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1028
    .restart local v7    # "$i$f$fastForEach":I
    nop

    .line 1029
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_7
    if-ge v8, v9, :cond_7

    .line 1030
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1031
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1027
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 717
    .local v14, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    invoke-static {v13}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v1, "Leading"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1027
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    if-eqz v1, :cond_6

    goto :goto_8

    .line 1031
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1029
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    goto :goto_7

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_7
    move-object/from16 v16, v1

    .line 1033
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1034
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 717
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_8
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_8

    .local v11, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v1, 0x0

    .line 718
    .local v1, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 717
    .end local v1    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    .end local v11    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v2, v1

    goto :goto_9

    .line 719
    :cond_8
    const/4 v2, 0x0

    .line 717
    :goto_9
    nop

    .line 720
    .local v2, "leadingWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1035
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 1036
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1037
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1038
    const/4 v9, 0x0

    .restart local v9    # "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_a
    if-ge v9, v10, :cond_a

    .line 1039
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1040
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1036
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 720
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v17, v2

    .end local v2    # "leadingWidth":I
    .local v17, "leadingWidth":I
    const-string v2, "Hint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1036
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    if-eqz v1, :cond_9

    move-object v8, v12

    goto :goto_b

    .line 1040
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1038
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_a

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "leadingWidth":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "leadingWidth":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 1042
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "leadingWidth":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v17    # "leadingWidth":I
    nop

    .line 1043
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 720
    .end local v6    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_b
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_b

    .local v8, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v1, 0x0

    .line 721
    .local v1, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 720
    .end local v1    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    .end local v8    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v6, v1

    goto :goto_c

    .line 722
    :cond_b
    const/4 v6, 0x0

    .line 720
    :goto_c
    nop

    .line 724
    .local v6, "placeholderWidth":I
    nop

    .line 725
    nop

    .line 726
    nop

    .line 727
    nop

    .line 728
    nop

    .line 729
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v7

    .line 723
    move/from16 v2, v17

    .end local v17    # "leadingWidth":I
    .restart local v2    # "leadingWidth":I
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/TextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    move-result v1

    return v1

    .line 1004
    .end local v6    # "placeholderWidth":I
    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    .local v2, "$i$f$fastFirst":I
    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v4, "$i$f$fastForEach":I
    .local v5, "index$iv$iv":I
    .local v7, "item$iv$iv":Ljava/lang/Object;
    :cond_c
    nop

    .line 1002
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v5    # "index$iv$iv":I
    :cond_d
    nop

    .line 1007
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Collection contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$maxIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 672
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$maxIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 690
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 36
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 556
    move-object/from16 v10, p0

    move-object/from16 v13, p1

    iget-object v0, v10, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 557
    .local v2, "topPaddingValue":I
    iget-object v0, v10, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v14

    .line 560
    .local v14, "bottomPaddingValue":I
    invoke-static {}, Landroidx/compose/material/TextFieldKt;->getTextFieldTopPadding()F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v12

    .line 561
    .local v12, "topPadding":I
    const/4 v0, 0x0

    .line 564
    .local v0, "occupiedSpaceHorizontally":I
    const/16 v21, 0xa

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v15, p3

    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 566
    .local v3, "looseConstraints":J
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 954
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 955
    move-object v6, v1

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 956
    .local v7, "$i$f$fastForEach":I
    nop

    .line 957
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_1

    .line 958
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 959
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 955
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/layout/Measurable;

    .local v18, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v19, 0x0

    .line 566
    .local v19, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    move/from16 v20, v0

    .end local v0    # "occupiedSpaceHorizontally":I
    .local v20, "occupiedSpaceHorizontally":I
    const-string/jumbo v0, "Leading"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 955
    .end local v18    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v19    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    if-eqz v0, :cond_0

    goto :goto_1

    .line 959
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 957
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v20

    goto :goto_0

    .end local v20    # "occupiedSpaceHorizontally":I
    .restart local v0    # "occupiedSpaceHorizontally":I
    :cond_1
    move/from16 v20, v0

    .line 961
    .end local v0    # "occupiedSpaceHorizontally":I
    .end local v8    # "index$iv$iv":I
    .restart local v20    # "occupiedSpaceHorizontally":I
    nop

    .line 962
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/16 v16, 0x0

    .line 566
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_1
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 565
    :goto_2
    move-object v0, v8

    .line 567
    .local v0, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 568
    nop

    .line 567
    invoke-static {v0}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int v1, v20, v1

    .line 573
    .end local v20    # "occupiedSpaceHorizontally":I
    .local v1, "occupiedSpaceHorizontally":I
    nop

    .line 572
    move-object/from16 v5, p2

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 963
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 964
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 965
    .local v8, "$i$f$fastForEach":I
    nop

    .line 966
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_3
    if-ge v9, v11, :cond_4

    .line 967
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 968
    .restart local v15    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .restart local v16    # "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 964
    .restart local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/layout/Measurable;

    .restart local v18    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v19, 0x0

    .line 572
    .local v19, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    move-object/from16 v25, v0

    .end local v0    # "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v25, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move-wide/from16 v20, v3

    .end local v3    # "looseConstraints":J
    .local v20, "looseConstraints":J
    const-string/jumbo v3, "Trailing"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 964
    .end local v18    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v19    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    if-eqz v0, :cond_3

    goto :goto_4

    .line 968
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 966
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, v20

    move-object/from16 v0, v25

    goto :goto_3

    .end local v20    # "looseConstraints":J
    .end local v25    # "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v0    # "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v3    # "looseConstraints":J
    :cond_4
    move-object/from16 v25, v0

    move-wide/from16 v20, v3

    .line 970
    .end local v0    # "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "looseConstraints":J
    .end local v9    # "index$iv$iv":I
    .restart local v20    # "looseConstraints":J
    .restart local v25    # "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 971
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/16 v16, 0x0

    .line 572
    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirstOrNull":I
    :goto_4
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 573
    if-eqz v0, :cond_5

    .line 572
    nop

    .line 573
    neg-int v5, v1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide/from16 v3, v20

    .end local v20    # "looseConstraints":J
    .restart local v3    # "looseConstraints":J
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object v9, v0

    goto :goto_5

    .end local v3    # "looseConstraints":J
    .restart local v20    # "looseConstraints":J
    :cond_5
    move-wide/from16 v3, v20

    .end local v20    # "looseConstraints":J
    .restart local v3    # "looseConstraints":J
    const/4 v9, 0x0

    .line 572
    :goto_5
    nop

    .line 574
    .local v9, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 575
    nop

    .line 574
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    add-int/2addr v0, v1

    .line 581
    .end local v1    # "occupiedSpaceHorizontally":I
    .local v0, "occupiedSpaceHorizontally":I
    neg-int v1, v14

    .line 582
    neg-int v5, v0

    .line 579
    nop

    .line 582
    nop

    .line 581
    nop

    .line 580
    invoke-static {v3, v4, v5, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v5

    .line 579
    nop

    .line 585
    .local v5, "labelConstraints":J
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 972
    .local v7, "$i$f$fastFirstOrNull":I
    nop

    .line 973
    move-object v8, v1

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 974
    .local v11, "$i$f$fastForEach":I
    nop

    .line 975
    const/4 v15, 0x0

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v15, "index$iv$iv":I
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    :goto_6
    if-ge v15, v1, :cond_7

    .line 976
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 977
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 973
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/ui/layout/Measurable;

    .local v20, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 585
    .local v21, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$labelPlaceable$1":I
    move/from16 v22, v1

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move-wide/from16 v26, v3

    .end local v3    # "looseConstraints":J
    .local v26, "looseConstraints":J
    const-string v3, "Label"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 973
    .end local v20    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$labelPlaceable$1":I
    if-eqz v1, :cond_6

    goto :goto_7

    .line 977
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 975
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v22

    move-wide/from16 v3, v26

    goto :goto_6

    .end local v26    # "looseConstraints":J
    .restart local v3    # "looseConstraints":J
    :cond_7
    move-wide/from16 v26, v3

    .line 979
    .end local v3    # "looseConstraints":J
    .end local v15    # "index$iv$iv":I
    .restart local v26    # "looseConstraints":J
    nop

    .line 980
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    const/16 v18, 0x0

    .line 585
    .end local v7    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_7
    move-object/from16 v1, v18

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    if-eqz v1, :cond_8

    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 584
    :goto_8
    nop

    .line 586
    .local v1, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    if-eqz v1, :cond_a

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v1, v4}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v4

    .local v4, "it":I
    const/4 v7, 0x0

    .line 587
    .local v7, "$i$a$-let-TextFieldMeasurePolicy$measure$lastBaseline$1":I
    const/high16 v8, -0x80000000

    if-eq v4, v8, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    move v4, v8

    .line 586
    .end local v4    # "it":I
    .end local v7    # "$i$a$-let-TextFieldMeasurePolicy$measure$lastBaseline$1":I
    :goto_9
    goto :goto_a

    .line 588
    :cond_a
    const/4 v4, 0x0

    .line 586
    :goto_a
    nop

    .line 589
    .local v4, "lastBaseline":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 593
    .local v11, "effectiveLabelBaseline":I
    if-eqz v1, :cond_b

    .line 594
    neg-int v7, v14

    sub-int/2addr v7, v12

    sub-int/2addr v7, v11

    goto :goto_b

    .line 596
    :cond_b
    neg-int v7, v2

    sub-int/2addr v7, v14

    .line 593
    :goto_b
    nop

    .line 598
    .local v7, "verticalConstraintOffset":I
    nop

    .line 599
    const/16 v21, 0xb

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v15, p3

    move/from16 v28, v4

    .end local v4    # "lastBaseline":I
    .local v28, "lastBaseline":I
    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 602
    neg-int v15, v0

    .line 599
    nop

    .line 602
    nop

    .line 601
    nop

    .line 600
    invoke-static {v3, v4, v15, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v3

    .line 598
    nop

    .line 604
    .local v3, "textFieldConstraints":J
    nop

    .line 605
    move-object/from16 v15, p2

    .local v15, "$this$fastFirst$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 981
    .local v16, "$i$f$fastFirst":I
    nop

    .line 982
    move-object/from16 v17, v15

    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 983
    .local v18, "$i$f$fastForEach":I
    nop

    .line 984
    const/16 v19, 0x0

    .local v19, "index$iv$iv":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v29, v0

    move/from16 v0, v19

    .end local v19    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    .local v29, "occupiedSpaceHorizontally":I
    :goto_c
    if-ge v0, v8, :cond_11

    .line 985
    move-object/from16 v30, v1

    move-object/from16 v1, v17

    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v30, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 986
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v17

    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 982
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v21, v19

    check-cast v21, Landroidx/compose/ui/layout/Measurable;

    .local v21, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v22, 0x0

    .line 605
    .local v22, "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    move/from16 v31, v0

    .end local v0    # "index$iv$iv":I
    .local v31, "index$iv$iv":I
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v1

    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v32, "$this$fastForEach$iv$iv":Ljava/util/List;
    const-string/jumbo v1, "TextField"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 982
    .end local v21    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v22    # "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    if-eqz v0, :cond_10

    .line 989
    .end local v15    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastFirst":I
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$fastForEach":I
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v31    # "index$iv$iv":I
    .end local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 606
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 604
    nop

    .line 609
    .local v0, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v15, v3

    .end local v3    # "textFieldConstraints":J
    .local v15, "textFieldConstraints":J
    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 612
    move-wide/from16 v33, v15

    .line 610
    .end local v15    # "textFieldConstraints":J
    .local v3, "placeholderConstraints":J
    .local v33, "textFieldConstraints":J
    nop

    .line 611
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 990
    .local v8, "$i$f$fastFirstOrNull":I
    nop

    .line 991
    move-object v15, v1

    .local v15, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 992
    .local v16, "$i$f$fastForEach":I
    nop

    .line 993
    const/16 v17, 0x0

    move-object/from16 v31, v0

    .end local v0    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v17, "index$iv$iv":I
    .local v31, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v18, v1

    move/from16 v1, v17

    .end local v17    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    .local v18, "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_d
    if-ge v1, v0, :cond_d

    .line 994
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 995
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v17

    .restart local v19    # "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 991
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v21, v19

    check-cast v21, Landroidx/compose/ui/layout/Measurable;

    .restart local v21    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v22, 0x0

    .line 611
    .local v22, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    move/from16 v32, v0

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v35, v1

    .end local v1    # "index$iv$iv":I
    .local v35, "index$iv$iv":I
    const-string v1, "Hint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 991
    .end local v21    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v22    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    if-eqz v0, :cond_c

    goto :goto_e

    .line 995
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 993
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v35, 0x1

    move/from16 v0, v32

    .end local v35    # "index$iv$iv":I
    .restart local v1    # "index$iv$iv":I
    goto :goto_d

    :cond_d
    move/from16 v35, v1

    .line 997
    .end local v1    # "index$iv$iv":I
    nop

    .line 998
    .end local v15    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    const/16 v19, 0x0

    .line 611
    .end local v8    # "$i$f$fastFirstOrNull":I
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_e
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 612
    if-eqz v0, :cond_e

    .line 611
    nop

    .line 612
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 610
    :goto_f
    nop

    .line 615
    .local v0, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v25 .. v25}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    .line 616
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v16

    .line 617
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v17

    .line 618
    invoke-static/range {v30 .. v30}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v18

    .line 619
    invoke-static {v0}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v19

    .line 620
    nop

    .line 614
    move-wide/from16 v20, p3

    invoke-static/range {v15 .. v21}, Landroidx/compose/material/TextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    move-result v1

    .line 623
    .local v1, "width":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v15

    .line 624
    if-eqz v30, :cond_f

    const/4 v8, 0x1

    move/from16 v16, v8

    goto :goto_10

    :cond_f
    const/16 v16, 0x0

    .line 625
    :goto_10
    nop

    .line 626
    invoke-static/range {v25 .. v25}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v18

    .line 627
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v19

    .line 628
    invoke-static {v0}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v20

    .line 629
    nop

    .line 630
    invoke-interface {v13}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v23

    .line 631
    iget-object v8, v10, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 622
    move-wide/from16 v21, p3

    move-object/from16 v24, v8

    move/from16 v17, v11

    .end local v11    # "effectiveLabelBaseline":I
    .local v17, "effectiveLabelBaseline":I
    invoke-static/range {v15 .. v24}, Landroidx/compose/material/TextFieldKt;->access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v8

    .line 634
    .end local v17    # "effectiveLabelBaseline":I
    .local v8, "height":I
    .restart local v11    # "effectiveLabelBaseline":I
    move v15, v7

    move-object v7, v0

    .end local v0    # "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v7, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v15, "verticalConstraintOffset":I
    new-instance v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;

    move-wide/from16 v21, v5

    move v5, v8

    move-object/from16 v8, v25

    move-object/from16 v6, v31

    move/from16 v25, v15

    move-wide v15, v3

    move/from16 v3, v28

    move v4, v1

    move-object/from16 v1, v30

    .end local v28    # "lastBaseline":I
    .end local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v31    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v1, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v3, "lastBaseline":I
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v8, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v15, "placeholderConstraints":J
    .local v21, "labelConstraints":J
    .local v25, "verticalConstraintOffset":I
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V

    move v1, v4

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v2

    move v2, v5

    .end local v3    # "lastBaseline":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v1, "width":I
    .local v2, "height":I
    .local v7, "topPaddingValue":I
    .local v8, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v9, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v10, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v28    # "lastBaseline":I
    .restart local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v31    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    return-object v3

    .line 982
    .end local v1    # "width":I
    .end local v8    # "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v21    # "labelConstraints":J
    .end local v33    # "textFieldConstraints":J
    .local v2, "topPaddingValue":I
    .local v3, "textFieldConstraints":J
    .local v5, "labelConstraints":J
    .local v7, "verticalConstraintOffset":I
    .local v9, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v15, "$this$fastFirst$iv":Ljava/util/List;
    .local v16, "$i$f$fastFirst":I
    .local v17, "item$iv$iv":Ljava/lang/Object;
    .local v18, "$i$f$fastForEach":I
    .restart local v19    # "it$iv":Ljava/lang/Object;
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v25, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v31, "index$iv$iv":I
    .restart local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_10
    move-wide/from16 v33, v3

    move-wide/from16 v21, v5

    move-object v10, v9

    move-object/from16 v9, v25

    move/from16 v25, v7

    move v7, v2

    .line 986
    .end local v2    # "topPaddingValue":I
    .end local v3    # "textFieldConstraints":J
    .end local v5    # "labelConstraints":J
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v7, "topPaddingValue":I
    .local v9, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v10    # "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v21    # "labelConstraints":J
    .local v25, "verticalConstraintOffset":I
    .restart local v33    # "textFieldConstraints":J
    nop

    .line 984
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v31, 0x1

    move-object/from16 v13, p1

    move/from16 v7, v25

    move-object/from16 v1, v30

    move-object/from16 v17, v32

    move-object/from16 v25, v9

    move-object v9, v10

    move-object/from16 v10, p0

    .end local v31    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    goto/16 :goto_c

    .end local v10    # "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v21    # "labelConstraints":J
    .end local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v33    # "textFieldConstraints":J
    .local v1, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v2    # "topPaddingValue":I
    .restart local v3    # "textFieldConstraints":J
    .restart local v5    # "labelConstraints":J
    .local v7, "verticalConstraintOffset":I
    .local v9, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v25, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    :cond_11
    move/from16 v31, v0

    move-object/from16 v30, v1

    .line 988
    .end local v0    # "index$iv$iv":I
    .end local v1    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 989
    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$minIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 681
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$minIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 699
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
