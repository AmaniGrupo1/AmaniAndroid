.class public final Landroidx/compose/material/icons/twotone/BackHandKt;
.super Ljava/lang/Object;
.source "BackHand.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackHand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackHand.kt\nandroidx/compose/material/icons/twotone/BackHandKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,118:1\n212#2,12:119\n233#2,18:132\n253#2:169\n233#2,18:170\n253#2:207\n174#3:131\n705#4,2:150\n717#4,2:152\n719#4,11:158\n705#4,2:188\n717#4,2:190\n719#4,11:196\n72#5,4:154\n72#5,4:192\n*S KotlinDebug\n*F\n+ 1 BackHand.kt\nandroidx/compose/material/icons/twotone/BackHandKt\n*L\n29#1:119,12\n30#1:132,18\n30#1:169\n61#1:170,18\n61#1:207\n29#1:131\n30#1:150,2\n30#1:152,2\n30#1:158,11\n61#1:188,2\n61#1:190,2\n61#1:196,11\n30#1:154,4\n61#1:192,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_backHand",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "BackHand",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getBackHand",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static _backHand:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getBackHand(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 34
    .param p0, "$this$BackHand"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/BackHandKt;->_backHand:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/BackHandKt;->_backHand:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "TwoTone.BackHand"

    .line 119
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 121
    const/4 v10, 0x0

    .line 119
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 130
    .local v0, "$i$f$materialIcon":I
    nop

    .line 123
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 124
    nop

    .line 125
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 126
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 131
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 127
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 128
    nop

    .line 123
    nop

    .line 129
    nop

    .line 123
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    nop

    .local v1, "$this$_get_BackHand__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-BackHandKt$BackHand$1":I
    const v16, 0x3e99999a    # 0.3f

    .local v16, "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v4, v1

    .line 132
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 135
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 132
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 141
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 142
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 144
    nop

    .line 146
    nop

    .line 147
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 148
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 149
    nop

    .line 141
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 150
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 151
    const-string v14, ""

    .line 150
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 152
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 155
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-BackHandKt$BackHand$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const/high16 v0, 0x41800000    # 16.0f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_BackHand__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_BackHand__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v28, -0x3f400000    # -6.0f

    const/high16 v29, 0x40c00000    # 6.0f

    const/16 v24, 0x0

    const v25, 0x4053d70a    # 3.31f

    const v26, -0x3fd3d70a    # -2.69f

    const/high16 v27, 0x40c00000    # 6.0f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, -0x3f42e148    # -5.91f

    const v29, -0x3f7fae14    # -4.01f

    const v24, -0x3fd8f5c3    # -2.61f

    const/16 v25, 0x0

    const v26, -0x3f61999a    # -4.95f

    const v27, -0x40347ae1    # -1.59f

    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x3f2eb852    # -6.54f

    const v12, -0x3fd9999a    # -2.6f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v1, 0x3e0f5c29    # 0.14f

    const v12, 0x3f07ae14    # 0.53f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v28, 0x3f800000    # 1.0f

    const v29, 0x3f666666    # 0.9f

    const v24, 0x3eeb851f    # 0.46f

    const v25, 0x3df5c28f    # 0.12f

    const v26, 0x3f547ae1    # 0.83f

    const v27, 0x3eeb851f    # 0.46f

    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v28, 0x41180000    # 9.5f

    const/high16 v29, 0x40800000    # 4.0f

    const/high16 v24, 0x41100000    # 9.0f

    const v25, 0x40870a3d    # 4.22f

    const v26, 0x4113851f    # 9.22f

    const/high16 v27, 0x40800000    # 4.0f

    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x40870a3d    # 4.22f

    const/high16 v12, 0x41200000    # 10.0f

    move-object/from16 v33, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v33, "name$iv":Ljava/lang/String;
    const/high16 v2, 0x40900000    # 4.5f

    invoke-virtual {v0, v12, v1, v12, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v28, 0x41480000    # 12.5f

    const/high16 v29, 0x40000000    # 2.0f

    const/high16 v24, 0x41400000    # 12.0f

    const v25, 0x400e147b    # 2.22f

    const v26, 0x4143851f    # 12.22f

    const/high16 v27, 0x40000000    # 2.0f

    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x400e147b    # 2.22f

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v12, 0x40200000    # 2.5f

    invoke-virtual {v0, v2, v1, v2, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v28, 0x3f000000    # 0.5f

    const/high16 v29, -0x41000000    # -0.5f

    const/16 v24, 0x0

    const v25, -0x4170a3d7    # -0.28f

    const v26, 0x3e6147ae    # 0.22f

    const/high16 v27, -0x41000000    # -0.5f

    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x406e147b    # 3.72f

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v0, v12, v1, v12, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    nop

    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x40d70a3d    # 6.72f

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v0, v12, v1, v12, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x41980000    # 19.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    nop

    .line 155
    .end local v0    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-BackHandKt$BackHand$1$1":I
    nop

    .line 156
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 154
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 157
    nop

    .line 158
    .end local v7    # "$i$f$PathData":I
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 152
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 168
    nop

    .line 169
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v14    # "name$iv$iv":Ljava/lang/String;
    .end local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v19    # "strokeLineWidth$iv$iv":F
    .end local v20    # "strokeLineCap$iv$iv":I
    .end local v21    # "strokeLineJoin$iv$iv":I
    .end local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 61
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 170
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 171
    const/high16 v16, 0x3f800000    # 1.0f

    .line 170
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 172
    const/high16 v18, 0x3f800000    # 1.0f

    .line 170
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 173
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 170
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 179
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 180
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 182
    nop

    .line 184
    nop

    .line 185
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 186
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 187
    nop

    .line 179
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 188
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 189
    const-string v14, ""

    .line 188
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 190
    .local v2, "$i$f$path-R_LF-3I":I
    nop

    .line 191
    const/4 v4, 0x0

    .line 192
    .local v4, "$i$f$PathData":I
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v5, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v6, 0x0

    .line 193
    .local v6, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v7, v5

    .local v7, "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 62
    .local v8, "$i$a$-materialPath-YwgOQQI$default-BackHandKt$BackHand$1$2":I
    const/high16 v9, 0x41a80000    # 21.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v28, -0x3fe00000    # -2.5f

    const/high16 v29, -0x3fe00000    # -2.5f

    const v25, -0x404f5c29    # -1.38f

    const v26, -0x4070a3d7    # -1.12f

    const/high16 v27, -0x3fe00000    # -2.5f

    move-object/from16 v23, v7

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v28, -0x41000000    # -0.5f

    const v29, 0x3d4ccccd    # 0.05f

    const v24, -0x41d1eb85    # -0.17f

    const/16 v25, 0x0

    const v26, -0x4151eb85    # -0.34f

    const v27, 0x3ca3d70a    # 0.02f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v28, -0x3fe00000    # -2.5f

    const/high16 v29, -0x3fe00000    # -2.5f

    const/16 v24, 0x0

    const v25, -0x404f5c29    # -1.38f

    const v26, -0x4070a3d7    # -1.12f

    const/high16 v27, -0x3fe00000    # -2.5f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, -0x40d47ae1    # -0.67f

    const v29, 0x3db851ec    # 0.09f

    const v24, -0x41947ae1    # -0.23f

    const/16 v25, 0x0

    const v26, -0x41147ae1    # -0.46f

    const v27, 0x3cf5c28f    # 0.03f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v28, 0x41480000    # 12.5f

    const/16 v29, 0x0

    const v24, 0x41675c29    # 14.46f

    const v25, 0x3f28f5c3    # 0.66f

    const v26, 0x4158f5c3    # 13.56f

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, -0x3fe28f5c    # -2.46f

    const v29, 0x4003d70a    # 2.06f

    const v24, -0x40628f5c    # -1.23f

    const/16 v25, 0x0

    const/high16 v26, -0x3ff00000    # -2.25f

    const v27, 0x3f63d70a    # 0.89f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v28, 0x41180000    # 9.5f

    const/high16 v29, 0x40000000    # 2.0f

    const v24, 0x411deb85    # 9.87f

    const v25, 0x400147ae    # 2.02f

    const v26, 0x411b0a3d    # 9.69f

    const/high16 v27, 0x40000000    # 2.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v28, 0x40e00000    # 7.0f

    const/high16 v29, 0x40900000    # 4.5f

    const v24, 0x4101eb85    # 8.12f

    const/high16 v25, 0x40000000    # 2.0f

    const/high16 v26, 0x40e00000    # 7.0f

    const v27, 0x4047ae14    # 3.12f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, 0x40bc7ae1    # 5.89f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v28, -0x4063d70a    # -1.22f

    const v29, -0x40d70a3d    # -0.66f

    const v24, -0x4151eb85    # -0.34f

    const v25, -0x416147ae    # -0.31f

    const v26, -0x40bd70a4    # -0.76f

    const v27, -0x40f5c28f    # -0.54f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, 0x40a051ec    # 5.01f

    const v12, 0x411851ec    # 9.52f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v28, -0x3ff3d70a    # -2.19f

    const v29, 0x3f547ae1    # 0.83f

    const v24, -0x40ab851f    # -0.83f

    const v25, -0x41947ae1    # -0.23f

    const v26, -0x40266666    # -1.7f

    const v27, 0x3db851ec    # 0.09f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v28, -0x41e66666    # -0.15f

    const v29, 0x3ff9999a    # 1.95f

    const v24, -0x413d70a4    # -0.38f

    const v25, 0x3f11eb85    # 0.57f

    const v26, -0x41333333    # -0.4f

    const v27, 0x3fa7ae14    # 1.31f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, 0x4023d70a    # 2.56f

    const v12, 0x40cdc28f    # 6.43f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/high16 v28, 0x41500000    # 13.0f

    const/high16 v29, 0x41c00000    # 24.0f

    const v24, 0x40cfae14    # 6.49f

    const v25, 0x41af47ae    # 21.91f

    const v26, 0x41191eb8    # 9.57f

    const/high16 v27, 0x41c00000    # 24.0f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/high16 v28, 0x41000000    # 8.0f

    const/high16 v29, -0x3f000000    # -8.0f

    const v24, 0x408d70a4    # 4.42f

    const/16 v25, 0x0

    const/high16 v26, 0x41000000    # 8.0f

    const v27, -0x3f9ae148    # -3.58f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const/high16 v28, -0x3f400000    # -6.0f

    const/high16 v29, 0x40c00000    # 6.0f

    const/16 v24, 0x0

    const v25, 0x4053d70a    # 3.31f

    const v26, -0x3fd3d70a    # -2.69f

    const/high16 v27, 0x40c00000    # 6.0f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v28, -0x3f42e148    # -5.91f

    const v29, -0x3f7fae14    # -4.01f

    const v24, -0x3fd8f5c3    # -2.61f

    const/16 v25, 0x0

    const v26, -0x3f61999a    # -4.95f

    const v27, -0x40347ae1    # -1.59f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, -0x3f2eb852    # -6.54f

    const v12, -0x3fd9999a    # -2.6f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v9, 0x3e0f5c29    # 0.14f

    const v12, 0x3f07ae14    # 0.53f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const/high16 v28, 0x3f800000    # 1.0f

    const v29, 0x3f666666    # 0.9f

    const v24, 0x3eeb851f    # 0.46f

    const v25, 0x3df5c28f    # 0.12f

    const v26, 0x3f547ae1    # 0.83f

    const v27, 0x3eeb851f    # 0.46f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v9, 0x40900000    # 4.5f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/high16 v28, 0x41180000    # 9.5f

    const/high16 v29, 0x40800000    # 4.0f

    const/high16 v24, 0x41100000    # 9.0f

    const v25, 0x40870a3d    # 4.22f

    const v26, 0x4113851f    # 9.22f

    const/high16 v27, 0x40800000    # 4.0f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, 0x40870a3d    # 4.22f

    const/high16 v12, 0x41200000    # 10.0f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x40900000    # 4.5f

    invoke-virtual {v7, v12, v9, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const/high16 v28, 0x41480000    # 12.5f

    const/high16 v29, 0x40000000    # 2.0f

    const/high16 v24, 0x41400000    # 12.0f

    const v25, 0x400e147b    # 2.22f

    const v26, 0x4143851f    # 12.22f

    const/high16 v27, 0x40000000    # 2.0f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v0, 0x400e147b    # 2.22f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v12, 0x40200000    # 2.5f

    invoke-virtual {v7, v9, v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v28, 0x3f000000    # 0.5f

    const/high16 v29, -0x41000000    # -0.5f

    const/16 v24, 0x0

    const v25, -0x4170a3d7    # -0.28f

    const v26, 0x3e6147ae    # 0.22f

    const/high16 v27, -0x41000000    # -0.5f

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v0, 0x406e147b    # 3.72f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v7, v12, v0, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    nop

    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    .end local v23    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v0, 0x40d70a3d    # 6.72f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v7, v12, v0, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v9, 0x41980000    # 19.0f

    invoke-virtual {v7, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    nop

    .line 193
    .end local v7    # "$this$_get_BackHand__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-BackHandKt$BackHand$1$2":I
    nop

    .line 194
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 192
    .end local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 195
    nop

    .line 196
    .end local v4    # "$i$f$PathData":I
    nop

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 190
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 206
    nop

    .line 207
    .end local v2    # "$i$f$path-R_LF-3I":I
    .end local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v14    # "name$iv$iv":Ljava/lang/String;
    .end local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v19    # "strokeLineWidth$iv$iv":F
    .end local v20    # "strokeLineCap$iv$iv":I
    .end local v21    # "strokeLineJoin$iv$iv":I
    .end local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 61
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 130
    .end local v3    # "$i$a$-materialIcon$default-BackHandKt$BackHand$1":I
    .end local v32    # "$this$_get_BackHand__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    .end local v33    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/BackHandKt;->_backHand:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 114
    sget-object v0, Landroidx/compose/material/icons/twotone/BackHandKt;->_backHand:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
