.class public final Landroidx/compose/material/icons/twotone/FestivalKt;
.super Ljava/lang/Object;
.source "Festival.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFestival.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Festival.kt\nandroidx/compose/material/icons/twotone/FestivalKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,147:1\n212#2,12:148\n233#2,18:161\n253#2:198\n233#2,18:199\n253#2:236\n233#2,18:237\n253#2:274\n233#2,18:275\n253#2:312\n233#2,18:313\n253#2:350\n233#2,18:351\n253#2:388\n233#2,18:389\n253#2:426\n233#2,18:427\n253#2:464\n174#3:160\n705#4,2:179\n717#4,2:181\n719#4,11:187\n705#4,2:217\n717#4,2:219\n719#4,11:225\n705#4,2:255\n717#4,2:257\n719#4,11:263\n705#4,2:293\n717#4,2:295\n719#4,11:301\n705#4,2:331\n717#4,2:333\n719#4,11:339\n705#4,2:369\n717#4,2:371\n719#4,11:377\n705#4,2:407\n717#4,2:409\n719#4,11:415\n705#4,2:445\n717#4,2:447\n719#4,11:453\n72#5,4:183\n72#5,4:221\n72#5,4:259\n72#5,4:297\n72#5,4:335\n72#5,4:373\n72#5,4:411\n72#5,4:449\n*S KotlinDebug\n*F\n+ 1 Festival.kt\nandroidx/compose/material/icons/twotone/FestivalKt\n*L\n29#1:148,12\n30#1:161,18\n30#1:198\n39#1:199,18\n39#1:236\n46#1:237,18\n46#1:274\n53#1:275,18\n53#1:312\n60#1:313,18\n60#1:350\n67#1:351,18\n67#1:388\n74#1:389,18\n74#1:426\n83#1:427,18\n83#1:464\n29#1:160\n30#1:179,2\n30#1:181,2\n30#1:187,11\n39#1:217,2\n39#1:219,2\n39#1:225,11\n46#1:255,2\n46#1:257,2\n46#1:263,11\n53#1:293,2\n53#1:295,2\n53#1:301,11\n60#1:331,2\n60#1:333,2\n60#1:339,11\n67#1:369,2\n67#1:371,2\n67#1:377,11\n74#1:407,2\n74#1:409,2\n74#1:415,11\n83#1:445,2\n83#1:447,2\n83#1:453,11\n30#1:183,4\n39#1:221,4\n46#1:259,4\n53#1:297,4\n60#1:335,4\n67#1:373,4\n74#1:411,4\n83#1:449,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_festival",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Festival",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getFestival",
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
.field private static _festival:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFestival(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 50
    .param p0, "$this$Festival"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/FestivalKt;->_festival:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/FestivalKt;->_festival:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "TwoTone.Festival"

    .line 148
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 150
    const/4 v10, 0x0

    .line 148
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 159
    .local v0, "$i$f$materialIcon":I
    nop

    .line 152
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 153
    nop

    .line 154
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 160
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 155
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 156
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 157
    nop

    .line 152
    nop

    .line 158
    nop

    .line 152
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    nop

    .local v1, "$this$_get_Festival__u24lambda_u248":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-FestivalKt$Festival$1":I
    const v16, 0x3e99999a    # 0.3f

    .local v16, "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v4, v1

    .line 161
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 164
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 161
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 170
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 171
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 173
    nop

    .line 175
    nop

    .line 176
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 177
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 178
    nop

    .line 170
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 179
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 180
    const-string v14, ""

    .line 179
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 181
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 182
    const/4 v7, 0x0

    .line 183
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 184
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x40a7ae14    # 5.24f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_Festival__u24lambda_u248":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_Festival__u24lambda_u248":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, 0x4166b852    # 14.42f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x40951eb8    # 4.66f

    const/high16 v29, 0x41a00000    # 20.0f

    const v24, 0x40a66666    # 5.2f

    const v25, 0x418170a4    # 16.18f

    const v26, 0x40a1eb85    # 5.06f

    const v27, 0x41911eb8    # 18.14f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x402ae148    # 2.67f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x3f051eb8    # 0.52f

    const v29, -0x3f423d71    # -5.93f

    const v24, 0x3e8a3d71    # 0.27f

    const v25, -0x4007ae14    # -1.94f

    const v26, 0x3edc28f6    # 0.43f

    const v27, -0x3f7dc28f    # -4.07f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v28, 0x40e00000    # 7.0f

    const v29, 0x41570a3d    # 13.44f

    const v24, 0x40f147ae    # 7.54f

    const v25, 0x415e6666    # 13.9f

    const/high16 v26, 0x40e80000    # 7.25f

    const v27, 0x415b3333    # 13.7f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x40a7ae14    # 5.24f

    const v29, 0x4166b852    # 14.42f

    const v24, 0x40d0f5c3    # 6.53f

    const v25, 0x415ee148    # 13.93f

    const v26, 0x40bd70a4    # 5.92f

    const v27, 0x416451ec    # 14.27f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    nop

    .line 184
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$1":I
    nop

    .line 185
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 183
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 186
    nop

    .line 187
    .end local v7    # "$i$f$PathData":I
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

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 181
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 197
    nop

    .line 198
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

    .line 39
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

    .line 199
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 202
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v35

    .line 199
    .local v35, "pathFillType$iv":I
    const/4 v1, 0x0

    .line 208
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 209
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/graphics/Brush;

    .line 211
    nop

    .line 213
    nop

    .line 214
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v42

    .line 215
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v43

    .line 216
    nop

    .line 208
    const/16 v39, 0x0

    .local v37, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v39, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v33, v0

    .local v33, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v41, 0x3f800000    # 1.0f

    .local v41, "strokeLineWidth$iv$iv":F
    .local v42, "strokeLineCap$iv$iv":I
    const/high16 v44, 0x3f800000    # 1.0f

    .line 217
    .local v43, "strokeLineJoin$iv$iv":I
    .local v44, "strokeLineMiter$iv$iv":F
    nop

    .line 218
    const-string v36, ""

    .line 217
    .local v36, "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 219
    .local v4, "$i$f$path-R_LF-3I":I
    nop

    .line 220
    const/4 v5, 0x0

    .line 221
    .local v5, "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v6, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 222
    .local v7, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v6

    .local v11, "$this$_get_Festival__u24lambda_u248_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 40
    .local v8, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$2":I
    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v11, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v16, 0x3fc00000    # 1.5f

    const/high16 v17, 0x3fc00000    # 1.5f

    const/4 v12, 0x0

    const v13, 0x3f547ae1    # 0.83f

    const v14, 0x3f2b851f    # 0.67f

    const/high16 v15, 0x3fc00000    # 1.5f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v9, 0x413d47ae    # 11.83f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v11, v12, v9, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    nop

    .line 222
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$2":I
    .end local v11    # "$this$_get_Festival__u24lambda_u248_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 223
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v34

    .line 221
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 224
    nop

    .line 225
    .end local v5    # "$i$f$PathData":I
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

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 219
    const/16 v48, 0x3800

    const/16 v49, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v33 .. v49}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 235
    nop

    .line 236
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

    .line 46
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v35    # "pathFillType$iv":I
    .end local v38    # "fillAlpha$iv":F
    .end local v40    # "strokeAlpha$iv":F
    const v16, 0x3e99999a    # 0.3f

    .restart local v16    # "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .line 237
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 240
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 237
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 246
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 247
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 249
    nop

    .line 251
    nop

    .line 252
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 253
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 254
    nop

    .line 246
    const/16 v17, 0x0

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 255
    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 256
    const-string v14, ""

    .line 255
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 257
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 258
    const/4 v5, 0x0

    .line 259
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 260
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_Festival__u24lambda_u248_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 47
    .local v9, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$3":I
    const/high16 v12, 0x40c00000    # 6.0f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v28, 0x3fc00000    # 1.5f

    const/high16 v29, 0x3fc00000    # 1.5f

    const v25, 0x3f547ae1    # 0.83f

    const v26, 0x3f2b851f    # 0.67f

    const/high16 v27, 0x3fc00000    # 1.5f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_Festival__u24lambda_u248_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Festival__u24lambda_u248_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Festival__u24lambda_u248_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40c00000    # 6.0f

    const v12, 0x413d47ae    # 11.83f

    move/from16 v28, v1

    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .local v28, "$i$f$materialPath-YwgOQQI":I
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v8, v12, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    nop

    .line 260
    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$3":I
    nop

    .line 261
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 259
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 262
    nop

    .line 263
    .end local v5    # "$i$f$PathData":I
    nop

    .line 264
    nop

    .line 265
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

    .line 257
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 273
    nop

    .line 274
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

    .line 53
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v28    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v38, 0x3e99999a    # 0.3f

    .restart local v38    # "fillAlpha$iv":F
    const v40, 0x3e99999a    # 0.3f

    .restart local v40    # "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 275
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 278
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v35

    .line 275
    .restart local v35    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 284
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 285
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/graphics/Brush;

    .line 287
    nop

    .line 289
    nop

    .line 290
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v42

    .line 291
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v43

    .line 292
    nop

    .line 284
    nop

    .restart local v37    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v39    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v33, v0

    .line 293
    .restart local v33    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v41    # "strokeLineWidth$iv$iv":F
    .restart local v42    # "strokeLineCap$iv$iv":I
    .restart local v43    # "strokeLineJoin$iv$iv":I
    .restart local v44    # "strokeLineMiter$iv$iv":F
    nop

    .line 294
    const-string v36, ""

    .line 293
    .restart local v36    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 295
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 296
    const/4 v5, 0x0

    .line 297
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 298
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v6

    .local v11, "$this$_get_Festival__u24lambda_u248_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 54
    .local v8, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$4":I
    const v9, 0x4096b852    # 4.71f

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v11, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v16, 0x40bc7ae1    # 5.89f

    const/high16 v17, 0x41100000    # 9.0f

    const v12, 0x412ab852    # 10.67f

    const v13, 0x40bb3333    # 5.85f

    const v14, 0x410828f6    # 8.51f

    const v15, 0x40f1999a    # 7.55f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v9, 0x4143ae14    # 12.23f

    invoke-virtual {v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v16, 0x41400000    # 12.0f

    const v17, 0x4096b852    # 4.71f

    const v12, 0x4177d70a    # 15.49f

    const v13, 0x40f1999a    # 7.55f

    const v14, 0x415547ae    # 13.33f

    const v15, 0x40bb3333    # 5.85f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    nop

    .line 298
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$4":I
    .end local v11    # "$this$_get_Festival__u24lambda_u248_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 299
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v34

    .line 297
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 300
    nop

    .line 301
    .end local v5    # "$i$f$PathData":I
    nop

    .line 302
    nop

    .line 303
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

    .line 295
    invoke-static/range {v33 .. v49}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 311
    nop

    .line 312
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
    const v16, 0x3e99999a    # 0.3f

    .restart local v16    # "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .line 313
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 316
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 313
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 322
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 323
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 325
    nop

    .line 327
    nop

    .line 328
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 329
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 330
    nop

    .line 322
    const/16 v17, 0x0

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 331
    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 332
    const-string v14, ""

    .line 331
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 333
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 334
    const/4 v5, 0x0

    .line 335
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 336
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 61
    .local v9, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$5":I
    const/high16 v12, 0x419c0000    # 19.5f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41480000    # 12.5f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v28, 0x3fc00000    # 1.5f

    const/high16 v29, -0x40400000    # -1.5f

    const v24, 0x3f547ae1    # 0.83f

    const/high16 v26, 0x3fc00000    # 1.5f

    const v27, -0x40d47ae1    # -0.67f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v28, 0x419c0000    # 19.5f

    const/high16 v29, 0x41480000    # 12.5f

    const/high16 v24, 0x41900000    # 18.0f

    const v25, 0x413d47ae    # 11.83f

    const v26, 0x41955c29    # 18.67f

    const/high16 v27, 0x41480000    # 12.5f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    nop

    .line 336
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$5":I
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 337
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 335
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 338
    nop

    .line 339
    .end local v5    # "$i$f$PathData":I
    nop

    .line 340
    nop

    .line 341
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

    .line 333
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 349
    nop

    .line 350
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

    .line 67
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v38, 0x3e99999a    # 0.3f

    .restart local v38    # "fillAlpha$iv":F
    const v40, 0x3e99999a    # 0.3f

    .restart local v40    # "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 351
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 354
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v35

    .line 351
    .restart local v35    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 360
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 361
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/graphics/Brush;

    .line 363
    nop

    .line 365
    nop

    .line 366
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v42

    .line 367
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v43

    .line 368
    nop

    .line 360
    nop

    .restart local v37    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v39    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v33, v0

    .line 369
    .restart local v33    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v41    # "strokeLineWidth$iv$iv":F
    .restart local v42    # "strokeLineCap$iv$iv":I
    .restart local v43    # "strokeLineJoin$iv$iv":I
    .restart local v44    # "strokeLineMiter$iv$iv":F
    nop

    .line 370
    const-string v36, ""

    .line 369
    .restart local v36    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 371
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 372
    const/4 v5, 0x0

    .line 373
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 374
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v6

    .local v11, "$this$_get_Festival__u24lambda_u248_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 68
    .local v8, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$6":I
    const/high16 v9, 0x41680000    # 14.5f

    const/high16 v12, 0x41480000    # 12.5f

    invoke-virtual {v11, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v16, 0x3fc00000    # 1.5f

    const/high16 v17, -0x40400000    # -1.5f

    const v12, 0x3f547ae1    # 0.83f

    const/4 v13, 0x0

    const/high16 v14, 0x3fc00000    # 1.5f

    const v15, -0x40d47ae1    # -0.67f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v9, -0x3fc00000    # -3.0f

    invoke-virtual {v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v16, 0x41680000    # 14.5f

    const/high16 v17, 0x41480000    # 12.5f

    const/high16 v12, 0x41500000    # 13.0f

    const v13, 0x413d47ae    # 11.83f

    const v14, 0x415ab852    # 13.67f

    const/high16 v15, 0x41480000    # 12.5f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    nop

    .line 374
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$6":I
    .end local v11    # "$this$_get_Festival__u24lambda_u248_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 375
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v34

    .line 373
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 376
    nop

    .line 377
    .end local v5    # "$i$f$PathData":I
    nop

    .line 378
    nop

    .line 379
    nop

    .line 380
    nop

    .line 381
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    nop

    .line 371
    invoke-static/range {v33 .. v49}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 387
    nop

    .line 388
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

    .line 74
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v35    # "pathFillType$iv":I
    .end local v38    # "fillAlpha$iv":F
    .end local v40    # "strokeAlpha$iv":F
    const v16, 0x3e99999a    # 0.3f

    .restart local v16    # "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .line 389
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 392
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 389
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 398
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 399
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 401
    nop

    .line 403
    nop

    .line 404
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 405
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 406
    nop

    .line 398
    const/16 v17, 0x0

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 407
    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 408
    const-string v14, ""

    .line 407
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 409
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 410
    const/4 v5, 0x0

    .line 411
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 412
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 75
    .local v9, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$7":I
    const/high16 v12, 0x41880000    # 17.0f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x41570a3d    # 13.44f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v28, -0x40a66666    # -0.85f

    const v29, 0x3f1eb852    # 0.62f

    const/high16 v24, -0x41800000    # -0.25f

    const/high16 v25, 0x3e800000    # 0.25f

    const v26, -0x40f5c28f    # -0.54f

    const v27, 0x3ee66666    # 0.45f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v28, 0x3f051eb8    # 0.52f

    const v29, 0x40bdc28f    # 5.93f

    const v24, 0x3dcccccd    # 0.1f

    const v25, 0x3fef5c29    # 1.87f

    const v26, 0x3e851eb8    # 0.26f

    const/high16 v27, 0x40800000    # 4.0f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x402ae148    # 2.67f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v28, -0x40ee147b    # -0.57f

    const v29, -0x3f4d70a4    # -5.58f

    const v24, -0x413851ec    # -0.39f

    const v25, -0x4011eb85    # -1.86f

    const v26, -0x40f5c28f    # -0.54f

    const v27, -0x3f8b851f    # -3.82f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/high16 v28, 0x41880000    # 17.0f

    const v29, 0x41570a3d    # 13.44f

    const v24, 0x4190a3d7    # 18.08f

    const v25, 0x416451ec    # 14.27f

    const v26, 0x418bc28f    # 17.47f

    const v27, 0x415ee148    # 13.93f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    nop

    .line 412
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$7":I
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 413
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 411
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 414
    nop

    .line 415
    .end local v5    # "$i$f$PathData":I
    nop

    .line 416
    nop

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 420
    nop

    .line 421
    nop

    .line 422
    nop

    .line 423
    nop

    .line 424
    nop

    .line 409
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 425
    nop

    .line 426
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

    .line 83
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 427
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 428
    const/high16 v16, 0x3f800000    # 1.0f

    .line 427
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 429
    const/high16 v18, 0x3f800000    # 1.0f

    .line 427
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 430
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 427
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 436
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 437
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 439
    nop

    .line 441
    nop

    .line 442
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 443
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 444
    nop

    .line 436
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 445
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 446
    const-string v14, ""

    .line 445
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 447
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 448
    const/4 v5, 0x0

    .line 449
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 450
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 84
    .local v9, "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$8":I
    const/high16 v12, 0x40000000    # 2.0f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v28, -0x3ed00000    # -11.0f

    const/high16 v29, 0x40e00000    # 7.0f

    const/high16 v26, -0x3f600000    # -5.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v28, 0x400f5c29    # 2.24f

    const v29, 0x4050a3d7    # 3.26f

    const v25, 0x3fbeb852    # 1.49f

    const v26, 0x3f6e147b    # 0.93f

    const/high16 v27, 0x40300000    # 2.75f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, 0x41b00000    # 22.0f

    const v24, 0x404ccccd    # 3.2f

    const v25, 0x4186147b    # 16.76f

    const v26, 0x403ae148    # 2.92f

    const v27, 0x419d851f    # 19.69f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v28, -0x406147ae    # -1.24f

    const v29, -0x3f0851ec    # -7.74f

    const v24, -0x40947ae1    # -0.92f

    const v25, -0x3fec28f6    # -2.31f

    const v26, -0x40666666    # -1.2f

    const v27, -0x3f5851ec    # -5.24f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/high16 v28, 0x41b80000    # 23.0f

    const/high16 v29, 0x41300000    # 11.0f

    const v24, 0x41b08f5c    # 22.07f

    const/high16 v25, 0x415c0000    # 13.75f

    const/high16 v26, 0x41b80000    # 23.0f

    const v27, 0x4147d70a    # 12.49f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x41100000    # 9.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x40000000    # 2.0f

    const/high16 v24, 0x41880000    # 17.0f

    const/high16 v25, 0x40e00000    # 7.0f

    const/high16 v26, 0x41400000    # 12.0f

    const/high16 v27, 0x40000000    # 2.0f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v8, 0x4096b852    # 4.71f

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v0, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v28, 0x40c3851f    # 6.11f

    const v29, 0x408947ae    # 4.29f

    const v24, 0x3faa3d71    # 1.33f

    const v25, 0x3f91eb85    # 1.14f

    const v26, 0x405f5c29    # 3.49f

    const v27, 0x4035c28f    # 2.84f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x40bc7ae1    # 5.89f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const/high16 v28, 0x41400000    # 12.0f

    const v29, 0x4096b852    # 4.71f

    const v24, 0x410828f6    # 8.51f

    const v25, 0x40f1999a    # 7.55f

    const v26, 0x412ab852    # 10.67f

    const v27, 0x40bb3333    # 5.85f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v28, -0x40400000    # -1.5f

    const/high16 v29, 0x3fc00000    # 1.5f

    const/16 v24, 0x0

    const v25, 0x3f547ae1    # 0.83f

    const v26, -0x40d47ae1    # -0.67f

    const/high16 v27, 0x3fc00000    # 1.5f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x413d47ae    # 11.83f

    const/high16 v12, 0x40400000    # 3.0f

    move/from16 v33, v1

    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .local v33, "$i$f$materialPath-YwgOQQI":I
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v12, v8, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v1, 0x40ea8f5c    # 7.33f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v1, 0x40951eb8    # 4.66f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v28, 0x3f11eb85    # 0.57f

    const v29, -0x3f4d70a4    # -5.58f

    const v24, 0x3ec7ae14    # 0.39f

    const v25, -0x4011eb85    # -1.86f

    const v26, 0x3f0a3d71    # 0.54f

    const v27, -0x3f8b851f    # -3.82f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v28, 0x3fe147ae    # 1.76f

    const v29, -0x40851eb8    # -0.98f

    const v24, 0x3f2e147b    # 0.68f

    const v25, -0x41e66666    # -0.15f

    const v26, 0x3fa51eb8    # 1.29f

    const v27, -0x41051eb8    # -0.49f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v28, 0x3f59999a    # 0.85f

    const v29, 0x3f1eb852    # 0.62f

    const/high16 v24, 0x3e800000    # 0.25f

    const/high16 v25, 0x3e800000    # 0.25f

    const v26, 0x3f0a3d71    # 0.54f

    const v27, 0x3ee66666    # 0.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v28, 0x40ea8f5c    # 7.33f

    const/high16 v29, 0x41a00000    # 20.0f

    const v24, 0x40f851ec    # 7.76f

    const v25, 0x417ee148    # 15.93f

    const v26, 0x40f33333    # 7.6f

    const v27, 0x41907ae1    # 18.06f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const/high16 v28, -0x40400000    # -1.5f

    const/high16 v29, 0x3fc00000    # 1.5f

    const/16 v24, 0x0

    const v25, 0x3f547ae1    # 0.83f

    const v26, -0x40d47ae1    # -0.67f

    const/high16 v27, 0x3fc00000    # 1.5f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x413d47ae    # 11.83f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v0, v8, v1, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v1, 0x4115999a    # 9.35f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v28, 0x3ef5c28f    # 0.48f

    const v29, -0x3f4f0a3d    # -5.53f

    const v24, 0x3e75c28f    # 0.24f

    const v25, -0x4015c28f    # -1.83f

    const v26, 0x3ec7ae14    # 0.39f

    const v27, -0x3f8e147b    # -3.78f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v28, 0x400ae148    # 2.17f

    const v29, -0x407d70a4    # -1.02f

    const v24, 0x3f570a3d    # 0.84f

    const v25, -0x425c28f6    # -0.08f

    const v26, 0x3fce147b    # 1.61f

    const v27, -0x4119999a    # -0.45f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v29, 0x3f828f5c    # 1.02f

    const v24, 0x3f0f5c29    # 0.56f

    const v25, 0x3f11eb85    # 0.57f

    const v26, 0x3fa8f5c3    # 1.32f

    const v27, 0x3f70a3d7    # 0.94f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v28, 0x3ef5c28f    # 0.48f

    const v29, 0x40b0f5c3    # 5.53f

    const v24, 0x3dcccccd    # 0.1f

    const/high16 v25, 0x3fe00000    # 1.75f

    const v26, 0x3e75c28f    # 0.24f

    const v27, 0x406ccccd    # 3.7f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const/high16 v1, 0x41680000    # 14.5f

    const/high16 v8, 0x41480000    # 12.5f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const/high16 v28, -0x40400000    # -1.5f

    const/high16 v29, -0x40400000    # -1.5f

    const v24, -0x40ab851f    # -0.83f

    const/16 v25, 0x0

    const/high16 v26, -0x40400000    # -1.5f

    const v27, -0x40d47ae1    # -0.67f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const/high16 v28, 0x41680000    # 14.5f

    const/high16 v29, 0x41480000    # 12.5f

    const/high16 v24, 0x41800000    # 16.0f

    const v25, 0x413d47ae    # 11.83f

    const v26, 0x417547ae    # 15.33f

    const/high16 v27, 0x41480000    # 12.5f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const v1, 0x41855c29    # 16.67f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const v28, -0x40fae148    # -0.52f

    const v29, -0x3f423d71    # -5.93f

    const v24, -0x4175c28f    # -0.27f

    const v25, -0x4007ae14    # -1.94f

    const v26, -0x4123d70a    # -0.43f

    const v27, -0x3f7dc28f    # -4.07f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const v28, 0x3f59999a    # 0.85f

    const v29, -0x40e147ae    # -0.62f

    const v24, 0x3e9eb852    # 0.31f

    const v25, -0x41d1eb85    # -0.17f

    const v26, 0x3f1c28f6    # 0.61f

    const v27, -0x41428f5c    # -0.37f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const v28, 0x3fe147ae    # 1.76f

    const v29, 0x3f7ae148    # 0.98f

    const v24, 0x3ef0a3d7    # 0.47f

    const v25, 0x3ef5c28f    # 0.48f

    const v26, 0x3f8a3d71    # 1.08f

    const v27, 0x3f547ae1    # 0.83f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v28, 0x3f11eb85    # 0.57f

    const v29, 0x40b28f5c    # 5.58f

    const v24, 0x3cf5c28f    # 0.03f

    const v25, 0x3fe147ae    # 1.76f

    const v26, 0x3e3851ec    # 0.18f

    const v27, 0x406e147b    # 3.72f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const/high16 v1, 0x419c0000    # 19.5f

    const/high16 v8, 0x41480000    # 12.5f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    const/high16 v28, -0x40400000    # -1.5f

    const/high16 v29, -0x40400000    # -1.5f

    const v24, -0x40ab851f    # -0.83f

    const/16 v25, 0x0

    const/high16 v26, -0x40400000    # -1.5f

    const v27, -0x40d47ae1    # -0.67f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    const/high16 v28, 0x419c0000    # 19.5f

    const/high16 v29, 0x41480000    # 12.5f

    const/high16 v24, 0x41a80000    # 21.0f

    const v25, 0x413d47ae    # 11.83f

    const v26, 0x41a2a3d7    # 20.33f

    const/high16 v27, 0x41480000    # 12.5f

    .end local v0    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    nop

    .line 450
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-FestivalKt$Festival$1$8":I
    .end local v23    # "$this$_get_Festival__u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 451
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 449
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 452
    nop

    .line 453
    .end local v5    # "$i$f$PathData":I
    nop

    .line 454
    nop

    .line 455
    nop

    .line 456
    nop

    .line 457
    nop

    .line 458
    nop

    .line 459
    nop

    .line 460
    nop

    .line 461
    nop

    .line 462
    nop

    .line 447
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 463
    nop

    .line 464
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

    .line 83
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v33    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 159
    .end local v3    # "$i$a$-materialIcon$default-FestivalKt$Festival$1":I
    .end local v32    # "$this$_get_Festival__u24lambda_u248":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/twotone/FestivalKt;->_festival:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 143
    sget-object v0, Landroidx/compose/material/icons/twotone/FestivalKt;->_festival:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
