.class public final Landroidx/compose/material/icons/rounded/CleanHandsKt;
.super Ljava/lang/Object;
.source "CleanHands.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCleanHands.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanHands.kt\nandroidx/compose/material/icons/rounded/CleanHandsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,107:1\n212#2,12:108\n233#2,18:121\n253#2:158\n174#3:120\n705#4,2:139\n717#4,2:141\n719#4,11:147\n72#5,4:143\n*S KotlinDebug\n*F\n+ 1 CleanHands.kt\nandroidx/compose/material/icons/rounded/CleanHandsKt\n*L\n29#1:108,12\n30#1:121,18\n30#1:158\n29#1:120\n30#1:139,2\n30#1:141,2\n30#1:147,11\n30#1:143,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_cleanHands",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "CleanHands",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getCleanHands",
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
.field private static _cleanHands:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getCleanHands(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 33
    .param p0, "$this$CleanHands"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/CleanHandsKt;->_cleanHands:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/CleanHandsKt;->_cleanHands:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Rounded.CleanHands"

    .line 108
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 110
    const/4 v10, 0x0

    .line 108
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 119
    .local v0, "$i$f$materialIcon":I
    nop

    .line 112
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 113
    nop

    .line 114
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 120
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 115
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 116
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 117
    nop

    .line 112
    nop

    .line 118
    nop

    .line 112
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    nop

    .local v1, "$this$_get_CleanHands__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-CleanHandsKt$CleanHands$1":I
    move-object v4, v1

    .line 121
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 122
    const/high16 v16, 0x3f800000    # 1.0f

    .line 121
    .local v16, "fillAlpha$iv":F
    nop

    .line 123
    const/high16 v18, 0x3f800000    # 1.0f

    .line 121
    .local v18, "strokeAlpha$iv":F
    nop

    .line 124
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 121
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 131
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 133
    nop

    .line 135
    nop

    .line 136
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 137
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 138
    nop

    .line 130
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 139
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 140
    const-string v14, ""

    .line 139
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 141
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 144
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-CleanHandsKt$CleanHands$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x416fd70a    # 14.99f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_CleanHands__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_CleanHands__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v0, -0x40deb852    # -0.63f

    const v1, 0x3faf5c29    # 1.37f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v0, 0x40a00000    # 5.0f

    const v1, 0x4187eb85    # 16.99f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v0, 0x3f2147ae    # 0.63f

    const v1, 0x3faf5c29    # 1.37f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v0, 0x4197eb85    # 18.99f

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v0, -0x4050a3d7    # -1.37f

    const v1, 0x3f2147ae    # 0.63f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v0, 0x41100000    # 9.0f

    const v1, 0x4187eb85    # 16.99f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v0, -0x4050a3d7    # -1.37f

    const v1, -0x40deb852    # -0.63f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v0, 0x416fd70a    # 14.99f

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, -0x40000000    # -2.0f

    const v24, 0x3f8ccccd    # 1.1f

    const/16 v25, 0x0

    const/high16 v26, 0x40000000    # 2.0f

    const v27, -0x4099999a    # -0.9f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, -0x4035c28f    # -1.58f

    const v29, -0x3fa8f5c3    # -3.36f

    const/16 v24, 0x0

    const v25, -0x40b851ec    # -0.78f

    const v26, -0x40828f5c    # -0.99f

    const v27, -0x3fe3d70a    # -2.44f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, -0x40a8f5c3    # -0.84f

    const/16 v29, 0x0

    const v24, -0x41b33333    # -0.2f

    const v25, -0x416147ae    # -0.31f

    const v26, -0x40dc28f6    # -0.64f

    const v27, -0x416147ae    # -0.31f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/high16 v28, 0x41900000    # 18.0f

    const/high16 v29, 0x41400000    # 12.0f

    const v24, 0x4197eb85    # 18.99f

    const v25, 0x4118f5c3    # 9.56f

    const/high16 v26, 0x41900000    # 18.0f

    const v27, 0x4133851f    # 11.22f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v28, 0x41a00000    # 20.0f

    const/high16 v29, 0x41600000    # 14.0f

    const/high16 v24, 0x41900000    # 18.0f

    const v25, 0x4151999a    # 13.1f

    const v26, 0x41973333    # 18.9f

    const/high16 v27, 0x41600000    # 14.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v1, 0x41180000    # 9.5f

    const v12, 0x4113d70a    # 9.24f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v1, 0x41700000    # 15.0f

    const v12, 0x413a6666    # 11.65f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v28, -0x3f800000    # -4.0f

    const v29, -0x3f633333    # -4.9f

    const/16 v24, 0x0

    const v25, -0x3fe51eb8    # -2.42f

    const v26, -0x4023d70a    # -1.72f

    const v27, -0x3f71eb85    # -4.44f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/high16 v28, 0x3f800000    # 1.0f

    const v29, 0x3e3851ec    # 0.18f

    const v24, 0x3eb33333    # 0.35f

    const/16 v25, 0x0

    const v26, 0x3f2e147b    # 0.68f

    const v27, 0x3d75c28f    # 0.06f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x3f866666    # 1.05f

    const v29, -0x419eb852    # -0.22f

    const v24, 0x3ebd70a4    # 0.37f

    const v25, 0x3e051eb8    # 0.13f

    const v26, 0x3f47ae14    # 0.78f

    const v27, 0x3d4ccccd    # 0.05f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, -0x41570a3d    # -0.33f

    const v29, -0x402e147b    # -1.64f

    const v24, 0x3f028f5c    # 0.51f

    const v25, -0x40fd70a4    # -0.51f

    const v26, 0x3eae147b    # 0.34f

    const v27, -0x404e147b    # -1.39f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v28, 0x41500000    # 13.0f

    const/high16 v29, 0x40000000    # 2.0f

    const v24, 0x41630a3d    # 14.19f

    const v25, 0x40070a3d    # 2.11f

    const v26, 0x4159c28f    # 13.61f

    const/high16 v27, 0x40000000    # 2.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41080000    # 8.5f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v28, -0x40800000    # -1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const v24, -0x40f33333    # -0.55f

    const/16 v25, 0x0

    const/high16 v26, -0x40800000    # -1.0f

    const v27, 0x3ee66666    # 0.45f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const v25, 0x3f0ccccd    # 0.55f

    const v26, 0x3ee66666    # 0.45f

    const/high16 v27, 0x3f800000    # 1.0f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v1, 0x40070a3d    # 2.11f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v28, 0x40a80000    # 5.25f

    const/high16 v29, 0x41180000    # 9.5f

    const v24, 0x40e70a3d    # 7.22f

    const v25, 0x40cf5c29    # 6.48f

    const v26, 0x40b9999a    # 5.8f

    const v27, 0x40f947ae    # 7.79f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x4113d70a    # 9.24f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v28, -0x40000000    # -2.0f

    const/high16 v29, 0x40000000    # 2.0f

    const v24, -0x40733333    # -1.1f

    const/16 v25, 0x0

    const/high16 v26, -0x40000000    # -2.0f

    const v27, 0x3f666666    # 0.9f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v28, 0x40000000    # 2.0f

    const/16 v24, 0x0

    const v25, 0x3f8ccccd    # 1.1f

    const v26, 0x3f666666    # 0.9f

    const/high16 v27, 0x40000000    # 2.0f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/high16 v29, -0x40000000    # -2.0f

    const v24, 0x3f8ccccd    # 1.1f

    const/16 v25, 0x0

    const/high16 v26, 0x40000000    # 2.0f

    const v27, -0x4099999a    # -0.9f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, -0x3f200000    # -7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v28, 0x40400000    # 3.0f

    const/high16 v29, 0x41300000    # 11.0f

    const/high16 v24, 0x40a00000    # 5.0f

    const v25, 0x413e6666    # 11.9f

    const v26, 0x40833333    # 4.1f

    const/high16 v27, 0x41300000    # 11.0f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v1, 0x419feb85    # 19.99f

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v1, -0x3f2570a4    # -6.83f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v28, -0x41570a3d    # -0.33f

    const v29, -0x428a3d71    # -0.06f

    const v24, -0x421eb852    # -0.11f

    const/16 v25, 0x0

    const v26, -0x419eb852    # -0.22f

    const v27, -0x435c28f6    # -0.02f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x4043d70a    # -1.47f

    const v12, -0x40fd70a4    # -0.51f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v28, -0x41666666    # -0.3f

    const v29, -0x40deb852    # -0.63f

    const v24, -0x417ae148    # -0.26f

    const v25, -0x4247ae14    # -0.09f

    const v26, -0x413851ec    # -0.39f

    const v27, -0x41428f5c    # -0.37f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v28, 0x3f23d70a    # 0.64f

    const v29, -0x41666666    # -0.3f

    const v24, 0x3db851ec    # 0.09f

    const v25, -0x417ae148    # -0.26f

    const v26, 0x3ec28f5c    # 0.38f

    const v27, -0x41333333    # -0.4f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f8f5c29    # 1.12f

    const v12, 0x3edc28f6    # 0.43f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v28, 0x3eb851ec    # 0.36f

    const v29, 0x3d8f5c29    # 0.07f

    const v24, 0x3de147ae    # 0.11f

    const v25, 0x3d23d70a    # 0.04f

    const v26, 0x3e75c28f    # 0.24f

    const v27, 0x3d8f5c29    # 0.07f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x402851ec    # 2.63f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v28, 0x3f970a3d    # 1.18f

    const v29, -0x4068f5c3    # -1.18f

    const v24, 0x3f266666    # 0.65f

    const/16 v25, 0x0

    const v26, 0x3f970a3d    # 1.18f

    const v27, -0x40f851ec    # -0.53f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v28, -0x40bae148    # -0.77f

    const v29, -0x4071eb85    # -1.11f

    const/16 v24, 0x0

    const v25, -0x41051eb8    # -0.49f

    const v26, -0x416147ae    # -0.31f

    const v27, -0x4091eb85    # -0.93f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x4114cccd    # 9.3f

    const v12, 0x4132147b    # 11.13f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v28, 0x4109999a    # 8.6f

    const/high16 v29, 0x41300000    # 11.0f

    const v24, 0x411147ae    # 9.08f

    const v25, 0x4130a3d7    # 11.04f

    const v26, 0x410d70a4    # 8.84f

    const/high16 v27, 0x41300000    # 11.0f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v1, 0x411051ec    # 9.02f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v1, 0x40cbd70a    # 6.37f

    const v12, 0x3fe7ae14    # 1.81f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v28, 0x3fa00000    # 1.25f

    const v29, -0x42b33333    # -0.05f

    const v24, 0x3ed1eb85    # 0.41f

    const v25, 0x3df5c28f    # 0.12f

    const v26, 0x3f59999a    # 0.85f

    const v27, 0x3dcccccd    # 0.1f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v28, 0x419feb85    # 19.99f

    const/high16 v29, 0x41880000    # 17.0f

    const/high16 v24, 0x41b00000    # 22.0f

    const v25, 0x418f1eb8    # 17.89f

    const v26, 0x41a8cccd    # 21.1f

    const/high16 v27, 0x41880000    # 17.0f

    .end local v0    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    nop

    .line 144
    .end local v23    # "$this$_get_CleanHands__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-CleanHandsKt$CleanHands$1$1":I
    nop

    .line 145
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 143
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 146
    nop

    .line 147
    .end local v7    # "$i$f$PathData":I
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

    .line 155
    nop

    .line 156
    nop

    .line 141
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 157
    nop

    .line 158
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

    .line 119
    .end local v3    # "$i$a$-materialIcon$default-CleanHandsKt$CleanHands$1":I
    .end local v32    # "$this$_get_CleanHands__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/rounded/CleanHandsKt;->_cleanHands:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 103
    sget-object v0, Landroidx/compose/material/icons/rounded/CleanHandsKt;->_cleanHands:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
