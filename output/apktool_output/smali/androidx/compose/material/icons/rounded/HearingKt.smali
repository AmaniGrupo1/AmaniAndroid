.class public final Landroidx/compose/material/icons/rounded/HearingKt;
.super Ljava/lang/Object;
.source "Hearing.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHearing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hearing.kt\nandroidx/compose/material/icons/rounded/HearingKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,77:1\n212#2,12:78\n233#2,18:91\n253#2:128\n174#3:90\n705#4,2:109\n717#4,2:111\n719#4,11:117\n72#5,4:113\n*S KotlinDebug\n*F\n+ 1 Hearing.kt\nandroidx/compose/material/icons/rounded/HearingKt\n*L\n29#1:78,12\n30#1:91,18\n30#1:128\n29#1:90\n30#1:109,2\n30#1:111,2\n30#1:117,11\n30#1:113,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_hearing",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Hearing",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getHearing",
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
.field private static _hearing:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getHearing(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 35
    .param p0, "$this$Hearing"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/HearingKt;->_hearing:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/HearingKt;->_hearing:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Rounded.Hearing"

    .line 78
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 80
    const/4 v10, 0x0

    .line 78
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$materialIcon":I
    nop

    .line 82
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 83
    nop

    .line 84
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 90
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 85
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 86
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 87
    nop

    .line 82
    nop

    .line 88
    nop

    .line 82
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    nop

    .local v1, "$this$_get_Hearing__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-HearingKt$Hearing$1":I
    move-object v4, v1

    .line 91
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 92
    const/high16 v16, 0x3f800000    # 1.0f

    .line 91
    .local v16, "fillAlpha$iv":F
    nop

    .line 93
    const/high16 v18, 0x3f800000    # 1.0f

    .line 91
    .local v18, "strokeAlpha$iv":F
    nop

    .line 94
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 91
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 100
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 101
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 103
    nop

    .line 105
    nop

    .line 106
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 107
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 108
    nop

    .line 100
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 109
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 110
    const-string v14, ""

    .line 109
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 112
    const/4 v7, 0x0

    .line 113
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 114
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-HearingKt$Hearing$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const/high16 v0, 0x41880000    # 17.0f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_Hearing__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_Hearing__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x40bd70a4    # -0.76f

    const v29, -0x41e66666    # -0.15f

    const v24, -0x416b851f    # -0.29f

    const/16 v25, 0x0

    const v26, -0x40f0a3d7    # -0.56f

    const v27, -0x428a3d71    # -0.06f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x40251eb8    # -1.71f

    const v29, -0x3fe7ae14    # -2.38f

    const v24, -0x40ca3d71    # -0.71f

    const v25, -0x41428f5c    # -0.37f

    const v26, -0x40651eb8    # -1.21f

    const v27, -0x409eb852    # -0.88f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, -0x3fe70a3d    # -2.39f

    const/high16 v29, -0x3fc00000    # -3.0f

    const v24, -0x40fd70a4    # -0.51f

    const v25, -0x403851ec    # -1.56f

    const v26, -0x4043d70a    # -1.47f

    const v27, -0x3fed70a4    # -2.29f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, -0x3feb851f    # -2.32f

    const v29, -0x3fde147b    # -2.53f

    const v24, -0x40b5c28f    # -0.79f

    const v25, -0x40e3d70a    # -0.61f

    const v26, -0x4031eb85    # -1.61f

    const v27, -0x406147ae    # -1.24f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v28, 0x41100000    # 9.0f

    const/high16 v29, 0x41100000    # 9.0f

    const v24, 0x4114a3d7    # 9.29f

    const v25, 0x412fae14    # 10.98f

    const/high16 v26, 0x41100000    # 9.0f

    const v27, 0x411ee148    # 9.93f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v28, 0x40a00000    # 5.0f

    const/high16 v29, -0x3f600000    # -5.0f

    const/16 v24, 0x0

    const v25, -0x3fcccccd    # -2.8f

    const v26, 0x400ccccd    # 2.2f

    const/high16 v27, -0x3f600000    # -5.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, 0x409e6666    # 4.95f

    const v29, 0x4089eb85    # 4.31f

    const v24, 0x4023d70a    # 2.56f

    const/16 v25, 0x0

    const v26, 0x409428f6    # 4.63f

    const v27, 0x3feccccd    # 1.85f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, 0x3f51eb85    # 0.82f

    const v29, 0x3f30a3d7    # 0.69f

    const v24, 0x3d75c28f    # 0.06f

    const v25, 0x3ecccccd    # 0.4f

    const v26, 0x3ed1eb85    # 0.41f

    const v27, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3eae147b    # 0.34f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x3f547ae1    # 0.83f

    const v29, -0x408f5c29    # -0.94f

    const/high16 v24, 0x3f000000    # 0.5f

    const/16 v25, 0x0

    const v26, 0x3f63d70a    # 0.89f

    const v27, -0x411eb852    # -0.44f

    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v28, 0x41600000    # 14.0f

    const/high16 v29, 0x40000000    # 2.0f

    const v24, 0x41a3eb85    # 20.49f

    const v25, 0x4092e148    # 4.59f

    const v26, 0x418ce148    # 17.61f

    const/high16 v27, 0x40000000    # 2.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v28, -0x3f200000    # -7.0f

    const/high16 v29, 0x40e00000    # 7.0f

    const v24, -0x3f847ae1    # -3.93f

    const/16 v25, 0x0

    const/high16 v26, -0x3f200000    # -7.0f

    const v27, 0x40447ae1    # 3.07f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x3f88f5c3    # 1.07f

    const v29, 0x4079999a    # 3.9f

    const/16 v24, 0x0

    const v25, 0x3fa147ae    # 1.26f

    const v26, 0x3ec28f5c    # 0.38f

    const v27, 0x4029999a    # 2.65f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x40366666    # 2.85f

    const v29, 0x4049999a    # 3.15f

    const v24, 0x3f68f5c3    # 0.91f

    const v25, 0x3fd33333    # 1.65f

    const v26, 0x3ffd70a4    # 1.98f

    const v27, 0x401eb852    # 2.48f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x3fdae148    # 1.71f

    const v29, 0x40033333    # 2.05f

    const v24, 0x3f4f5c29    # 0.81f

    const v25, 0x3f1eb852    # 0.62f

    const v26, 0x3fb1eb85    # 1.39f

    const v27, 0x3f88f5c3    # 1.07f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, 0x402eb852    # 2.73f

    const v29, 0x40633333    # 3.55f

    const v24, 0x3f19999a    # 0.6f

    const v25, 0x3fe8f5c3    # 1.82f

    const v26, 0x3faf5c29    # 1.37f

    const v27, 0x4035c28f    # 2.84f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, 0x3fd1eb85    # 1.64f

    const v29, 0x3eb33333    # 0.35f

    const v24, 0x3f028f5c    # 0.51f

    const v25, 0x3e6b851f    # 0.23f

    const v26, 0x3f88f5c3    # 1.07f

    const v27, 0x3eb33333    # 0.35f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, 0x40770a3d    # 3.86f

    const v29, -0x3fc47ae1    # -2.93f

    const v24, 0x3feb851f    # 1.84f

    const/16 v25, 0x0

    const v26, 0x4058f5c3    # 3.39f

    const v27, -0x406147ae    # -1.24f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, -0x40b0a3d7    # -0.81f

    const v29, -0x40770a3d    # -1.07f

    const v24, 0x3e0f5c29    # 0.14f

    const v25, -0x40f5c28f    # -0.54f

    const/high16 v26, -0x41800000    # -0.25f

    const v27, -0x40770a3d    # -1.07f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x414ccccd    # -0.35f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v29, 0x3f2147ae    # 0.63f

    const v24, -0x413d70a4    # -0.38f

    const/16 v25, 0x0

    const v26, -0x40d1eb85    # -0.68f

    const v27, 0x3e8a3d71    # 0.27f

    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, -0x400e147b    # -1.89f

    const v29, 0x3faf5c29    # 1.37f

    const v24, -0x417ae148    # -0.26f

    const v25, 0x3f4a3d71    # 0.79f

    const v26, -0x407eb852    # -1.01f

    const v27, 0x3faf5c29    # 1.37f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v1, 0x40df0a3d    # 6.97f

    const v12, 0x3ffc28f6    # 1.97f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v28, -0x40400000    # -1.5f

    const v29, 0x3d8f5c29    # 0.07f

    const v24, -0x4123d70a    # -0.43f

    const v25, -0x4123d70a    # -0.43f

    const v26, -0x4070a3d7    # -1.12f

    const v27, -0x413851ec    # -0.39f

    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v28, 0x40400000    # 3.0f

    const/high16 v29, 0x41100000    # 9.0f

    const v24, 0x407b851f    # 3.93f

    const v25, 0x407c28f6    # 3.94f

    const/high16 v26, 0x40400000    # 3.0f

    const v27, 0x40cb851f    # 6.36f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x401e147b    # 2.47f

    const v12, 0x40de6666    # 6.95f

    move-object/from16 v33, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v33, "name$iv":Ljava/lang/String;
    const v2, 0x3f6e147b    # 0.93f

    move/from16 v34, v3

    .end local v3    # "$i$a$-materialIcon$default-HearingKt$Hearing$1":I
    .local v34, "$i$a$-materialIcon$default-HearingKt$Hearing$1":I
    const v3, 0x40a1eb85    # 5.06f

    invoke-virtual {v0, v2, v3, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v28, 0x3fbeb852    # 1.49f

    const v29, 0x3da3d70a    # 0.08f

    const v24, 0x3ec28f5c    # 0.38f

    const v25, 0x3eeb851f    # 0.46f

    const v26, 0x3f88f5c3    # 1.07f

    const/high16 v27, 0x3f000000    # 0.5f

    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, 0x3d8f5c29    # 0.07f

    const v29, -0x40570a3d    # -1.32f

    const v24, 0x3eb851ec    # 0.36f

    const v25, -0x4147ae14    # -0.36f

    const v26, 0x3ec7ae14    # 0.39f

    const v27, -0x4091eb85    # -0.93f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v28, 0x40a00000    # 5.0f

    const/high16 v29, 0x41100000    # 9.0f

    const v24, 0x40b8a3d7    # 5.77f

    const v25, 0x41528f5c    # 13.16f

    const/high16 v26, 0x40a00000    # 5.0f

    const v27, 0x4132b852    # 11.17f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x40028f5c    # 2.04f

    const v2, -0x3f49999a    # -5.7f

    const v3, 0x3f451eb8    # 0.77f

    const v12, -0x3f7ae148    # -4.16f

    invoke-virtual {v0, v3, v12, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, -0x4270a3d7    # -0.07f

    const v29, -0x4055c28f    # -1.33f

    const v24, 0x3ea8f5c3    # 0.33f

    const v25, -0x41333333    # -0.4f

    const v26, 0x3e947ae1    # 0.29f

    const v27, -0x4087ae14    # -0.97f

    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v1, 0x41380000    # 11.5f

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v28, 0x40200000    # 2.5f

    const/high16 v29, 0x40200000    # 2.5f

    const/16 v24, 0x0

    const v25, 0x3fb0a3d7    # 1.38f

    const v26, 0x3f8f5c29    # 1.12f

    const/high16 v27, 0x40200000    # 2.5f

    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    .end local v23    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x4070a3d7    # -1.12f

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v3, -0x3fe00000    # -2.5f

    invoke-virtual {v0, v2, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v2, -0x3fe00000    # -2.5f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v1, 0x3f8f5c29    # 1.12f

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v0, v3, v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    nop

    .line 114
    .end local v0    # "$this$_get_Hearing__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-HearingKt$Hearing$1$1":I
    nop

    .line 115
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 113
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 116
    nop

    .line 117
    .end local v7    # "$i$f$PathData":I
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
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

    .line 111
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 127
    nop

    .line 128
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

    .line 89
    .end local v32    # "$this$_get_Hearing__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v34    # "$i$a$-materialIcon$default-HearingKt$Hearing$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    .end local v33    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/HearingKt;->_hearing:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 73
    sget-object v0, Landroidx/compose/material/icons/rounded/HearingKt;->_hearing:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
