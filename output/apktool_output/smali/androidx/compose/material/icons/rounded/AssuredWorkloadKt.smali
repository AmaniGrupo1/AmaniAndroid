.class public final Landroidx/compose/material/icons/rounded/AssuredWorkloadKt;
.super Ljava/lang/Object;
.source "AssuredWorkload.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssuredWorkload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssuredWorkload.kt\nandroidx/compose/material/icons/rounded/AssuredWorkloadKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,119:1\n212#2,12:120\n233#2,18:133\n253#2:170\n233#2,18:171\n253#2:208\n233#2,18:209\n253#2:246\n233#2,18:247\n253#2:284\n233#2,18:285\n253#2:322\n233#2,18:323\n253#2:360\n174#3:132\n705#4,2:151\n717#4,2:153\n719#4,11:159\n705#4,2:189\n717#4,2:191\n719#4,11:197\n705#4,2:227\n717#4,2:229\n719#4,11:235\n705#4,2:265\n717#4,2:267\n719#4,11:273\n705#4,2:303\n717#4,2:305\n719#4,11:311\n705#4,2:341\n717#4,2:343\n719#4,11:349\n72#5,4:155\n72#5,4:193\n72#5,4:231\n72#5,4:269\n72#5,4:307\n72#5,4:345\n*S KotlinDebug\n*F\n+ 1 AssuredWorkload.kt\nandroidx/compose/material/icons/rounded/AssuredWorkloadKt\n*L\n29#1:120,12\n30#1:133,18\n30#1:170\n42#1:171,18\n42#1:208\n54#1:209,18\n54#1:246\n68#1:247,18\n68#1:284\n78#1:285,18\n78#1:322\n88#1:323,18\n88#1:360\n29#1:132\n30#1:151,2\n30#1:153,2\n30#1:159,11\n42#1:189,2\n42#1:191,2\n42#1:197,11\n54#1:227,2\n54#1:229,2\n54#1:235,11\n68#1:265,2\n68#1:267,2\n68#1:273,11\n78#1:303,2\n78#1:305,2\n78#1:311,11\n88#1:341,2\n88#1:343,2\n88#1:349,11\n30#1:155,4\n42#1:193,4\n54#1:231,4\n68#1:269,4\n78#1:307,4\n88#1:345,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_assuredWorkload",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AssuredWorkload",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getAssuredWorkload",
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
.field private static _assuredWorkload:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAssuredWorkload(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 33
    .param p0, "$this$AssuredWorkload"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/AssuredWorkloadKt;->_assuredWorkload:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/AssuredWorkloadKt;->_assuredWorkload:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Rounded.AssuredWorkload"

    .line 120
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 122
    const/4 v10, 0x0

    .line 120
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$materialIcon":I
    nop

    .line 124
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 125
    nop

    .line 126
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 127
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 132
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 128
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 129
    nop

    .line 124
    nop

    .line 130
    nop

    .line 124
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    nop

    .local v1, "$this$_get_AssuredWorkload__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-AssuredWorkloadKt$AssuredWorkload$1":I
    move-object v4, v1

    .line 133
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 134
    const/high16 v16, 0x3f800000    # 1.0f

    .line 133
    .local v16, "fillAlpha$iv":F
    nop

    .line 135
    const/high16 v18, 0x3f800000    # 1.0f

    .line 133
    .local v18, "strokeAlpha$iv":F
    nop

    .line 136
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 133
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 143
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 145
    nop

    .line 147
    nop

    .line 148
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 149
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 150
    nop

    .line 142
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 151
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 152
    const-string v14, ""

    .line 151
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 153
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 154
    const/4 v7, 0x0

    .line 155
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 156
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const/high16 v0, 0x40c00000    # 6.0f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_AssuredWorkload__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_AssuredWorkload__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, -0x40800000    # -1.0f

    const v24, 0x3f0ccccd    # 0.55f

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const v27, -0x4119999a    # -0.45f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, -0x3f600000    # -5.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v28, -0x40800000    # -1.0f

    const/16 v24, 0x0

    const v25, -0x40f33333    # -0.55f

    const v26, -0x4119999a    # -0.45f

    const/high16 v27, -0x40800000    # -1.0f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v29, 0x3f800000    # 1.0f

    const v24, -0x40f33333    # -0.55f

    const/16 v25, 0x0

    const/high16 v26, -0x40800000    # -1.0f

    const v27, 0x3ee66666    # 0.45f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v28, 0x40c00000    # 6.0f

    const/high16 v29, 0x41880000    # 17.0f

    const/high16 v24, 0x40a00000    # 5.0f

    const v25, 0x41846666    # 16.55f

    const v26, 0x40ae6666    # 5.45f

    const/high16 v27, 0x41880000    # 17.0f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    nop

    .line 156
    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$1":I
    nop

    .line 157
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 155
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 158
    nop

    .line 159
    .end local v7    # "$i$f$PathData":I
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

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 153
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 169
    nop

    .line 170
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

    .line 42
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    move-object/from16 v0, v32

    .line 171
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 172
    const/high16 v16, 0x3f800000    # 1.0f

    .line 171
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 173
    const/high16 v18, 0x3f800000    # 1.0f

    .line 171
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 174
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 171
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 180
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 181
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 183
    nop

    .line 185
    nop

    .line 186
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 187
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 188
    nop

    .line 180
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 189
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 190
    const-string v14, ""

    .line 189
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 191
    .local v4, "$i$f$path-R_LF-3I":I
    nop

    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v6, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 194
    .local v7, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 43
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$2":I
    const/high16 v12, 0x41400000    # 12.0f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, -0x40800000    # -1.0f

    const v24, 0x3f0ccccd    # 0.55f

    const/high16 v26, 0x3f800000    # 1.0f

    const v27, -0x4119999a    # -0.45f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, -0x3f600000    # -5.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v28, -0x40800000    # -1.0f

    const/16 v24, 0x0

    const v25, -0x40f33333    # -0.55f

    const v26, -0x4119999a    # -0.45f

    const/high16 v27, -0x40800000    # -1.0f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v29, 0x3f800000    # 1.0f

    const v24, -0x40f33333    # -0.55f

    const/16 v25, 0x0

    const/high16 v26, -0x40800000    # -1.0f

    const v27, 0x3ee66666    # 0.45f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x41880000    # 17.0f

    const/high16 v24, 0x41300000    # 11.0f

    const v25, 0x41846666    # 16.55f

    const v26, 0x41373333    # 11.45f

    const/high16 v27, 0x41880000    # 17.0f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    nop

    .line 194
    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$2":I
    nop

    .line 195
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 193
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 196
    nop

    .line 197
    .end local v5    # "$i$f$PathData":I
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

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 191
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 207
    nop

    .line 208
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

    .line 54
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 209
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 210
    const/high16 v16, 0x3f800000    # 1.0f

    .line 209
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 211
    const/high16 v18, 0x3f800000    # 1.0f

    .line 209
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 212
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 209
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 218
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 219
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 221
    nop

    .line 223
    nop

    .line 224
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 225
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 226
    nop

    .line 218
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 227
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 228
    const-string v14, ""

    .line 227
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 229
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 230
    const/4 v5, 0x0

    .line 231
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 232
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 55
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$3":I
    const v12, 0x41aa8f5c    # 21.32f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x40b51eb8    # 5.66f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v0, -0x3ef947ae    # -8.42f

    const v12, -0x3f7947ae    # -4.21f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, -0x401ae148    # -1.79f

    const/16 v29, 0x0

    const v24, -0x40f0a3d7    # -0.56f

    const v25, -0x4170a3d7    # -0.28f

    const v26, -0x40628f5c    # -1.23f

    const v27, -0x4170a3d7    # -0.28f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x402b851f    # 2.68f

    const v12, 0x40b51eb8    # 5.66f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v28, 0x40000000    # 2.0f

    const v29, 0x40d851ec    # 6.76f

    const v24, 0x4010a3d7    # 2.26f

    const v25, 0x40bbd70a    # 5.87f

    const/high16 v26, 0x40000000    # 2.0f

    const v27, 0x40c9999a    # 6.3f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x404f5c29    # 3.24f

    const/high16 v29, 0x41000000    # 8.0f

    const/high16 v24, 0x40000000    # 2.0f

    const v25, 0x40ee6666    # 7.45f

    const v26, 0x40233333    # 2.55f

    const/high16 v27, 0x41000000    # 8.0f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x418c3d71    # 17.53f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v28, 0x41b00000    # 22.0f

    const v29, 0x40d851ec    # 6.76f

    const v24, 0x41ab999a    # 21.45f

    const/high16 v25, 0x41000000    # 8.0f

    const/high16 v26, 0x41b00000    # 22.0f

    const v27, 0x40ee6666    # 7.45f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v28, 0x41aa8f5c    # 21.32f

    const v29, 0x40b51eb8    # 5.66f

    const/high16 v24, 0x41b00000    # 22.0f

    const v25, 0x40c9999a    # 6.3f

    const v26, 0x41adeb85    # 21.74f

    const v27, 0x40bbd70a    # 5.87f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    nop

    .line 232
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$3":I
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 233
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 231
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 234
    nop

    .line 235
    .end local v5    # "$i$f$PathData":I
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

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 229
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 245
    nop

    .line 246
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

    .line 68
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 247
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 248
    const/high16 v16, 0x3f800000    # 1.0f

    .line 247
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 249
    const/high16 v18, 0x3f800000    # 1.0f

    .line 247
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 250
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 247
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 256
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 257
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 259
    nop

    .line 261
    nop

    .line 262
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 263
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 264
    nop

    .line 256
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 265
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 266
    const-string v14, ""

    .line 265
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 267
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 268
    const/4 v5, 0x0

    .line 269
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 270
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 69
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$4":I
    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const v25, 0x3f0ccccd    # 0.55f

    const v26, 0x3ee66666    # 0.45f

    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x41366666    # 11.4f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v28, -0x4147ae14    # -0.36f

    const/high16 v29, -0x40000000    # -2.0f

    const v24, -0x41a8f5c3    # -0.21f

    const v25, -0x40dc28f6    # -0.64f

    const v26, -0x415c28f6    # -0.32f

    const v27, -0x405851ec    # -1.31f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, 0x41a00000    # 20.0f

    const v24, 0x401ccccd    # 2.45f

    const/high16 v25, 0x41980000    # 19.0f

    const/high16 v26, 0x40000000    # 2.0f

    const v27, 0x419b999a    # 19.45f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    nop

    .line 270
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$4":I
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 271
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 269
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 272
    nop

    .line 273
    .end local v5    # "$i$f$PathData":I
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 267
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 283
    nop

    .line 284
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

    .line 78
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 285
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 286
    const/high16 v16, 0x3f800000    # 1.0f

    .line 285
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 287
    const/high16 v18, 0x3f800000    # 1.0f

    .line 285
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 288
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 285
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 294
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 295
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 297
    nop

    .line 299
    nop

    .line 300
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 301
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 302
    nop

    .line 294
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 303
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 304
    const-string v14, ""

    .line 303
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 305
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 306
    const/4 v5, 0x0

    .line 307
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 308
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 79
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$5":I
    const v12, 0x414428f6    # 12.26f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41980000    # 19.0f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v28, -0x40800000    # -1.0f

    const/high16 v29, -0x40800000    # -1.0f

    const v25, -0x40f33333    # -0.55f

    const v26, -0x4119999a    # -0.45f

    const/high16 v27, -0x40800000    # -1.0f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v29, 0x3f800000    # 1.0f

    const v24, -0x40f33333    # -0.55f

    const/16 v25, 0x0

    const/high16 v26, -0x40800000    # -1.0f

    const v27, 0x3ee66666    # 0.45f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x4010a3d7    # 2.26f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v8, 0x414428f6    # 12.26f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v0, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    nop

    .line 308
    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$5":I
    nop

    .line 309
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 307
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 310
    nop

    .line 311
    .end local v5    # "$i$f$PathData":I
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 320
    nop

    .line 305
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 321
    nop

    .line 322
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

    .line 88
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v32

    .line 323
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 324
    const/high16 v16, 0x3f800000    # 1.0f

    .line 323
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 325
    const/high16 v18, 0x3f800000    # 1.0f

    .line 323
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 326
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 323
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 332
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 333
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 335
    nop

    .line 337
    nop

    .line 338
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 339
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 340
    nop

    .line 332
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 341
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 342
    const-string v14, ""

    .line 341
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 343
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 344
    const/4 v5, 0x0

    .line 345
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 346
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 89
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$6":I
    const v12, 0x419c6666    # 19.55f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x4163851f    # 14.22f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v12, -0x3fc00000    # -3.0f

    invoke-virtual {v8, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/high16 v28, 0x41800000    # 16.0f

    const v29, 0x4184f5c3    # 16.62f

    const v24, 0x4181ae14    # 16.21f

    const v25, 0x417e3d71    # 15.89f

    const/high16 v26, 0x41800000    # 16.0f

    const v27, 0x4181eb85    # 16.24f

    move-object/from16 v23, v8

    .end local v8    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x3ff70a3d    # 1.93f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/high16 v28, 0x40800000    # 4.0f

    const v29, 0x40ae6666    # 5.45f

    const/16 v24, 0x0

    const v25, 0x402147ae    # 2.52f

    const v26, 0x3fdae148    # 1.71f

    const v27, 0x409c28f6    # 4.88f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v29, -0x3f51999a    # -5.45f

    const v24, 0x40128f5c    # 2.29f

    const v25, -0x40ee147b    # -0.57f

    const/high16 v26, 0x40800000    # 4.0f

    const v27, -0x3fc47ae1    # -2.93f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, -0x4008f5c3    # -1.93f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v28, -0x40f33333    # -0.55f

    const v29, -0x409c28f6    # -0.89f

    const/16 v24, 0x0

    const v25, -0x413d70a4    # -0.38f

    const v26, -0x41a8f5c3    # -0.21f

    const v27, -0x40c51eb8    # -0.73f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, -0x40400000    # -1.5f

    invoke-virtual {v0, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v28, 0x419c6666    # 19.55f

    const v29, 0x4163851f    # 14.22f

    const v24, 0x41a15c29    # 20.17f

    const v25, 0x416147ae    # 14.08f

    const v26, 0x419ea3d7    # 19.83f

    const v27, 0x416147ae    # 14.08f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v8, 0x4194a3d7    # 18.58f

    const v12, 0x41a26666    # 20.3f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v8, -0x40b33333    # -0.8f

    invoke-virtual {v0, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/16 v28, 0x0

    const v29, -0x407851ec    # -1.06f

    const v24, -0x416b851f    # -0.29f

    const v25, -0x416b851f    # -0.29f

    const v26, -0x416b851f    # -0.29f

    const v27, -0x40bae148    # -0.77f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v28, 0x3f87ae14    # 1.06f

    const/16 v29, 0x0

    const v24, 0x3e947ae1    # 0.29f

    const v26, 0x3f451eb8    # 0.77f

    const v27, -0x416b851f    # -0.29f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x3ee147ae    # 0.44f

    invoke-virtual {v0, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v8, 0x3ff0a3d7    # 1.88f

    const v12, -0x40133333    # -1.85f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    nop

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const/16 v28, 0x0

    const v29, 0x3f87ae14    # 1.06f

    const v25, 0x3e947ae1    # 0.29f

    const v26, 0x3e947ae1    # 0.29f

    const v27, 0x3f451eb8    # 0.77f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, -0x3ff147ae    # -2.23f

    const v12, 0x400d70a4    # 2.21f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v28, 0x4194a3d7    # 18.58f

    const v29, 0x41a26666    # 20.3f

    const v24, 0x419ccccd    # 19.6f

    const v25, 0x41a5851f    # 20.69f

    const v26, 0x4197c28f    # 18.97f

    const v27, 0x41a5851f    # 20.69f

    .end local v0    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    nop

    .line 346
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AssuredWorkloadKt$AssuredWorkload$1$6":I
    .end local v23    # "$this$_get_AssuredWorkload__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 347
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 345
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 348
    nop

    .line 349
    .end local v5    # "$i$f$PathData":I
    nop

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 358
    nop

    .line 343
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 359
    nop

    .line 360
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

    .line 88
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 131
    .end local v3    # "$i$a$-materialIcon$default-AssuredWorkloadKt$AssuredWorkload$1":I
    .end local v32    # "$this$_get_AssuredWorkload__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/rounded/AssuredWorkloadKt;->_assuredWorkload:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 115
    sget-object v0, Landroidx/compose/material/icons/rounded/AssuredWorkloadKt;->_assuredWorkload:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
