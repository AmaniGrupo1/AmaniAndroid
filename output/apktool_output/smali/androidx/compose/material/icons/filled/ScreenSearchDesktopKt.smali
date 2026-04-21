.class public final Landroidx/compose/material/icons/filled/ScreenSearchDesktopKt;
.super Ljava/lang/Object;
.source "ScreenSearchDesktop.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenSearchDesktop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenSearchDesktop.kt\nandroidx/compose/material/icons/filled/ScreenSearchDesktopKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,74:1\n212#2,12:75\n233#2,18:88\n253#2:125\n174#3:87\n705#4,2:106\n717#4,2:108\n719#4,11:114\n72#5,4:110\n*S KotlinDebug\n*F\n+ 1 ScreenSearchDesktop.kt\nandroidx/compose/material/icons/filled/ScreenSearchDesktopKt\n*L\n29#1:75,12\n30#1:88,18\n30#1:125\n29#1:87\n30#1:106,2\n30#1:108,2\n30#1:114,11\n30#1:110,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_screenSearchDesktop",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "ScreenSearchDesktop",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getScreenSearchDesktop",
        "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _screenSearchDesktop:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getScreenSearchDesktop(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 33
    .param p0, "$this$ScreenSearchDesktop"    # Landroidx/compose/material/icons/Icons$Filled;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/ScreenSearchDesktopKt;->_screenSearchDesktop:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/filled/ScreenSearchDesktopKt;->_screenSearchDesktop:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string v2, "Filled.ScreenSearchDesktop"

    .line 75
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 77
    const/4 v10, 0x0

    .line 75
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$materialIcon":I
    nop

    .line 79
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 80
    nop

    .line 81
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 87
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 82
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 87
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 83
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 84
    nop

    .line 79
    nop

    .line 85
    nop

    .line 79
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    nop

    .local v1, "$this$_get_ScreenSearchDesktop__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-ScreenSearchDesktopKt$ScreenSearchDesktop$1":I
    move-object v4, v1

    .line 88
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 89
    const/high16 v16, 0x3f800000    # 1.0f

    .line 88
    .local v16, "fillAlpha$iv":F
    nop

    .line 90
    const/high16 v18, 0x3f800000    # 1.0f

    .line 88
    .local v18, "strokeAlpha$iv":F
    nop

    .line 91
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 88
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 97
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 98
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 100
    nop

    .line 102
    nop

    .line 103
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 104
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 105
    nop

    .line 97
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 106
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 107
    const-string v14, ""

    .line 106
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 108
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 109
    const/4 v7, 0x0

    .line 110
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 111
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-ScreenSearchDesktopKt$ScreenSearchDesktop$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const/high16 v0, 0x41900000    # 18.0f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_ScreenSearchDesktop__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_ScreenSearchDesktop__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x41afeb85    # 21.99f

    const/high16 v29, 0x41800000    # 16.0f

    const v24, 0x41a8cccd    # 21.1f

    const/high16 v25, 0x41900000    # 18.0f

    const v26, 0x41afeb85    # 21.99f

    const v27, 0x4188cccd    # 17.1f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v28, 0x41a00000    # 20.0f

    const/high16 v29, 0x40800000    # 4.0f

    const/high16 v24, 0x41b00000    # 22.0f

    const v25, 0x409c7ae1    # 4.89f

    const v26, 0x41a8cccd    # 21.1f

    const/high16 v27, 0x40800000    # 4.0f

    .end local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    .end local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, 0x40c00000    # 6.0f

    const v24, 0x4038f5c3    # 2.89f

    const/high16 v25, 0x40800000    # 4.0f

    const/high16 v26, 0x40000000    # 2.0f

    const v27, 0x409c7ae1    # 4.89f

    .end local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    .end local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v28, 0x40800000    # 4.0f

    const/high16 v29, 0x41900000    # 18.0f

    const/high16 v24, 0x40000000    # 2.0f

    const v25, 0x4188cccd    # 17.1f

    const v26, 0x4038f5c3    # 2.89f

    const/high16 v27, 0x41900000    # 18.0f

    .end local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    .end local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v1, 0x4180147b    # 16.01f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v1, 0x41118d50    # 9.097f

    const v12, 0x411f3f7d    # 9.953f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, 0x412f6042    # 10.961f

    const v29, 0x41016c8b    # 8.089f

    const v24, 0x41118d50    # 9.097f

    const v25, 0x410ed0e5    # 8.926f

    const v26, 0x411eed91    # 9.933f

    const v27, 0x41016c8b    # 8.089f

    .end local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v28, 0x414d3333    # 12.825f

    const v29, 0x411f3f7d    # 9.953f

    const v24, 0x413fced9    # 11.988f

    const v25, 0x41016c8b    # 8.089f

    const v26, 0x414d3333    # 12.825f

    const v27, 0x410ed0e5    # 8.926f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x412f6042    # 10.961f

    const v29, 0x413d126f    # 11.817f

    const v24, 0x414d3333    # 12.825f

    const v25, 0x412fae14    # 10.98f

    const v26, 0x413fced9    # 11.988f

    const v27, 0x413d126f    # 11.817f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, 0x41118d50    # 9.097f

    const v29, 0x411f3f7d    # 9.953f

    const v24, 0x411eed91    # 9.933f

    const v25, 0x413d126f    # 11.817f

    const v26, 0x41118d50    # 9.097f

    const v27, 0x412fae14    # 10.98f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    .end local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v1, 0x41630625    # 14.189f

    const v12, 0x41810831    # 16.129f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v1, 0x415a5a1d    # 13.647f

    const v12, 0x413b4fdf    # 11.707f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, 0x4162c8b4    # 14.174f

    const v24, 0x415fa5e3    # 13.978f

    const v25, 0x41333b64    # 11.202f

    const v26, 0x4162c8b4    # 14.174f

    const v27, 0x4129999a    # 10.6f

    .end local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x412f6042    # 10.961f

    const v29, 0x40d7ae14    # 6.74f

    const v24, 0x4162c8b4    # 14.174f

    const v25, 0x4102e560    # 8.181f

    const v26, 0x414bba5e    # 12.733f

    const v27, 0x40d7ae14    # 6.74f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v28, 0x40f7e76d    # 7.747f

    const v29, 0x411f3f7d    # 9.953f

    const v24, 0x41130625    # 9.189f

    const v25, 0x40d7ae14    # 6.74f

    const v26, 0x40f7e76d    # 7.747f

    const v27, 0x4102e560    # 8.181f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, 0x412f6042    # 10.961f

    const v29, 0x4152ac08    # 13.167f

    const v24, 0x40f7e76d    # 7.747f

    const v25, 0x413b999a    # 11.725f

    const v26, 0x41130625    # 9.189f

    const v27, 0x4152ac08    # 13.167f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v28, 0x414af5c3    # 12.685f

    const v29, 0x414a7efa    # 12.656f

    const v24, 0x41398d50    # 11.597f

    const v25, 0x4152ac08    # 13.167f

    const v26, 0x4142f9db    # 12.186f

    const v27, 0x414f999a    # 12.975f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    .end local v23    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x4172c8b4    # 15.174f

    const v12, 0x41724dd3    # 15.144f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v1, 0x41630625    # 14.189f

    const v12, 0x41810831    # 16.129f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    nop

    .line 111
    .end local v0    # "$this$_get_ScreenSearchDesktop__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-ScreenSearchDesktopKt$ScreenSearchDesktop$1$1":I
    nop

    .line 112
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 110
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 113
    nop

    .line 114
    .end local v7    # "$i$f$PathData":I
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
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

    .line 108
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 124
    nop

    .line 125
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

    .line 86
    .end local v3    # "$i$a$-materialIcon$default-ScreenSearchDesktopKt$ScreenSearchDesktop$1":I
    .end local v32    # "$this$_get_ScreenSearchDesktop__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/filled/ScreenSearchDesktopKt;->_screenSearchDesktop:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 70
    sget-object v0, Landroidx/compose/material/icons/filled/ScreenSearchDesktopKt;->_screenSearchDesktop:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
