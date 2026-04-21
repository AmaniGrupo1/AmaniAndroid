.class public final Landroidx/compose/material/icons/sharp/WifiCalling3Kt;
.super Ljava/lang/Object;
.source "WifiCalling3.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiCalling3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiCalling3.kt\nandroidx/compose/material/icons/sharp/WifiCalling3Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,77:1\n212#2,12:78\n233#2,18:91\n253#2:128\n233#2,18:129\n253#2:166\n233#2,18:167\n253#2:204\n233#2,18:205\n253#2:242\n174#3:90\n705#4,2:109\n717#4,2:111\n719#4,11:117\n705#4,2:147\n717#4,2:149\n719#4,11:155\n705#4,2:185\n717#4,2:187\n719#4,11:193\n705#4,2:223\n717#4,2:225\n719#4,11:231\n72#5,4:113\n72#5,4:151\n72#5,4:189\n72#5,4:227\n*S KotlinDebug\n*F\n+ 1 WifiCalling3.kt\nandroidx/compose/material/icons/sharp/WifiCalling3Kt\n*L\n29#1:78,12\n30#1:91,18\n30#1:128\n40#1:129,18\n40#1:166\n50#1:167,18\n50#1:204\n58#1:205,18\n58#1:242\n29#1:90\n30#1:109,2\n30#1:111,2\n30#1:117,11\n40#1:147,2\n40#1:149,2\n40#1:155,11\n50#1:185,2\n50#1:187,2\n50#1:193,11\n58#1:223,2\n58#1:225,2\n58#1:231,11\n30#1:113,4\n40#1:151,4\n50#1:189,4\n58#1:227,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_wifiCalling3",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "WifiCalling3",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getWifiCalling3",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWifiCalling3(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 35
    .param p0, "$this$WifiCalling3"    # Landroidx/compose/material/icons/Icons$Sharp;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/sharp/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Sharp.WifiCalling3"

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

    .local v1, "$this$_get_WifiCalling3__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-WifiCalling3Kt$WifiCalling3$1":I
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

    .local v12, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x4183eb85    # 16.49f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_WifiCalling3__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_WifiCalling3__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x3f4ae148    # -5.66f

    const v29, 0x4015c28f    # 2.34f

    const v24, -0x3ff28f5c    # -2.21f

    const/16 v25, 0x0

    const v26, -0x3f7947ae    # -4.21f

    const v27, 0x3f666666    # 0.9f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f87ae14    # 1.06f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x4092e148    # 4.59f

    const v29, -0x400b851f    # -1.91f

    const v24, 0x3f970a3d    # 1.18f

    const v25, -0x4068f5c3    # -1.18f

    const v26, 0x40333333    # 2.8f

    const v27, -0x400b851f    # -1.91f

    .end local v0    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x4092e148    # 4.59f

    const v12, 0x3ff47ae1    # 1.91f

    move-object/from16 v33, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v33, "name$iv":Ljava/lang/String;
    const v2, 0x405ae148    # 3.42f

    move/from16 v34, v3

    .end local v3    # "$i$a$-materialIcon$default-WifiCalling3Kt$WifiCalling3$1":I
    .local v34, "$i$a$-materialIcon$default-WifiCalling3Kt$WifiCalling3$1":I
    const v3, 0x3f3ae148    # 0.73f

    invoke-virtual {v0, v2, v3, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v1, -0x407851ec    # -1.06f

    const v2, 0x3f87ae14    # 1.06f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, 0x4183eb85    # 16.49f

    const/high16 v29, 0x40400000    # 3.0f

    const v24, 0x41a5999a    # 20.7f

    const v25, 0x4079999a    # 3.9f

    const v26, 0x4195999a    # 18.7f

    const/high16 v27, 0x40400000    # 3.0f

    .end local v0    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    nop

    .line 114
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$1":I
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

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

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

    .line 40
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 129
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 130
    const/high16 v16, 0x3f800000    # 1.0f

    .line 129
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 131
    const/high16 v18, 0x3f800000    # 1.0f

    .line 129
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 132
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 129
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 139
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 141
    nop

    .line 143
    nop

    .line 144
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 145
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 146
    nop

    .line 138
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 147
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 148
    const-string v14, ""

    .line 147
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$f$path-R_LF-3I":I
    nop

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v4, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 152
    .local v5, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 41
    .local v7, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$2":I
    const v8, 0x40eeb852    # 7.46f

    const v9, 0x41a03d71    # 20.03f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v29, 0x40c00000    # 6.0f

    const v24, 0x4198f5c3    # 19.12f

    const v25, 0x40d1eb85    # 6.56f

    const v26, 0x418ef5c3    # 17.87f

    const/high16 v27, 0x40c00000    # 6.0f

    move-object/from16 v23, v6

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, -0x3f9d70a4    # -3.54f

    const v9, 0x3fbae148    # 1.46f

    const v12, -0x3fd7ae14    # -2.63f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x3f0f5c29    # 0.56f

    invoke-virtual {v6, v12, v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {v6, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x401e147b    # 2.47f

    const v29, -0x407c28f6    # -1.03f

    const v24, 0x3f2147ae    # 0.63f

    const v25, -0x40deb852    # -0.63f

    const v26, 0x3fc147ae    # 1.51f

    const v27, -0x407c28f6    # -1.03f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v0, 0x401e147b    # 2.47f

    const v8, 0x3f83d70a    # 1.03f

    const v9, 0x3feb851f    # 1.84f

    const v12, 0x3ec7ae14    # 0.39f

    invoke-virtual {v6, v9, v12, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v0, 0x40eeb852    # 7.46f

    const v8, 0x41a03d71    # 20.03f

    invoke-virtual {v6, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    nop

    .line 152
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$2":I
    nop

    .line 153
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 151
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 154
    nop

    .line 155
    .end local v3    # "$i$f$PathData":I
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
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

    .line 149
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 165
    nop

    .line 166
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

    .line 50
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 167
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 168
    const/high16 v16, 0x3f800000    # 1.0f

    .line 167
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 169
    const/high16 v18, 0x3f800000    # 1.0f

    .line 167
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 170
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 167
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 176
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 177
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 179
    nop

    .line 181
    nop

    .line 182
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 183
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 184
    nop

    .line 176
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 185
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 186
    const-string v14, ""

    .line 185
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 187
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 188
    const/4 v3, 0x0

    .line 189
    .restart local v3    # "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 190
    .restart local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$3":I
    const v8, 0x411970a4    # 9.59f

    const v9, 0x417147ae    # 15.08f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v8, 0x41300000    # 11.0f

    const v9, 0x4183eb85    # 16.49f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v8, 0x3fb47ae1    # 1.41f

    const v9, -0x404b851f    # -1.41f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v28, 0x4183eb85    # 16.49f

    const/high16 v29, 0x41100000    # 9.0f

    const v24, 0x418c51ec    # 17.54f

    const v25, 0x4113851f    # 9.22f

    const v26, 0x418851ec    # 17.04f

    const/high16 v27, 0x41100000    # 9.0f

    move-object/from16 v23, v6

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x41770a3d    # 15.44f

    const v9, 0x4113851f    # 9.22f

    const v12, 0x411970a4    # 9.59f

    move-object/from16 v28, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v28, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x417147ae    # 15.08f

    invoke-virtual {v6, v8, v9, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    nop

    .line 190
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$3":I
    nop

    .line 191
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 189
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 192
    nop

    .line 193
    .end local v3    # "$i$f$PathData":I
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
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

    .line 187
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 203
    nop

    .line 204
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

    .line 58
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v28    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 205
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 206
    const/high16 v16, 0x3f800000    # 1.0f

    .line 205
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 207
    const/high16 v18, 0x3f800000    # 1.0f

    .line 205
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 208
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 205
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 214
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 215
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 217
    nop

    .line 219
    nop

    .line 220
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 221
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 222
    nop

    .line 214
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 223
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 224
    const-string v14, ""

    .line 223
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 225
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 226
    const/4 v3, 0x0

    .line 227
    .restart local v3    # "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 228
    .restart local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 59
    .local v7, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$4":I
    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v8, -0x3f600000    # -5.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v8, -0x3fc66666    # -2.9f

    const v9, 0x4039999a    # 2.9f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v28, -0x3f400000    # -6.0f

    const/high16 v29, -0x3f400000    # -6.0f

    const/high16 v24, -0x3fe00000    # -2.5f

    const v25, -0x4048f5c3    # -1.43f

    const v26, -0x3f6dc28f    # -4.57f

    const/high16 v27, -0x3fa00000    # -3.5f

    move-object/from16 v23, v6

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v6, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, 0x401b851f    # 2.43f

    const/high16 v29, 0x41100000    # 9.0f

    const/16 v24, 0x0

    const v25, 0x4051eb85    # 3.28f

    const v26, 0x3f63d70a    # 0.89f

    const v27, 0x40cb3333    # 6.35f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, 0x40d23d71    # 6.57f

    const v29, 0x40d23d71    # 6.57f

    const v24, 0x3fca3d71    # 1.58f

    const v25, 0x402eb852    # 2.73f

    const v26, 0x40766666    # 3.85f

    const v27, 0x409fae14    # 4.99f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v28, 0x41100000    # 9.0f

    const v29, 0x401b851f    # 2.43f

    const v24, 0x4029999a    # 2.65f

    const v25, 0x3fc3d70a    # 1.53f

    const v26, 0x40b70a3d    # 5.72f

    const v27, 0x401b851f    # 2.43f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    nop

    .line 228
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$4":I
    nop

    .line 229
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 227
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 230
    nop

    .line 231
    .end local v3    # "$i$f$PathData":I
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 225
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v3

    .line 241
    nop

    .line 242
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

    .line 58
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 89
    .end local v32    # "$this$_get_WifiCalling3__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v34    # "$i$a$-materialIcon$default-WifiCalling3Kt$WifiCalling3$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    .end local v33    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/sharp/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 73
    sget-object v0, Landroidx/compose/material/icons/sharp/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
