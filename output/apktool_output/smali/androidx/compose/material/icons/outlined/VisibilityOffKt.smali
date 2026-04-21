.class public final Landroidx/compose/material/icons/outlined/VisibilityOffKt;
.super Ljava/lang/Object;
.source "VisibilityOff.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityOff.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityOff.kt\nandroidx/compose/material/icons/outlined/VisibilityOffKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,81:1\n212#2,12:82\n233#2,18:95\n253#2:132\n174#3:94\n705#4,2:113\n717#4,2:115\n719#4,11:121\n72#5,4:117\n*S KotlinDebug\n*F\n+ 1 VisibilityOff.kt\nandroidx/compose/material/icons/outlined/VisibilityOffKt\n*L\n29#1:82,12\n30#1:95,18\n30#1:132\n29#1:94\n30#1:113,2\n30#1:115,2\n30#1:121,11\n30#1:117,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_visibilityOff",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "VisibilityOff",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getVisibilityOff",
        "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getVisibilityOff(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 33
    .param p0, "$this$VisibilityOff"    # Landroidx/compose/material/icons/Icons$Outlined;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/VisibilityOffKt;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/outlined/VisibilityOffKt;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Outlined.VisibilityOff"

    .line 82
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 84
    const/4 v10, 0x0

    .line 82
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 93
    .local v0, "$i$f$materialIcon":I
    nop

    .line 86
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 87
    nop

    .line 88
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 94
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 89
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 94
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 90
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 91
    nop

    .line 86
    nop

    .line 92
    nop

    .line 86
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    nop

    .local v1, "$this$_get_VisibilityOff__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-VisibilityOffKt$VisibilityOff$1":I
    move-object v4, v1

    .line 95
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 96
    const/high16 v16, 0x3f800000    # 1.0f

    .line 95
    .local v16, "fillAlpha$iv":F
    nop

    .line 97
    const/high16 v18, 0x3f800000    # 1.0f

    .line 95
    .local v18, "strokeAlpha$iv":F
    nop

    .line 98
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 95
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 104
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 105
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 107
    nop

    .line 109
    nop

    .line 110
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 111
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 112
    nop

    .line 104
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 113
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 114
    const-string v14, ""

    .line 113
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 115
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 118
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-VisibilityOffKt$VisibilityOff$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const/high16 v0, 0x41400000    # 12.0f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_VisibilityOff__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_VisibilityOff__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x410d1eb8    # 8.82f

    const/high16 v29, 0x40b00000    # 5.5f

    const v24, 0x40728f5c    # 3.79f

    const/16 v25, 0x0

    const v26, 0x40e570a4    # 7.17f

    const v27, 0x400851ec    # 2.13f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x3fe5c28f    # -2.41f

    const v29, 0x4047ae14    # 3.12f

    const v24, -0x40e8f5c3    # -0.59f

    const v25, 0x3f9c28f6    # 1.22f

    const v26, -0x404a3d71    # -1.42f

    const v27, 0x401147ae    # 2.27f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3fb47ae1    # 1.41f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x404b851f    # 3.18f

    const v29, -0x3f6f0a3d    # -4.53f

    const v24, 0x3fb1eb85    # 1.39f

    const v25, -0x40628f5c    # -1.23f

    const v26, 0x401f5c29    # 2.49f

    const v27, -0x3fceb852    # -2.77f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x40800000    # 4.0f

    const v24, 0x41aa28f6    # 21.27f

    const v25, 0x40e3851f    # 7.11f

    const/high16 v26, 0x41880000    # 17.0f

    const/high16 v27, 0x40800000    # 4.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, -0x3f970a3d    # -3.64f

    const v29, 0x3f11eb85    # 0.57f

    const v24, -0x405d70a4    # -1.27f

    const/16 v25, 0x0

    const v26, -0x3fe0a3d7    # -2.49f

    const v27, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3fd33333    # 1.65f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x40c00000    # 6.0f

    const v24, 0x412a8f5c    # 10.66f

    const v25, 0x40c2e148    # 6.09f

    const v26, 0x41351eb8    # 11.32f

    const/high16 v27, 0x40c00000    # 6.0f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v1, 0x412ee148    # 10.93f

    const v12, 0x40e47ae1    # 7.14f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v1, 0x41500000    # 13.0f

    const v12, 0x41135c29    # 9.21f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, 0x3fa3d70a    # 1.28f

    const v29, 0x3fa3d70a    # 1.28f

    const v24, 0x3f11eb85    # 0.57f

    const/high16 v25, 0x3e800000    # 0.25f

    const v26, 0x3f83d70a    # 1.03f

    const v27, 0x3f35c28f    # 0.71f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x40047ae1    # 2.07f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x3e0f5c29    # 0.14f

    const v29, -0x40770a3d    # -1.07f

    const v24, 0x3da3d70a    # 0.08f

    const v25, -0x4151eb85    # -0.34f

    const v26, 0x3e0f5c29    # 0.14f

    const v27, -0x40cccccd    # -0.7f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x40e00000    # 7.0f

    const/high16 v24, 0x41840000    # 16.5f

    const v25, 0x411028f6    # 9.01f

    const v26, 0x4167ae14    # 14.48f

    const/high16 v27, 0x40e00000    # 7.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, -0x40770a3d    # -1.07f

    const v29, 0x3e0f5c29    # 0.14f

    const v24, -0x41428f5c    # -0.37f

    const/16 v25, 0x0

    const v26, -0x40c7ae14    # -0.72f

    const v27, 0x3d4ccccd    # 0.05f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v1, 0x4077ae14    # 3.87f

    const v12, 0x4000a3d7    # 2.01f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v1, 0x402b851f    # 2.68f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x41380000    # 11.5f

    const v24, 0x4043d70a    # 3.06f

    const v25, 0x40fa8f5c    # 7.83f

    const v26, 0x3fe28f5c    # 1.77f

    const v27, 0x41187ae1    # 9.53f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x41980000    # 19.0f

    const v24, 0x402eb852    # 2.73f

    const v25, 0x417e3d71    # 15.89f

    const/high16 v26, 0x40e00000    # 7.0f

    const/high16 v27, 0x41980000    # 19.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, 0x408a3d71    # 4.32f

    const v29, -0x40ae147b    # -0.82f

    const v24, 0x3fc28f5c    # 1.52f

    const/16 v25, 0x0

    const v26, 0x403eb852    # 2.98f

    const v27, -0x416b851f    # -0.29f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x405ae148    # 3.42f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v1, -0x404b851f    # -1.41f

    const v12, 0x3fb47ae1    # 1.41f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v1, 0x401ccccd    # 2.45f

    const v12, 0x405ae148    # 3.42f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v1, 0x4077ae14    # 3.87f

    const v12, 0x4000a3d7    # 2.01f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v1, 0x411828f6    # 9.51f

    const v12, 0x4135eb85    # 11.37f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v1, 0x40270a3d    # 2.61f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, -0x420a3d71    # -0.12f

    const v29, 0x3ca3d70a    # 0.02f

    const v24, -0x42dc28f6    # -0.04f

    const v25, 0x3c23d70a    # 0.01f

    const v26, -0x425c28f6    # -0.08f

    const v27, 0x3ca3d70a    # 0.02f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v28, -0x3fe00000    # -2.5f

    const/high16 v29, -0x3fe00000    # -2.5f

    const v24, -0x404f5c29    # -1.38f

    const/16 v25, 0x0

    const/high16 v26, -0x3fe00000    # -2.5f

    const v27, -0x4070a3d7    # -1.12f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, 0x3c23d70a    # 0.01f

    const v29, -0x41fae148    # -0.13f

    const/16 v24, 0x0

    const v25, -0x42b33333    # -0.05f

    const v26, 0x3c23d70a    # 0.01f

    const v27, -0x425c28f6    # -0.08f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v1, 0x40c3851f    # 6.11f

    const v12, 0x40ff0a3d    # 7.97f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, -0x4147ae14    # -0.36f

    const v29, 0x3fe3d70a    # 1.78f

    const v24, -0x41947ae1    # -0.23f

    const v25, 0x3f0ccccd    # 0.55f

    const v26, -0x4147ae14    # -0.36f

    const v27, 0x3f933333    # 1.15f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v28, 0x40900000    # 4.5f

    const/high16 v29, 0x40900000    # 4.5f

    const/16 v24, 0x0

    const v25, 0x401eb852    # 2.48f

    const v26, 0x400147ae    # 2.02f

    const/high16 v27, 0x40900000    # 4.5f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, 0x3fe28f5c    # 1.77f

    const v29, -0x4147ae14    # -0.36f

    const v24, 0x3f2147ae    # 0.63f

    const/16 v25, 0x0

    const v26, 0x3f9d70a4    # 1.23f

    const v27, -0x41fae148    # -0.13f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f7ae148    # 0.98f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v28, -0x3fd00000    # -2.75f

    const v29, 0x3ec28f5c    # 0.38f

    const v24, -0x409eb852    # -0.88f

    const v25, 0x3e75c28f    # 0.24f

    const v26, -0x4019999a    # -1.8f

    const v27, 0x3ec28f5c    # 0.38f

    .end local v0    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v28, -0x3ef2e148    # -8.82f

    const/high16 v29, -0x3f500000    # -5.5f

    const v24, -0x3f8d70a4    # -3.79f

    const/16 v25, 0x0

    const v26, -0x3f1a8f5c    # -7.17f

    const v27, -0x3ff7ae14    # -2.13f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v28, 0x403b851f    # 2.93f

    const v29, -0x3f9e147b    # -3.53f

    const v24, 0x3f333333    # 0.7f

    const v25, -0x4048f5c3    # -1.43f

    const v26, 0x3fdc28f6    # 1.72f

    const v27, -0x3fd8f5c3    # -2.61f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    nop

    .line 118
    .end local v23    # "$this$_get_VisibilityOff__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-VisibilityOffKt$VisibilityOff$1$1":I
    nop

    .line 119
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 117
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 120
    nop

    .line 121
    .end local v7    # "$i$f$PathData":I
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 115
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 131
    nop

    .line 132
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

    .line 93
    .end local v3    # "$i$a$-materialIcon$default-VisibilityOffKt$VisibilityOff$1":I
    .end local v32    # "$this$_get_VisibilityOff__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/outlined/VisibilityOffKt;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 77
    sget-object v0, Landroidx/compose/material/icons/outlined/VisibilityOffKt;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
