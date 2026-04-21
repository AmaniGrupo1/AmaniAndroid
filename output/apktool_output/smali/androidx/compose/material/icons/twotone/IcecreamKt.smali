.class public final Landroidx/compose/material/icons/twotone/IcecreamKt;
.super Ljava/lang/Object;
.source "Icecream.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIcecream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Icecream.kt\nandroidx/compose/material/icons/twotone/IcecreamKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,105:1\n212#2,12:106\n233#2,18:119\n253#2:156\n233#2,18:157\n253#2:194\n233#2,18:195\n253#2:232\n174#3:118\n705#4,2:137\n717#4,2:139\n719#4,11:145\n705#4,2:175\n717#4,2:177\n719#4,11:183\n705#4,2:213\n717#4,2:215\n719#4,11:221\n72#5,4:141\n72#5,4:179\n72#5,4:217\n*S KotlinDebug\n*F\n+ 1 Icecream.kt\nandroidx/compose/material/icons/twotone/IcecreamKt\n*L\n29#1:106,12\n30#1:119,18\n30#1:156\n38#1:157,18\n38#1:194\n60#1:195,18\n60#1:232\n29#1:118\n30#1:137,2\n30#1:139,2\n30#1:145,11\n38#1:175,2\n38#1:177,2\n38#1:183,11\n60#1:213,2\n60#1:215,2\n60#1:221,11\n30#1:141,4\n38#1:179,4\n60#1:217,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_icecream",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Icecream",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getIcecream",
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
.field private static _icecream:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getIcecream(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 50
    .param p0, "$this$Icecream"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/IcecreamKt;->_icecream:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/IcecreamKt;->_icecream:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "TwoTone.Icecream"

    .line 106
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 108
    const/4 v10, 0x0

    .line 106
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 117
    .local v0, "$i$f$materialIcon":I
    nop

    .line 110
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 111
    nop

    .line 112
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 118
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 113
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 118
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 114
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 115
    nop

    .line 110
    nop

    .line 116
    nop

    .line 110
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    nop

    .local v1, "$this$_get_Icecream__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-IcecreamKt$Icecream$1":I
    const v16, 0x3e99999a    # 0.3f

    .local v16, "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v4, v1

    .line 119
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 122
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 119
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 128
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 129
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 131
    nop

    .line 133
    nop

    .line 134
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 135
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 136
    nop

    .line 128
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 137
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 138
    const-string v14, ""

    .line 137
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 139
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 142
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_Icecream__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-IcecreamKt$Icecream$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x41151eb8    # 9.32f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_Icecream__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_Icecream__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, 0x4156b852    # 13.42f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v0, 0x402eb852    # 2.73f

    const v1, 0x40a6b852    # 5.21f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v0, 0x402ae148    # 2.67f

    const v1, -0x3f58a3d7    # -5.23f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x41600000    # 14.0f

    const v24, 0x415e147b    # 13.88f

    const v25, 0x415ca3d7    # 13.79f

    const v26, 0x414f3333    # 12.95f

    const/high16 v27, 0x41600000    # 14.0f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Icecream__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x41151eb8    # 9.32f

    const v29, 0x4156b852    # 13.42f

    const v24, 0x4130f5c3    # 11.06f

    const/high16 v25, 0x41600000    # 14.0f

    const v26, 0x41226666    # 10.15f

    const v27, 0x415ca3d7    # 13.79f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    nop

    .line 142
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-IcecreamKt$Icecream$1$1":I
    nop

    .line 143
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 141
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 144
    nop

    .line 145
    .end local v7    # "$i$f$PathData":I
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 139
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 155
    nop

    .line 156
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

    .line 38
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    const v38, 0x3e99999a    # 0.3f

    .local v38, "fillAlpha$iv":F
    const v40, 0x3e99999a    # 0.3f

    .local v40, "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 157
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 160
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v35

    .line 157
    .local v35, "pathFillType$iv":I
    const/4 v1, 0x0

    .line 166
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 167
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/graphics/Brush;

    .line 169
    nop

    .line 171
    nop

    .line 172
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v42

    .line 173
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v43

    .line 174
    nop

    .line 166
    const/16 v39, 0x0

    .local v37, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v39, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v33, v0

    .local v33, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v41, 0x3f800000    # 1.0f

    .local v41, "strokeLineWidth$iv$iv":F
    .local v42, "strokeLineCap$iv$iv":I
    const/high16 v44, 0x3f800000    # 1.0f

    .line 175
    .local v43, "strokeLineJoin$iv$iv":I
    .local v44, "strokeLineMiter$iv$iv":F
    nop

    .line 176
    const-string v36, ""

    .line 175
    .local v36, "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 177
    .local v4, "$i$f$path-R_LF-3I":I
    nop

    .line 178
    const/4 v5, 0x0

    .line 179
    .local v5, "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v6, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 180
    .local v7, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v6

    .local v11, "$this$_get_Icecream__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 39
    .local v8, "$i$a$-materialPath-YwgOQQI$default-IcecreamKt$Icecream$1$2":I
    const v9, 0x418a7ae1    # 17.31f

    const v12, 0x410051ec    # 8.02f

    invoke-virtual {v11, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v9, 0x418451ec    # 16.54f

    const v12, 0x40fccccd    # 7.9f

    invoke-virtual {v11, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v9, -0x428a3d71    # -0.06f

    const v12, -0x40b851ec    # -0.78f

    invoke-virtual {v11, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x40400000    # 3.0f

    const v12, 0x418251ec    # 16.29f

    const v13, 0x4099999a    # 4.8f

    const v14, 0x416570a4    # 14.34f

    const/high16 v15, 0x40400000    # 3.0f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v9, 0x40f051ec    # 7.51f

    const v12, 0x40e3d70a    # 7.12f

    const v13, 0x40f6b852    # 7.71f

    const v14, 0x4099999a    # 4.8f

    invoke-virtual {v11, v13, v14, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v9, 0x40ee6666    # 7.45f

    const v12, 0x40fccccd    # 7.9f

    invoke-virtual {v11, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v9, 0x40d5c28f    # 6.68f

    const v12, 0x41007ae1    # 8.03f

    invoke-virtual {v11, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v16, 0x40a00000    # 5.0f

    const/high16 v17, 0x41200000    # 10.0f

    const v12, 0x40b70a3d    # 5.72f

    const v13, 0x4102e148    # 8.18f

    const/high16 v14, 0x40a00000    # 5.0f

    const v15, 0x411051ec    # 9.02f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const v13, 0x3f8e147b    # 1.11f

    const v14, 0x3f666666    # 0.9f

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v16, 0x3fb1eb85    # 1.39f

    const v17, -0x40f0a3d7    # -0.56f

    const v12, 0x3f051eb8    # 0.52f

    const/4 v13, 0x0

    const v14, 0x3f8147ae    # 1.01f

    const v15, -0x41a8f5c3    # -0.21f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v9, -0x40f5c28f    # -0.54f

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v9, 0x3ed1eb85    # 0.41f

    const v12, 0x3f28f5c3    # 0.66f

    invoke-virtual {v11, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x41400000    # 12.0f

    const v12, 0x41251eb8    # 10.32f

    const v13, 0x413c28f6    # 11.76f

    const v14, 0x41323d71    # 11.14f

    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v9, 0x4018f5c3    # 2.39f

    const v12, -0x40d1eb85    # -0.68f

    const v13, -0x418a3d71    # -0.24f

    const v14, 0x3fd70a3d    # 1.68f

    invoke-virtual {v11, v14, v13, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v9, -0x4128f5c3    # -0.42f

    const v12, 0x3f28f5c3    # 0.66f

    invoke-virtual {v11, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v9, 0x3f0a3d71    # 0.54f

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v16, 0x41880000    # 17.0f

    const v12, 0x417fd70a    # 15.99f

    const v13, 0x413ccccd    # 11.8f

    const v14, 0x4183d70a    # 16.48f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, -0x40000000    # -2.0f

    const v12, 0x3f8ccccd    # 1.1f

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const v15, -0x4099999a    # -0.9f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v16, 0x418a7ae1    # 17.31f

    const v17, 0x410051ec    # 8.02f

    const/high16 v12, 0x41980000    # 19.0f

    const v13, 0x411028f6    # 9.01f

    const v14, 0x41923d71    # 18.28f

    const v15, 0x4102e148    # 8.18f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    nop

    .line 180
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-IcecreamKt$Icecream$1$2":I
    .end local v11    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 181
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v34

    .line 179
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 182
    nop

    .line 183
    .end local v5    # "$i$f$PathData":I
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
    nop

    .line 177
    const/16 v48, 0x3800

    const/16 v49, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v33 .. v49}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 193
    nop

    .line 194
    .end local v4    # "$i$f$path-R_LF-3I":I
    .end local v33    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v36    # "name$iv$iv":Ljava/lang/String;
    .end local v37    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v39    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v41    # "strokeLineWidth$iv$iv":F
    .end local v42    # "strokeLineCap$iv$iv":I
    .end local v43    # "strokeLineJoin$iv$iv":I
    .end local v44    # "strokeLineMiter$iv$iv":F
    nop

    .line 60
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v35    # "pathFillType$iv":I
    .end local v38    # "fillAlpha$iv":F
    .end local v40    # "strokeAlpha$iv":F
    nop

    .line 195
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 196
    const/high16 v16, 0x3f800000    # 1.0f

    .line 195
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 197
    const/high16 v18, 0x3f800000    # 1.0f

    .line 195
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 198
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 195
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 204
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 205
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 207
    nop

    .line 209
    nop

    .line 210
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 211
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 212
    nop

    .line 204
    const/16 v17, 0x0

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 213
    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 214
    const-string v14, ""

    .line 213
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 215
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 216
    const/4 v5, 0x0

    .line 217
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 218
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 61
    .local v9, "$i$a$-materialPath-YwgOQQI$default-IcecreamKt$Icecream$1$3":I
    const v12, 0x41930a3d    # 18.38f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x40c7ae14    # 6.24f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const v24, 0x418e51ec    # 17.79f

    const v25, 0x404f5c29    # 3.24f

    const v26, 0x41723d71    # 15.14f

    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x404f5c29    # 3.24f

    const v12, 0x40b3d70a    # 5.62f

    move/from16 v33, v1

    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .local v33, "$i$f$materialPath-YwgOQQI":I
    const v1, 0x40c7ae14    # 6.24f

    move-object/from16 v34, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v34, "name$iv":Ljava/lang/String;
    const v2, 0x40c6b852    # 6.21f

    invoke-virtual {v0, v2, v8, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v28, 0x40400000    # 3.0f

    const/high16 v29, 0x41200000    # 10.0f

    const v24, 0x40828f5c    # 4.08f

    const v25, 0x40d9eb85    # 6.81f

    const/high16 v26, 0x40400000    # 3.0f

    const v27, 0x4104a3d7    # 8.29f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v28, 0x40800000    # 4.0f

    const/high16 v29, 0x40800000    # 4.0f

    const/16 v24, 0x0

    const v25, 0x400d70a4    # 2.21f

    const v26, 0x3fe51eb8    # 1.79f

    const/high16 v27, 0x40800000    # 4.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, 0x3eae147b    # 0.34f

    const v29, -0x435c28f6    # -0.02f

    const v24, 0x3df5c28f    # 0.12f

    const/16 v25, 0x0

    const v26, 0x3e6b851f    # 0.23f

    const v27, -0x435c28f6    # -0.02f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x41411eb8    # 12.07f

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v1, 0x4093851f    # 4.61f

    const v2, -0x3eef851f    # -9.03f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v28, 0x41880000    # 17.0f

    const/high16 v29, 0x41600000    # 14.0f

    const v24, 0x418651ec    # 16.79f

    const v25, 0x415fae14    # 13.98f

    const v26, 0x41871eb8    # 16.89f

    const/high16 v27, 0x41600000    # 14.0f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v28, 0x40800000    # 4.0f

    const/high16 v29, -0x3f800000    # -4.0f

    const v24, 0x400d70a4    # 2.21f

    const/16 v25, 0x0

    const/high16 v26, 0x40800000    # 4.0f

    const v27, -0x401ae148    # -1.79f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, 0x41930a3d    # 18.38f

    const v29, 0x40c7ae14    # 6.24f

    const/high16 v24, 0x41a80000    # 21.0f

    const v25, 0x4104a3d7    # 8.29f

    const v26, 0x419f5c29    # 19.92f

    const v27, 0x40d9eb85    # 6.81f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v1, 0x41950a3d    # 18.63f

    const v2, 0x4140cccd    # 12.05f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v1, -0x3fd147ae    # -2.73f

    const v2, -0x3f5947ae    # -5.21f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x41600000    # 14.0f

    const v24, 0x41226666    # 10.15f

    const v25, 0x415ca3d7    # 13.79f

    const v26, 0x4130f5c3    # 11.06f

    const/high16 v27, 0x41600000    # 14.0f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v28, 0x402e147b    # 2.72f

    const v29, -0x40e66666    # -0.6f

    const v24, 0x3f733333    # 0.95f

    const/16 v25, 0x0

    const v26, 0x3ff0a3d7    # 1.88f

    const v27, -0x41a8f5c3    # -0.21f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x41950a3d    # 18.63f

    const v2, 0x4140cccd    # 12.05f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v28, -0x404e147b    # -1.39f

    const v29, -0x40f0a3d7    # -0.56f

    const v24, -0x40fae148    # -0.52f

    const v26, -0x407eb852    # -1.01f

    const v27, -0x41b33333    # -0.2f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x40f0a3d7    # -0.56f

    const v2, -0x40f5c28f    # -0.54f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v1, -0x40d70a3d    # -0.66f

    const v2, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x41400000    # 12.0f

    const v24, 0x415ae148    # 13.68f

    const v25, 0x413c28f6    # 11.76f

    const v26, 0x414dc28f    # 12.86f

    const/high16 v27, 0x41400000    # 12.0f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x3fe70a3d    # -2.39f

    const v2, -0x40cf5c29    # -0.69f

    const v8, -0x418a3d71    # -0.24f

    const v12, -0x4028f5c3    # -1.68f

    invoke-virtual {v0, v12, v8, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v1, 0x410f3333    # 8.95f

    const v2, 0x412e6666    # 10.9f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v1, -0x40f0a3d7    # -0.56f

    const v2, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const/high16 v28, 0x40e00000    # 7.0f

    const v24, 0x410028f6    # 8.01f

    const v25, 0x413ca3d7    # 11.79f

    const v26, 0x40f0a3d7    # 7.52f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v28, -0x40000000    # -2.0f

    const/high16 v29, -0x40000000    # -2.0f

    const v24, -0x40733333    # -1.1f

    const/16 v25, 0x0

    const/high16 v26, -0x40000000    # -2.0f

    const v27, -0x409c28f6    # -0.89f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v28, 0x3fd70a3d    # 1.68f

    const v29, -0x4003d70a    # -1.97f

    const/16 v24, 0x0

    const v25, -0x40851eb8    # -0.98f

    const v26, 0x3f3851ec    # 0.72f

    const v27, -0x40170a3d    # -1.82f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x40ee6666    # 7.45f

    const v2, 0x40fccccd    # 7.9f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v1, 0x3d75c28f    # 0.06f

    const v2, -0x40b851ec    # -0.78f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x40400000    # 3.0f

    const v24, 0x40f6b852    # 7.71f

    const v25, 0x4099999a    # 4.8f

    const v26, 0x411a8f5c    # 9.66f

    const/high16 v27, 0x40400000    # 3.0f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x408f5c29    # 4.48f

    const v2, 0x4083d70a    # 4.12f

    const v8, 0x408947ae    # 4.29f

    const v12, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v8, v12, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v1, 0x3f47ae14    # 0.78f

    const v2, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3df5c28f    # 0.12f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v28, 0x41980000    # 19.0f

    const/high16 v29, 0x41200000    # 10.0f

    const v24, 0x41923d71    # 18.28f

    const v25, 0x4102e148    # 8.18f

    const/high16 v26, 0x41980000    # 19.0f

    const v27, 0x411028f6    # 9.01f

    .end local v0    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v28, 0x41880000    # 17.0f

    const/high16 v29, 0x41400000    # 12.0f

    const/high16 v24, 0x41980000    # 19.0f

    const v25, 0x4131999a    # 11.1f

    const v26, 0x4190cccd    # 18.1f

    const/high16 v27, 0x41400000    # 12.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    nop

    .line 218
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-IcecreamKt$Icecream$1$3":I
    .end local v23    # "$this$_get_Icecream__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 219
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 217
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 220
    nop

    .line 221
    .end local v5    # "$i$f$PathData":I
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 229
    nop

    .line 230
    nop

    .line 215
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 231
    nop

    .line 232
    .end local v4    # "$i$f$path-R_LF-3I":I
    .end local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v14    # "name$iv$iv":Ljava/lang/String;
    .end local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v19    # "strokeLineWidth$iv$iv":F
    .end local v20    # "strokeLineCap$iv$iv":I
    .end local v21    # "strokeLineJoin$iv$iv":I
    .end local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 60
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v33    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 117
    .end local v3    # "$i$a$-materialIcon$default-IcecreamKt$Icecream$1":I
    .end local v32    # "$this$_get_Icecream__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    .end local v34    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/IcecreamKt;->_icecream:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 101
    sget-object v0, Landroidx/compose/material/icons/twotone/IcecreamKt;->_icecream:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
