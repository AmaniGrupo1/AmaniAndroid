.class public final Landroidx/compose/material/icons/twotone/WifiCalling3Kt;
.super Ljava/lang/Object;
.source "WifiCalling3.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiCalling3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiCalling3.kt\nandroidx/compose/material/icons/twotone/WifiCalling3Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,111:1\n212#2,12:112\n233#2,18:125\n253#2:162\n233#2,18:163\n253#2:200\n233#2,18:201\n253#2:238\n233#2,18:239\n253#2:276\n233#2,18:277\n253#2:314\n233#2,18:315\n253#2:352\n174#3:124\n705#4,2:143\n717#4,2:145\n719#4,11:151\n705#4,2:181\n717#4,2:183\n719#4,11:189\n705#4,2:219\n717#4,2:221\n719#4,11:227\n705#4,2:257\n717#4,2:259\n719#4,11:265\n705#4,2:295\n717#4,2:297\n719#4,11:303\n705#4,2:333\n717#4,2:335\n719#4,11:341\n72#5,4:147\n72#5,4:185\n72#5,4:223\n72#5,4:261\n72#5,4:299\n72#5,4:337\n*S KotlinDebug\n*F\n+ 1 WifiCalling3.kt\nandroidx/compose/material/icons/twotone/WifiCalling3Kt\n*L\n29#1:112,12\n30#1:125,18\n30#1:162\n40#1:163,18\n40#1:200\n50#1:201,18\n50#1:238\n58#1:239,18\n58#1:276\n66#1:277,18\n66#1:314\n74#1:315,18\n74#1:352\n29#1:124\n30#1:143,2\n30#1:145,2\n30#1:151,11\n40#1:181,2\n40#1:183,2\n40#1:189,11\n50#1:219,2\n50#1:221,2\n50#1:227,11\n58#1:257,2\n58#1:259,2\n58#1:265,11\n66#1:295,2\n66#1:297,2\n66#1:303,11\n74#1:333,2\n74#1:335,2\n74#1:341,11\n30#1:147,4\n40#1:185,4\n50#1:223,4\n58#1:261,4\n66#1:299,4\n74#1:337,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_wifiCalling3",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "WifiCalling3",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getWifiCalling3",
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
.field private static _wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWifiCalling3(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 52
    .param p0, "$this$WifiCalling3"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "TwoTone.WifiCalling3"

    .line 112
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 114
    const/4 v10, 0x0

    .line 112
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 123
    .local v0, "$i$f$materialIcon":I
    nop

    .line 116
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 117
    nop

    .line 118
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 119
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 124
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 120
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 121
    nop

    .line 116
    nop

    .line 122
    nop

    .line 116
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    nop

    .local v1, "$this$_get_WifiCalling3__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-WifiCalling3Kt$WifiCalling3$1":I
    move-object v4, v1

    .line 125
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 126
    const/high16 v16, 0x3f800000    # 1.0f

    .line 125
    .local v16, "fillAlpha$iv":F
    nop

    .line 127
    const/high16 v18, 0x3f800000    # 1.0f

    .line 125
    .local v18, "strokeAlpha$iv":F
    nop

    .line 128
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 125
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 134
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 135
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 137
    nop

    .line 139
    nop

    .line 140
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 141
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 142
    nop

    .line 134
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 143
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 144
    const-string v14, ""

    .line 143
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 145
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 146
    const/4 v7, 0x0

    .line 147
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 148
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const/high16 v0, 0x40400000    # 3.0f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_WifiCalling3__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_WifiCalling3__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, 0x4183eb85    # 16.49f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x3f4ae148    # -5.66f

    const v29, 0x4015c28f    # 2.34f

    const v24, -0x3ff28f5c    # -2.21f

    const/16 v25, 0x0

    const v26, -0x3f7947ae    # -4.21f

    const v27, 0x3f666666    # 0.9f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f87ae14    # 1.06f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x4092e148    # 4.59f

    const v29, -0x400b851f    # -1.91f

    const v24, 0x3f970a3d    # 1.18f

    const v25, -0x4068f5c3    # -1.18f

    const v26, 0x40333333    # 2.8f

    const v27, -0x400b851f    # -1.91f

    .end local v0    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
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

    .end local v0    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    nop

    .line 148
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$1":I
    nop

    .line 149
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 147
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 150
    nop

    .line 151
    .end local v7    # "$i$f$PathData":I
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

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 145
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 161
    nop

    .line 162
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

    .line 163
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 164
    const/high16 v16, 0x3f800000    # 1.0f

    .line 163
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 165
    const/high16 v18, 0x3f800000    # 1.0f

    .line 163
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 166
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 163
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 172
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 173
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 175
    nop

    .line 177
    nop

    .line 178
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 179
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 180
    nop

    .line 172
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 181
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 182
    const-string v14, ""

    .line 181
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 183
    .local v2, "$i$f$path-R_LF-3I":I
    nop

    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v4, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 186
    .local v5, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
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

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
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

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
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

    .line 186
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$2":I
    nop

    .line 187
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 185
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 188
    nop

    .line 189
    .end local v3    # "$i$f$PathData":I
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
    nop

    .line 193
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

    .line 183
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 199
    nop

    .line 200
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

    .line 201
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 202
    const/high16 v16, 0x3f800000    # 1.0f

    .line 201
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 203
    const/high16 v18, 0x3f800000    # 1.0f

    .line 201
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 204
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 201
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 210
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 211
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 213
    nop

    .line 215
    nop

    .line 216
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 217
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 218
    nop

    .line 210
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 219
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 220
    const-string v14, ""

    .line 219
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 222
    const/4 v3, 0x0

    .line 223
    .restart local v3    # "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 224
    .restart local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
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

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
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

    .line 224
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$3":I
    nop

    .line 225
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 223
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 226
    nop

    .line 227
    .end local v3    # "$i$f$PathData":I
    nop

    .line 228
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
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

    .line 221
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 237
    nop

    .line 238
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
    const v40, 0x3e99999a    # 0.3f

    .local v40, "fillAlpha$iv":F
    const v42, 0x3e99999a    # 0.3f

    .local v42, "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 239
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 242
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v37

    .line 239
    .local v37, "pathFillType$iv":I
    const/4 v1, 0x0

    .line 248
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 249
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v39, v2

    check-cast v39, Landroidx/compose/ui/graphics/Brush;

    .line 251
    nop

    .line 253
    nop

    .line 254
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v44

    .line 255
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v45

    .line 256
    nop

    .line 248
    const/16 v41, 0x0

    .local v39, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v41, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v35, v0

    .local v35, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v43, 0x3f800000    # 1.0f

    .local v43, "strokeLineWidth$iv$iv":F
    .local v44, "strokeLineCap$iv$iv":I
    const/high16 v46, 0x3f800000    # 1.0f

    .line 257
    .local v45, "strokeLineJoin$iv$iv":I
    .local v46, "strokeLineMiter$iv$iv":F
    nop

    .line 258
    const-string v38, ""

    .line 257
    .local v38, "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 259
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 260
    const/4 v3, 0x0

    .line 261
    .restart local v3    # "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 262
    .restart local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v4

    .local v11, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v6, 0x0

    .line 59
    .local v6, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$4":I
    const v7, 0x418ea3d7    # 17.83f

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v11, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v16, 0x40800000    # 4.0f

    const v17, 0x3f88f5c3    # 1.07f

    const v12, 0x3fa51eb8    # 1.29f

    const v13, 0x3f0a3d71    # 0.54f

    const v14, 0x402851ec    # 2.63f

    const v15, 0x3f63d70a    # 0.89f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v7, -0x3ff147ae    # -2.23f

    invoke-virtual {v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v7, -0x3fe9999a    # -2.35f

    const v8, -0x410f5c29    # -0.47f

    invoke-virtual {v11, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v7, 0x418ea3d7    # 17.83f

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v11, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    nop

    .line 262
    .end local v6    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$4":I
    .end local v11    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 263
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v36

    .line 261
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 264
    nop

    .line 265
    .end local v3    # "$i$f$PathData":I
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 270
    nop

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 259
    const/16 v50, 0x3800

    const/16 v51, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-static/range {v35 .. v51}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 275
    nop

    .line 276
    .end local v2    # "$i$f$path-R_LF-3I":I
    .end local v35    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v38    # "name$iv$iv":Ljava/lang/String;
    .end local v39    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v41    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v43    # "strokeLineWidth$iv$iv":F
    .end local v44    # "strokeLineCap$iv$iv":I
    .end local v45    # "strokeLineJoin$iv$iv":I
    .end local v46    # "strokeLineMiter$iv$iv":F
    nop

    .line 66
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v37    # "pathFillType$iv":I
    .end local v40    # "fillAlpha$iv":F
    .end local v42    # "strokeAlpha$iv":F
    const v16, 0x3e99999a    # 0.3f

    .restart local v16    # "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .line 277
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 280
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 277
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 286
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 287
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 289
    nop

    .line 291
    nop

    .line 292
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 293
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 294
    nop

    .line 286
    const/16 v17, 0x0

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 295
    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 296
    const-string v14, ""

    .line 295
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 297
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 298
    const/4 v3, 0x0

    .line 299
    .restart local v3    # "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 300
    .restart local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 67
    .local v7, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$5":I
    const v8, 0x40ea8f5c    # 7.33f

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v8, 0x40a33333    # 5.1f

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, 0x3f88f5c3    # 1.07f

    const/high16 v29, 0x40800000    # 4.0f

    const v24, 0x3e3851ec    # 0.18f

    const v25, 0x3faf5c29    # 1.37f

    const v26, 0x3f07ae14    # 0.53f

    const v27, 0x402ccccd    # 2.7f

    move-object/from16 v23, v6

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x40eb3333    # 7.35f

    const v9, 0x40f9999a    # 7.8f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v8, 0x40ea8f5c    # 7.33f

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    nop

    .line 300
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$5":I
    nop

    .line 301
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 299
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 302
    nop

    .line 303
    .end local v3    # "$i$f$PathData":I
    nop

    .line 304
    nop

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 297
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 313
    nop

    .line 314
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

    .line 74
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 315
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 316
    const/high16 v16, 0x3f800000    # 1.0f

    .line 315
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 317
    const/high16 v18, 0x3f800000    # 1.0f

    .line 315
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 318
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 315
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 324
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 325
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 327
    nop

    .line 329
    nop

    .line 330
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 331
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 332
    nop

    .line 324
    nop

    .line 333
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 334
    const-string v14, ""

    .line 333
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 335
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 336
    const/4 v3, 0x0

    .line 337
    .restart local v3    # "$i$f$PathData":I
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v5, 0x0

    .line 338
    .restart local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v6, v4

    .local v6, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 75
    .local v7, "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$6":I
    const v8, 0x41a1999a    # 20.2f

    const v9, 0x416deb85    # 14.87f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v8, -0x3f951eb8    # -3.67f

    const v9, -0x40c51eb8    # -0.73f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v28, -0x4099999a    # -0.9f

    const v29, 0x3e8a3d71    # 0.27f

    const/high16 v24, -0x41000000    # -0.5f

    const v25, -0x42333333    # -0.1f

    const v26, -0x40ab851f    # -0.83f

    const v27, 0x3e4ccccd    # 0.2f

    move-object/from16 v23, v6

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40200000    # 2.5f

    const v9, -0x3fdeb852    # -2.52f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v28, -0x3f400000    # -6.0f

    const/high16 v29, -0x3f400000    # -6.0f

    const/high16 v24, -0x3fe00000    # -2.5f

    const v25, -0x4048f5c3    # -1.43f

    const v26, -0x3f6dc28f    # -4.57f

    const/high16 v27, -0x3fa00000    # -3.5f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v28, 0x3e8a3d71    # 0.27f

    const v29, -0x4099999a    # -0.9f

    const v24, 0x3e6b851f    # 0.23f

    const v25, -0x418a3d71    # -0.24f

    const v26, 0x3ea8f5c3    # 0.33f

    const v27, -0x40ee147b    # -0.57f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x4112147b    # 9.13f

    const v9, 0x40733333    # 3.8f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v28, 0x41026666    # 8.15f

    const/high16 v29, 0x40400000    # 3.0f

    const v24, 0x4110a3d7    # 9.04f

    const v25, 0x4055c28f    # 3.34f

    const v26, 0x410a147b    # 8.63f

    const/high16 v27, 0x40400000    # 3.0f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v28, 0x40400000    # 3.0f

    const v29, 0x4080f5c3    # 4.03f

    const v24, 0x405c28f6    # 3.44f

    const/high16 v25, 0x40400000    # 3.0f

    const v26, 0x403e147b    # 2.97f

    const v27, 0x405e147b    # 3.47f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v28, 0x40adc28f    # 5.43f

    const/high16 v29, 0x41400000    # 12.0f

    const v24, 0x404ae148    # 3.17f

    const v25, 0x40dd70a4    # 6.92f

    const v26, 0x4081999a    # 4.05f

    const v27, 0x411a147b    # 9.63f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v28, 0x40d23d71    # 6.57f

    const v29, 0x40d23d71    # 6.57f

    const v24, 0x3fca3d71    # 1.58f

    const v25, 0x402eb852    # 2.73f

    const v26, 0x40766666    # 3.85f

    const v27, 0x409fae14    # 4.99f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v28, 0x40ff0a3d    # 7.97f

    const v29, 0x401b851f    # 2.43f

    const v24, 0x4017ae14    # 2.37f

    const v25, 0x3faf5c29    # 1.37f

    const v26, 0x40a28f5c    # 5.08f

    const v27, 0x4010a3d7    # 2.26f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v28, 0x3f83d70a    # 1.03f

    const/high16 v29, -0x40800000    # -1.0f

    const v24, 0x3f0ccccd    # 0.55f

    const v25, 0x3cf5c28f    # 0.03f

    const v26, 0x3f83d70a    # 1.03f

    const v27, -0x4123d70a    # -0.43f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, -0x3f7b3333    # -4.15f

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v28, 0x41a1999a    # 20.2f

    const v29, 0x416deb85    # 14.87f

    const/high16 v24, 0x41a80000    # 21.0f

    const v25, 0x4175eb85    # 15.37f

    const v26, 0x41a547ae    # 20.66f

    const v27, 0x416f5c29    # 14.96f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v8, 0x40a33333    # 5.1f

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v8, 0x400eb852    # 2.23f

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v8, 0x40eb3333    # 7.35f

    const v9, 0x40f9999a    # 7.8f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v8, 0x40c570a4    # 6.17f

    const/high16 v9, 0x41100000    # 9.0f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v28, 0x40a33333    # 5.1f

    const/high16 v29, 0x40a00000    # 5.0f

    const v24, 0x40b428f6    # 5.63f

    const v25, 0x40f66666    # 7.7f

    const v26, 0x40a8a3d7    # 5.27f

    const v27, 0x40cbd70a    # 6.37f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v8, 0x41973333    # 18.9f

    const/high16 v9, 0x41980000    # 19.0f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v28, -0x3f800000    # -4.0f

    const v29, -0x40770a3d    # -1.07f

    const v24, -0x4050a3d7    # -1.37f

    const v25, -0x41c7ae14    # -0.18f

    const v26, -0x3fd33333    # -2.7f

    const v27, -0x40f851ec    # -0.53f

    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .end local v23    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x3fd33333    # 1.65f

    const v9, -0x402f5c29    # -1.63f

    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v8, 0x41855c29    # 16.67f

    const/high16 v9, 0x41980000    # 19.0f

    invoke-virtual {v6, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v8, 0x41973333    # 18.9f

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    nop

    .line 338
    .end local v6    # "$this$_get_WifiCalling3__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-materialPath-YwgOQQI$default-WifiCalling3Kt$WifiCalling3$1$6":I
    nop

    .line 339
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 337
    .end local v4    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v5    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 340
    nop

    .line 341
    .end local v3    # "$i$f$PathData":I
    nop

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 349
    nop

    .line 350
    nop

    .line 335
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v3

    .line 351
    nop

    .line 352
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

    .line 74
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 123
    .end local v32    # "$this$_get_WifiCalling3__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v34    # "$i$a$-materialIcon$default-WifiCalling3Kt$WifiCalling3$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    .end local v33    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 107
    sget-object v0, Landroidx/compose/material/icons/twotone/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
