.class public final Landroidx/compose/material/icons/twotone/DirtyLensKt;
.super Ljava/lang/Object;
.source "DirtyLens.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDirtyLens.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirtyLens.kt\nandroidx/compose/material/icons/twotone/DirtyLensKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,123:1\n212#2,12:124\n233#2,18:137\n253#2:174\n233#2,18:175\n253#2:212\n233#2,18:213\n253#2:250\n174#3:136\n705#4,2:155\n717#4,2:157\n719#4,11:163\n705#4,2:193\n717#4,2:195\n719#4,11:201\n705#4,2:231\n717#4,2:233\n719#4,11:239\n72#5,4:159\n72#5,4:197\n72#5,4:235\n*S KotlinDebug\n*F\n+ 1 DirtyLens.kt\nandroidx/compose/material/icons/twotone/DirtyLensKt\n*L\n29#1:124,12\n30#1:137,18\n30#1:174\n66#1:175,18\n66#1:212\n110#1:213,18\n110#1:250\n29#1:136\n30#1:155,2\n30#1:157,2\n30#1:163,11\n66#1:193,2\n66#1:195,2\n66#1:201,11\n110#1:231,2\n110#1:233,2\n110#1:239,11\n30#1:159,4\n66#1:197,4\n110#1:235,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_dirtyLens",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "DirtyLens",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getDirtyLens",
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
.field private static _dirtyLens:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getDirtyLens(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 34
    .param p0, "$this$DirtyLens"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/DirtyLensKt;->_dirtyLens:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/DirtyLensKt;->_dirtyLens:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "TwoTone.DirtyLens"

    .line 124
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 126
    const/4 v10, 0x0

    .line 124
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 135
    .local v0, "$i$f$materialIcon":I
    nop

    .line 128
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 129
    nop

    .line 130
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 136
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 131
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 136
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 132
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 133
    nop

    .line 128
    nop

    .line 134
    nop

    .line 128
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    nop

    .local v1, "$this$_get_DirtyLens__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-DirtyLensKt$DirtyLens$1":I
    const v16, 0x3e99999a    # 0.3f

    .local v16, "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v4, v1

    .line 137
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 140
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 137
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 146
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 147
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 149
    nop

    .line 151
    nop

    .line 152
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 153
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 154
    nop

    .line 146
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 155
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 156
    const-string v14, ""

    .line 155
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 157
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 158
    const/4 v7, 0x0

    .line 159
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 160
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-DirtyLensKt$DirtyLens$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x4161eb85    # 14.12f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_DirtyLens__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_DirtyLens__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v0, 0x411e147b    # 9.88f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v0, 0x4100cccd    # 8.05f

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v0, 0x40e8a3d7    # 7.27f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, -0x41dc28f6    # -0.16f

    const v29, -0x3fe47ae1    # -2.43f

    const v24, 0x3e0f5c29    # 0.14f

    const v25, -0x40851eb8    # -0.98f

    const v26, 0x3ed70a3d    # 0.42f

    const v27, -0x3ffccccd    # -2.05f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, -0x3fcccccd    # -2.8f

    const v29, 0x3faccccd    # 1.35f

    const v24, -0x409c28f6    # -0.89f

    const v25, -0x40e8f5c3    # -0.59f

    const v26, -0x405d70a4    # -1.27f

    const v27, 0x4003d70a    # 2.06f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v28, 0x3f000000    # 0.5f

    const v29, -0x3faeb852    # -3.27f

    const v24, -0x404e147b    # -1.39f

    const v25, -0x4070a3d7    # -1.12f

    const v26, 0x3f866666    # 1.05f

    const v27, -0x405ae148    # -1.29f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, -0x3fe66666    # -2.4f

    const v29, -0x406147ae    # -1.24f

    const v24, -0x419eb852    # -0.22f

    const v25, -0x40b5c28f    # -0.79f

    const v26, -0x3fee147b    # -2.28f

    const v27, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x3fc147ae    # 1.51f

    const v29, -0x404147ae    # -1.49f

    const v24, -0x425c28f6    # -0.08f

    const/high16 v25, -0x40800000    # -1.0f

    const v26, 0x3fbeb852    # 1.49f

    const v27, -0x40c28f5c    # -0.74f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v28, -0x41800000    # -0.25f

    const v29, -0x400b851f    # -1.91f

    const v24, 0x3cf5c28f    # 0.03f

    const/high16 v25, -0x40c00000    # -0.75f

    const v26, -0x407c28f6    # -1.03f

    const v27, -0x4079999a    # -1.05f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, 0x3f68f5c3    # 0.91f

    const v29, -0x41bd70a4    # -0.19f

    const v24, 0x3e6147ae    # 0.22f

    const v25, -0x418a3d71    # -0.24f

    const v26, 0x3f35c28f    # 0.71f

    const v27, -0x417ae148    # -0.26f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x4020a3d7    # 2.51f

    const v29, 0x3f9851ec    # 1.19f

    const v24, 0x3f4a3d71    # 0.79f

    const v25, 0x3e8a3d71    # 0.27f

    const v26, 0x3fc66666    # 1.55f

    const v27, 0x3fe8f5c3    # 1.82f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/16 v28, 0x0

    const v29, -0x3fc8f5c3    # -2.86f

    const v24, 0x3f83d70a    # 1.03f

    const v25, -0x40d70a3d    # -0.66f

    const v26, -0x400f5c29    # -1.88f

    const v27, -0x3fe9999a    # -2.35f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x4029999a    # 2.65f

    const v29, 0x401c28f6    # 2.44f

    const v24, 0x3fd1eb85    # 1.64f

    const v25, -0x411eb852    # -0.44f

    const v26, 0x3fa7ae14    # 1.31f

    const v27, 0x40051eb8    # 2.08f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, 0x408d1eb8    # 4.41f

    const v29, -0x3feae148    # -2.33f

    const v24, 0x3ff851ec    # 1.94f

    const v25, 0x3f051eb8    # 0.52f

    const v26, 0x4029999a    # 2.65f

    const v27, -0x3f6e6666    # -4.55f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, -0x3fc9999a    # -2.85f

    const v29, 0x408051ec    # 4.01f

    const v24, 0x3feccccd    # 1.85f

    const v25, 0x40151eb8    # 2.33f

    const v26, -0x3fa47ae1    # -3.43f

    const v27, 0x401147ae    # 2.27f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, 0x4030a3d7    # 2.76f

    const v29, 0x3f07ae14    # 0.53f

    const v24, 0x3eae147b    # 0.34f

    const v25, 0x3f8147ae    # 1.01f

    const v26, 0x4009999a    # 2.15f

    const v27, -0x40666666    # -1.2f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, -0x3fbd70a4    # -3.04f

    const v29, 0x3fd47ae1    # 1.66f

    const v24, 0x3f23d70a    # 0.64f

    const v25, 0x3fea3d71    # 1.83f

    const v26, -0x3fba3d71    # -3.09f

    const v27, 0x3f51eb85    # 0.82f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, 0x3fd1eb85    # 1.64f

    const v29, 0x4007ae14    # 2.12f

    const v24, 0x3d75c28f    # 0.06f

    const v25, 0x3f547ae1    # 0.83f

    const v26, 0x401a3d71    # 2.41f

    const v27, 0x3f0ccccd    # 0.55f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, -0x3f8c28f6    # -3.81f

    const v29, 0x3db851ec    # 0.09f

    const v24, -0x406e147b    # -1.14f

    const v25, 0x3fee147b    # 1.86f

    const/high16 v26, -0x3fc00000    # -3.0f

    const v27, -0x407c28f6    # -1.03f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, 0x3e051eb8    # 0.13f

    const v29, 0x40151eb8    # 2.33f

    const v24, -0x413851ec    # -0.39f

    const v25, 0x3f11eb85    # 0.57f

    const v26, -0x4247ae14    # -0.09f

    const v27, 0x3fbeb852    # 1.49f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v1, -0x3f7e6666    # -4.05f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v1, 0x4161eb85    # 14.12f

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v1, 0x41893333    # 17.15f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, -0x40a3d70a    # -0.86f

    const v29, 0x3f5c28f6    # 0.86f

    const/16 v24, 0x0

    const v25, 0x3ef5c28f    # 0.48f

    const v26, -0x413d70a4    # -0.38f

    const v27, 0x3f5c28f6    # 0.86f

    .end local v0    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v29, -0x40a3d70a    # -0.86f

    const v24, -0x410f5c29    # -0.47f

    const/16 v25, 0x0

    const v26, -0x40a3d70a    # -0.86f

    const v27, -0x413d70a4    # -0.38f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3ec28f5c    # 0.38f

    const v12, 0x3f5c28f6    # 0.86f

    move-object/from16 v33, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v33, "name$iv":Ljava/lang/String;
    const v2, -0x40a3d70a    # -0.86f

    invoke-virtual {v0, v1, v2, v12, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v28, 0x41980000    # 19.0f

    const v29, 0x41893333    # 17.15f

    const v24, 0x4194e148    # 18.61f

    const v25, 0x418251ec    # 16.29f

    const/high16 v26, 0x41980000    # 19.0f

    const v27, 0x41855c29    # 16.67f

    .end local v0    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    nop

    .line 160
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-DirtyLensKt$DirtyLens$1$1":I
    nop

    .line 161
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 159
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 162
    nop

    .line 163
    .end local v7    # "$i$f$PathData":I
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 157
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 173
    nop

    .line 174
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

    .line 66
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 175
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 176
    const/high16 v16, 0x3f800000    # 1.0f

    .line 175
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 177
    const/high16 v18, 0x3f800000    # 1.0f

    .line 175
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 178
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 175
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 185
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 187
    nop

    .line 189
    nop

    .line 190
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 191
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 192
    nop

    .line 184
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 193
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 194
    const-string v14, ""

    .line 193
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, "$i$f$path-R_LF-3I":I
    nop

    .line 196
    const/4 v4, 0x0

    .line 197
    .local v4, "$i$f$PathData":I
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v5, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v6, 0x0

    .line 198
    .local v6, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v7, v5

    .local v7, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 67
    .local v8, "$i$a$-materialPath-YwgOQQI$default-DirtyLensKt$DirtyLens$1$2":I
    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v9, -0x3fb51eb8    # -3.17f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v12, 0x40400000    # 3.0f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v9, 0x41100000    # 9.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v9, 0x40e570a4    # 7.17f

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, 0x40e00000    # 7.0f

    const v24, 0x4039999a    # 2.9f

    const/high16 v25, 0x40a00000    # 5.0f

    const/high16 v26, 0x40000000    # 2.0f

    const v27, 0x40bccccd    # 5.9f

    move-object/from16 v23, v7

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v29, 0x40000000    # 2.0f

    const/16 v24, 0x0

    const v25, 0x3f8ccccd    # 1.1f

    const v26, 0x3f666666    # 0.9f

    const/high16 v27, 0x40000000    # 2.0f

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v29, -0x40000000    # -2.0f

    const v24, 0x3f8ccccd    # 1.1f

    const/16 v25, 0x0

    const/high16 v26, 0x40000000    # 2.0f

    const v27, -0x4099999a    # -0.9f

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v28, 0x41a00000    # 20.0f

    const/high16 v29, 0x40a00000    # 5.0f

    const/high16 v24, 0x41b00000    # 22.0f

    const v25, 0x40bccccd    # 5.9f

    const v26, 0x41a8cccd    # 21.1f

    const/high16 v27, 0x40a00000    # 5.0f

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v9, -0x3f1f5c29    # -7.02f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v28, -0x41fae148    # -0.13f

    const v29, -0x3feae148    # -2.33f

    const v24, -0x419eb852    # -0.22f

    const v25, -0x40a8f5c3    # -0.84f

    const v26, -0x40fae148    # -0.52f

    const v27, -0x401eb852    # -1.76f

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v28, 0x4073d70a    # 3.81f

    const v29, -0x4247ae14    # -0.09f

    const v24, 0x3f4f5c29    # 0.81f

    const v25, -0x4070a3d7    # -1.12f

    const v26, 0x402ae148    # 2.67f

    const v27, 0x3fe28f5c    # 1.77f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v28, -0x402e147b    # -1.64f

    const v29, -0x3ff851ec    # -2.12f

    const v24, 0x3f451eb8    # 0.77f

    const v25, -0x40370a3d    # -1.57f

    const v26, -0x4035c28f    # -1.58f

    const v27, -0x405ae148    # -1.29f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v28, 0x40428f5c    # 3.04f

    const v29, -0x402b851f    # -1.66f

    const v24, -0x42b33333    # -0.05f

    const v25, -0x40a8f5c3    # -0.84f

    const v26, 0x406b851f    # 3.68f

    const v27, 0x3e2e147b    # 0.17f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v28, -0x3fcf5c29    # -2.76f

    const v29, -0x40f851ec    # -0.53f

    const v24, -0x40e3d70a    # -0.61f

    const v25, -0x40228f5c    # -1.73f

    const v26, -0x3fe51eb8    # -2.42f

    const v27, 0x3ef5c28f    # 0.48f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v28, 0x40366666    # 2.85f

    const v29, -0x3f7fae14    # -4.01f

    const v24, -0x40eb851f    # -0.58f

    const v25, -0x402147ae    # -1.74f

    const v26, 0x40966666    # 4.7f

    const v27, -0x4028f5c3    # -1.68f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v28, -0x3f72e148    # -4.41f

    const v29, 0x40151eb8    # 2.33f

    const v24, -0x401eb852    # -1.76f

    const v25, -0x3ff1eb85    # -2.22f

    const v26, -0x3fe1eb85    # -2.47f

    const v27, 0x40366666    # 2.85f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v28, -0x3fd66666    # -2.65f

    const v29, -0x3fe3d70a    # -2.44f

    const v24, -0x40547ae1    # -1.34f

    const v25, -0x4147ae14    # -0.36f

    const v26, -0x407eb852    # -1.01f

    const v27, -0x3fc7ae14    # -2.88f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/16 v28, 0x0

    const v29, 0x40370a3d    # 2.86f

    const v24, -0x400f5c29    # -1.88f

    const v25, 0x3f028f5c    # 0.51f

    const v26, 0x3f83d70a    # 1.03f

    const v27, 0x400ccccd    # 2.2f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v28, -0x3fdf5c29    # -2.51f

    const v29, -0x4067ae14    # -1.19f

    const v24, -0x408a3d71    # -0.96f

    const v25, 0x3f2147ae    # 0.63f

    const v26, -0x4023d70a    # -1.72f

    const v27, -0x40947ae1    # -0.92f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v28, -0x40970a3d    # -0.91f

    const v29, 0x3e428f5c    # 0.19f

    const v24, -0x41b33333    # -0.2f

    const v25, -0x4270a3d7    # -0.07f

    const v26, -0x40cf5c29    # -0.69f

    const v27, -0x42b33333    # -0.05f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const/high16 v28, 0x3e800000    # 0.25f

    const v29, 0x3ff47ae1    # 1.91f

    const v24, -0x40b851ec    # -0.78f

    const v25, 0x3f5c28f6    # 0.86f

    const v26, 0x3e8f5c29    # 0.28f

    const v27, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v28, -0x403eb852    # -1.51f

    const v29, 0x3fbeb852    # 1.49f

    const v24, -0x435c28f6    # -0.02f

    const/high16 v25, 0x3f400000    # 0.75f

    const v26, -0x40347ae1    # -1.59f

    const v27, 0x3efae148    # 0.49f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v28, 0x4019999a    # 2.4f

    const v29, 0x3f9eb852    # 1.24f

    const v24, 0x3df5c28f    # 0.12f

    const v25, 0x3fcccccd    # 1.6f

    const v26, 0x400b851f    # 2.18f

    const v27, 0x3ee66666    # 0.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v28, -0x41000000    # -0.5f

    const v29, 0x405147ae    # 3.27f

    const v24, 0x3f0ccccd    # 0.55f

    const v25, 0x3ffd70a4    # 1.98f

    const v26, -0x400e147b    # -1.89f

    const v27, 0x4009999a    # 2.15f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v28, 0x40333333    # 2.8f

    const v29, -0x40533333    # -1.35f

    const v24, 0x3fc3d70a    # 1.53f

    const v25, 0x3f35c28f    # 0.71f

    const v26, 0x3ff47ae1    # 1.91f

    const v27, -0x4007ae14    # -1.94f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v28, 0x3e23d70a    # 0.16f

    const v29, 0x401b851f    # 2.43f

    const v24, 0x3f147ae1    # 0.58f

    const v25, 0x3ec28f5c    # 0.38f

    const v26, 0x3e99999a    # 0.3f

    const v27, 0x3fb9999a    # 1.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v9, 0x4081999a    # 4.05f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v9, -0x40000000    # -2.0f

    const v12, 0x3fea3d71    # 1.83f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v9, 0x4087ae14    # 4.24f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v9, 0x41980000    # 19.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    nop

    .line 198
    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-DirtyLensKt$DirtyLens$1$2":I
    nop

    .line 199
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 197
    .end local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 200
    nop

    .line 201
    .end local v4    # "$i$f$PathData":I
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 195
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 211
    nop

    .line 212
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

    .line 110
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 213
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 214
    const/high16 v16, 0x3f800000    # 1.0f

    .line 213
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 215
    const/high16 v18, 0x3f800000    # 1.0f

    .line 213
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 216
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 213
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 222
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 223
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 225
    nop

    .line 227
    nop

    .line 228
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 229
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 230
    nop

    .line 222
    nop

    .line 231
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 232
    const-string v14, ""

    .line 231
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 233
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 234
    const/4 v4, 0x0

    .line 235
    .restart local v4    # "$i$f$PathData":I
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v6, 0x0

    .line 236
    .restart local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v7, v5

    .local v7, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 111
    .local v8, "$i$a$-materialPath-YwgOQQI$default-DirtyLensKt$DirtyLens$1$3":I
    const v9, 0x418a3d71    # 17.28f

    const v12, 0x41893333    # 17.15f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v28, 0x3f5c28f6    # 0.86f

    const v29, 0x3f5c28f6    # 0.86f

    const v25, 0x3ef5c28f    # 0.48f

    const v26, 0x3ec7ae14    # 0.39f

    const v27, 0x3f5c28f6    # 0.86f

    move-object/from16 v23, v7

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v29, -0x40a3d70a    # -0.86f

    const v24, 0x3ef5c28f    # 0.48f

    const/16 v25, 0x0

    const v26, 0x3f5c28f6    # 0.86f

    const v27, -0x413d70a4    # -0.38f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, -0x413851ec    # -0.39f

    const v12, -0x40a3d70a    # -0.86f

    invoke-virtual {v7, v9, v12, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v28, 0x418a3d71    # 17.28f

    const v29, 0x41893333    # 17.15f

    const v24, 0x418d47ae    # 17.66f

    const v25, 0x418251ec    # 16.29f

    const v26, 0x418a3d71    # 17.28f

    const v27, 0x41855c29    # 16.67f

    .end local v7    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    nop

    .line 236
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-DirtyLensKt$DirtyLens$1$3":I
    .end local v23    # "$this$_get_DirtyLens__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 237
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 235
    .end local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 238
    nop

    .line 239
    .end local v4    # "$i$f$PathData":I
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 233
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v4

    .line 249
    nop

    .line 250
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

    .line 110
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 135
    .end local v3    # "$i$a$-materialIcon$default-DirtyLensKt$DirtyLens$1":I
    .end local v32    # "$this$_get_DirtyLens__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    .end local v33    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/DirtyLensKt;->_dirtyLens:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 119
    sget-object v0, Landroidx/compose/material/icons/twotone/DirtyLensKt;->_dirtyLens:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
