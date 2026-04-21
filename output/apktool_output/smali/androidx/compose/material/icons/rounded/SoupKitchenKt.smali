.class public final Landroidx/compose/material/icons/rounded/SoupKitchenKt;
.super Ljava/lang/Object;
.source "SoupKitchen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoupKitchen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoupKitchen.kt\nandroidx/compose/material/icons/rounded/SoupKitchenKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,90:1\n212#2,12:91\n233#2,18:104\n253#2:141\n174#3:103\n705#4,2:122\n717#4,2:124\n719#4,11:130\n72#5,4:126\n*S KotlinDebug\n*F\n+ 1 SoupKitchen.kt\nandroidx/compose/material/icons/rounded/SoupKitchenKt\n*L\n29#1:91,12\n30#1:104,18\n30#1:141\n29#1:103\n30#1:122,2\n30#1:124,2\n30#1:130,11\n30#1:126,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_soupKitchen",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SoupKitchen",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getSoupKitchen",
        "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSoupKitchen(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 33
    .param p0, "$this$SoupKitchen"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Rounded.SoupKitchen"

    .line 91
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 93
    const/4 v10, 0x0

    .line 91
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$f$materialIcon":I
    nop

    .line 95
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 96
    nop

    .line 97
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 103
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 98
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 103
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 99
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 100
    nop

    .line 95
    nop

    .line 101
    nop

    .line 95
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    nop

    .local v1, "$this$_get_SoupKitchen__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-SoupKitchenKt$SoupKitchen$1":I
    move-object v4, v1

    .line 104
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 105
    const/high16 v16, 0x3f800000    # 1.0f

    .line 104
    .local v16, "fillAlpha$iv":F
    nop

    .line 106
    const/high16 v18, 0x3f800000    # 1.0f

    .line 104
    .local v18, "strokeAlpha$iv":F
    nop

    .line 107
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 104
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 114
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 116
    nop

    .line 118
    nop

    .line 119
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 120
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 121
    nop

    .line 113
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 122
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 123
    const-string v14, ""

    .line 122
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 124
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 127
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-SoupKitchenKt$SoupKitchen$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x40c4cccd    # 6.15f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_SoupKitchen__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_SoupKitchen__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x41580000    # 13.5f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x40ca3d71    # -0.71f

    const v29, -0x40a147ae    # -0.87f

    const v24, -0x41147ae1    # -0.46f

    const/16 v25, 0x0

    const v26, -0x40b33333    # -0.8f

    const v27, -0x4128f5c3    # -0.42f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v28, 0x40b00000    # 5.5f

    const/high16 v29, 0x41400000    # 12.0f

    const v24, 0x40af5c29    # 5.48f

    const v25, 0x41473333    # 12.45f

    const/high16 v26, 0x40b00000    # 5.5f

    const v27, 0x4143d70a    # 12.24f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v28, -0x40800000    # -1.0f

    const v29, -0x3f9851ec    # -3.62f

    const/16 v24, 0x0

    const/high16 v25, -0x40800000    # -1.0f

    const/high16 v26, -0x40800000    # -1.0f

    const v27, -0x3fc9999a    # -2.85f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x3e2e147b    # 0.17f

    const v29, -0x4091eb85    # -0.93f

    const v25, -0x416b851f    # -0.29f

    const v26, 0x3cf5c28f    # 0.03f

    const v27, -0x40e8f5c3    # -0.59f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x40aae148    # 5.34f

    const/high16 v29, 0x40e00000    # 7.0f

    const v24, 0x4098f5c3    # 4.78f

    const v25, 0x40e5c28f    # 7.18f

    const v26, 0x40a147ae    # 5.04f

    const/high16 v27, 0x40e00000    # 7.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, 0x3f35c28f    # 0.71f

    const v29, 0x3f5c28f6    # 0.86f

    const v24, 0x3ee66666    # 0.45f

    const/16 v25, 0x0

    const v26, 0x3f4ccccd    # 0.8f

    const v27, 0x3ed70a3d    # 0.42f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v28, 0x40c00000    # 6.0f

    const v29, 0x4106147b    # 8.38f

    const v24, 0x40c051ec    # 6.01f

    const v25, 0x4100a3d7    # 8.04f

    const/high16 v26, 0x40c00000    # 6.0f

    const v27, 0x41035c29    # 8.21f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v28, 0x40e00000    # 7.0f

    const/high16 v29, 0x41400000    # 12.0f

    const/high16 v24, 0x40c00000    # 6.0f

    const v25, 0x41126666    # 9.15f

    const/high16 v26, 0x40e00000    # 7.0f

    const/high16 v27, 0x41300000    # 11.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, -0x41d1eb85    # -0.17f

    const v29, 0x3f8147ae    # 1.01f

    const/16 v24, 0x0

    const v25, 0x3ed70a3d    # 0.42f

    const v26, -0x425c28f6    # -0.08f

    const v27, 0x3f428f5c    # 0.76f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x40c4cccd    # 6.15f

    const/high16 v29, 0x41580000    # 13.5f

    const v24, 0x40d75c29    # 6.73f

    const v25, 0x4154f5c3    # 13.31f

    const v26, 0x40ceb852    # 6.46f

    const/high16 v27, 0x41580000    # 13.5f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v1, 0x414a6666    # 12.65f

    const/high16 v12, 0x41580000    # 13.5f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x3f2e147b    # 0.68f

    const v29, -0x41051eb8    # -0.49f

    const v24, 0x3e9eb852    # 0.31f

    const/16 v25, 0x0

    const v26, 0x3f147ae1    # 0.58f

    const v27, -0x41bd70a4    # -0.19f

    .end local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x3e2e147b    # 0.17f

    const v29, -0x407eb852    # -1.01f

    const v24, 0x3db851ec    # 0.09f

    const/high16 v25, -0x41800000    # -0.25f

    const v26, 0x3e2e147b    # 0.17f

    const v27, -0x40e8f5c3    # -0.59f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v28, -0x40800000    # -1.0f

    const v29, -0x3f9851ec    # -3.62f

    const/16 v24, 0x0

    const/high16 v25, -0x40800000    # -1.0f

    const/high16 v26, -0x40800000    # -1.0f

    const v27, -0x3fc9999a    # -2.85f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, 0x3d23d70a    # 0.04f

    const v29, -0x40fd70a4    # -0.51f

    const v25, -0x41d1eb85    # -0.17f

    const v26, 0x3c23d70a    # 0.01f

    const v27, -0x4151eb85    # -0.34f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, 0x413d70a4    # 11.84f

    const/high16 v29, 0x40e00000    # 7.0f

    const v24, 0x414a147b    # 12.63f

    const v25, 0x40ed70a4    # 7.42f

    const v26, 0x4144a3d7    # 12.29f

    const/high16 v27, 0x40e00000    # 7.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, -0x40d47ae1    # -0.67f

    const v29, 0x3ee66666    # 0.45f

    const v24, -0x416b851f    # -0.29f

    const/16 v25, 0x0

    const v26, -0x40f0a3d7    # -0.56f

    const v27, 0x3e3851ec    # 0.18f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v28, 0x41300000    # 11.0f

    const v29, 0x4106147b    # 8.38f

    const v24, 0x41307ae1    # 11.03f

    const v25, 0x40f947ae    # 7.79f

    const/high16 v26, 0x41300000    # 11.0f

    const v27, 0x410147ae    # 8.08f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x41400000    # 12.0f

    const/high16 v24, 0x41300000    # 11.0f

    const v25, 0x41126666    # 9.15f

    const/high16 v26, 0x41400000    # 12.0f

    const/high16 v27, 0x41300000    # 11.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, -0x428a3d71    # -0.06f

    const v29, 0x3f2147ae    # 0.63f

    const/16 v24, 0x0

    const v25, 0x3e75c28f    # 0.24f

    const v26, -0x435c28f6    # -0.02f

    const v27, 0x3ee66666    # 0.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, 0x414a6666    # 12.65f

    const/high16 v29, 0x41580000    # 13.5f

    const v24, 0x413d999a    # 11.85f

    const v25, 0x415147ae    # 13.08f

    const v26, 0x41430a3d    # 12.19f

    const/high16 v27, 0x41580000    # 13.5f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    .end local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v1, 0x41166666    # 9.4f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, 0x3f2e147b    # 0.68f

    const v29, -0x41051eb8    # -0.49f

    const v24, 0x3e9eb852    # 0.31f

    const/16 v25, 0x0

    const v26, 0x3f147ae1    # 0.58f

    const v27, -0x41bd70a4    # -0.19f

    .end local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, 0x3e2e147b    # 0.17f

    const v29, -0x407eb852    # -1.01f

    const v24, 0x3db851ec    # 0.09f

    const/high16 v25, -0x41800000    # -0.25f

    const v26, 0x3e2e147b    # 0.17f

    const v27, -0x40e8f5c3    # -0.59f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v28, -0x40800000    # -1.0f

    const v29, -0x3f9851ec    # -3.62f

    const/16 v24, 0x0

    const/high16 v25, -0x40800000    # -1.0f

    const/high16 v26, -0x40800000    # -1.0f

    const v27, -0x3fc9999a    # -2.85f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v28, 0x3d23d70a    # 0.04f

    const v29, -0x40fd70a4    # -0.51f

    const v25, -0x41d1eb85    # -0.17f

    const v26, 0x3c23d70a    # 0.01f

    const v27, -0x4151eb85    # -0.34f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, 0x410970a4    # 8.59f

    const/high16 v29, 0x40e00000    # 7.0f

    const v24, 0x4116147b    # 9.38f

    const v25, 0x40ed70a4    # 7.42f

    const v26, 0x4110a3d7    # 9.04f

    const/high16 v27, 0x40e00000    # 7.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x40fd70a4    # 7.92f

    const v29, 0x40ee6666    # 7.45f

    const v24, 0x4104a3d7    # 8.29f

    const/high16 v25, 0x40e00000    # 7.0f

    const v26, 0x41007ae1    # 8.03f

    const v27, 0x40e5c28f    # 7.18f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v28, 0x40f80000    # 7.75f

    const v29, 0x4106147b    # 8.38f

    const v24, 0x40f8f5c3    # 7.78f

    const v25, 0x40f947ae    # 7.79f

    const/high16 v26, 0x40f80000    # 7.75f

    const v27, 0x410147ae    # 8.08f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v28, 0x3f800000    # 1.0f

    const v29, 0x4067ae14    # 3.62f

    const/16 v24, 0x0

    const v25, 0x3f451eb8    # 0.77f

    const/high16 v26, 0x3f800000    # 1.0f

    const v27, 0x402851ec    # 2.63f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v28, -0x428a3d71    # -0.06f

    const v29, 0x3f2147ae    # 0.63f

    const v25, 0x3e75c28f    # 0.24f

    const v26, -0x435c28f6    # -0.02f

    const v27, 0x3ee66666    # 0.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v28, 0x41166666    # 9.4f

    const/high16 v29, 0x41580000    # 13.5f

    const v24, 0x4109999a    # 8.6f

    const v25, 0x415147ae    # 13.08f

    const v26, 0x410f0a3d    # 8.94f

    const/high16 v27, 0x41580000    # 13.5f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    .end local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v1, 0x40cbd70a    # 6.37f

    const v12, 0x41a3ae14    # 20.46f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v28, 0x3f8f5c29    # 1.12f

    const v29, -0x40970a3d    # -0.91f

    const v24, 0x3f11eb85    # 0.57f

    const v25, 0x3d8f5c29    # 0.07f

    const v26, 0x3f8a3d71    # 1.08f

    const v27, -0x4151eb85    # -0.34f

    .end local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, 0x41accccd    # 21.6f

    const/high16 v29, 0x40a00000    # 5.0f

    const v24, 0x41acb852    # 21.59f

    const v25, 0x40a8f5c3    # 5.28f

    const v26, 0x41accccd    # 21.6f

    const v27, 0x40a3d70a    # 5.12f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v28, -0x3fc00000    # -3.0f

    const/high16 v29, -0x3fc00000    # -3.0f

    const/16 v24, 0x0

    const v25, -0x402ccccd    # -1.65f

    const v26, -0x40533333    # -1.35f

    const/high16 v27, -0x3fc00000    # -3.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, -0x3fc147ae    # -2.98f

    const v29, 0x4029999a    # 2.65f

    const v24, -0x403ae148    # -1.54f

    const/16 v25, 0x0

    const v26, -0x3fcc28f6    # -2.81f

    const v27, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    .end local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x41687ae1    # 14.53f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v1, 0x407f5c29    # 3.99f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v28, -0x40851eb8    # -0.98f

    const v29, 0x3f91eb85    # 1.14f

    const v24, -0x40e66666    # -0.6f

    const v26, -0x40770a3d    # -1.07f

    const v27, 0x3f0a3d71    # 0.54f

    .end local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v28, 0x411c0000    # 9.75f

    const/high16 v29, 0x41b00000    # 22.0f

    const v24, 0x40628f5c    # 3.54f

    const v25, 0x419bae14    # 19.46f

    const v26, 0x40cc7ae1    # 6.39f

    const/high16 v27, 0x41b00000    # 22.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v28, 0x40d6b852    # 6.71f

    const v29, -0x3f38a3d7    # -6.23f

    const v24, 0x405eb852    # 3.48f

    const/16 v25, 0x0

    const v26, 0x40cae148    # 6.34f

    const v27, -0x3fd147ae    # -2.73f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    .end local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f933333    # 1.15f

    const v12, -0x3ed2147b    # -10.87f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v28, 0x4194cccd    # 18.6f

    const/high16 v29, 0x40800000    # 4.0f

    const v24, 0x418d47ae    # 17.66f

    const v25, 0x408c7ae1    # 4.39f

    const v26, 0x4190a3d7    # 18.08f

    const/high16 v27, 0x40800000    # 4.0f

    .end local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const v24, 0x3f0ccccd    # 0.55f

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const v27, 0x3ee66666    # 0.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v28, -0x43dc28f6    # -0.01f

    const v29, 0x3e9eb852    # 0.31f

    const/16 v24, 0x0

    const v25, 0x3d8f5c29    # 0.07f

    const v26, -0x43dc28f6    # -0.01f

    const v27, 0x3e3851ec    # 0.18f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v28, 0x41a3ae14    # 20.46f

    const v29, 0x40cbd70a    # 6.37f

    const v24, 0x419c6666    # 19.55f

    const v25, 0x40bae148    # 5.84f

    const v26, 0x419f70a4    # 19.93f

    const v27, 0x40c9999a    # 6.3f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    .end local v23    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x40cbd70a    # 6.37f

    const v12, 0x41a3ae14    # 20.46f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    nop

    .line 127
    .end local v0    # "$this$_get_SoupKitchen__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-SoupKitchenKt$SoupKitchen$1$1":I
    nop

    .line 128
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 126
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 129
    nop

    .line 130
    .end local v7    # "$i$f$PathData":I
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 124
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 140
    nop

    .line 141
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

    .line 30
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 102
    .end local v3    # "$i$a$-materialIcon$default-SoupKitchenKt$SoupKitchen$1":I
    .end local v32    # "$this$_get_SoupKitchen__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/rounded/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 86
    sget-object v0, Landroidx/compose/material/icons/rounded/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
