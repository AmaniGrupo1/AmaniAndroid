.class public final Landroidx/compose/material/icons/outlined/GroupAddKt;
.super Ljava/lang/Object;
.source "GroupAdd.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupAdd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupAdd.kt\nandroidx/compose/material/icons/outlined/GroupAddKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,97:1\n212#2,12:98\n233#2,18:111\n253#2:148\n233#2,18:149\n253#2:186\n233#2,18:187\n253#2:224\n233#2,18:225\n253#2:262\n233#2,18:263\n253#2:300\n174#3:110\n705#4,2:129\n717#4,2:131\n719#4,11:137\n705#4,2:167\n717#4,2:169\n719#4,11:175\n705#4,2:205\n717#4,2:207\n719#4,11:213\n705#4,2:243\n717#4,2:245\n719#4,11:251\n705#4,2:281\n717#4,2:283\n719#4,11:289\n72#5,4:133\n72#5,4:171\n72#5,4:209\n72#5,4:247\n72#5,4:285\n*S KotlinDebug\n*F\n+ 1 GroupAdd.kt\nandroidx/compose/material/icons/outlined/GroupAddKt\n*L\n29#1:98,12\n30#1:111,18\n30#1:148\n45#1:149,18\n45#1:186\n59#1:187,18\n59#1:224\n75#1:225,18\n75#1:262\n83#1:263,18\n83#1:300\n29#1:110\n30#1:129,2\n30#1:131,2\n30#1:137,11\n45#1:167,2\n45#1:169,2\n45#1:175,11\n59#1:205,2\n59#1:207,2\n59#1:213,11\n75#1:243,2\n75#1:245,2\n75#1:251,11\n83#1:281,2\n83#1:283,2\n83#1:289,11\n30#1:133,4\n45#1:171,4\n59#1:209,4\n75#1:247,4\n83#1:285,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_groupAdd",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "GroupAdd",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getGroupAdd",
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
.field private static _groupAdd:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getGroupAdd(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 40
    .param p0, "$this$GroupAdd"    # Landroidx/compose/material/icons/Icons$Outlined;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/GroupAddKt;->_groupAdd:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/outlined/GroupAddKt;->_groupAdd:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "Outlined.GroupAdd"

    .line 98
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 100
    const/4 v10, 0x0

    .line 98
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 109
    .local v0, "$i$f$materialIcon":I
    nop

    .line 102
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 103
    nop

    .line 104
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 105
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 110
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 106
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 107
    nop

    .line 102
    nop

    .line 108
    nop

    .line 102
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    nop

    .local v1, "$this$_get_GroupAdd__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-GroupAddKt$GroupAdd$1":I
    move-object v4, v1

    .line 111
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 112
    const/high16 v16, 0x3f800000    # 1.0f

    .line 111
    .local v16, "fillAlpha$iv":F
    nop

    .line 113
    const/high16 v18, 0x3f800000    # 1.0f

    .line 111
    .local v18, "strokeAlpha$iv":F
    nop

    .line 114
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 111
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 121
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 123
    nop

    .line 125
    nop

    .line 126
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 127
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 128
    nop

    .line 120
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 129
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 130
    const-string v14, ""

    .line 129
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 131
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 134
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v23, 0x0

    .line 31
    .local v23, "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$1":I
    move/from16 v28, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v28, "$i$f$materialIcon":I
    const/high16 v0, 0x41b00000    # 22.0f

    move-object/from16 v29, v1

    .end local v1    # "$this$_get_GroupAdd__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v29, "$this$_get_GroupAdd__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v0, -0x40000000    # -2.0f

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    nop

    .line 134
    .end local v12    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v23    # "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$1":I
    nop

    .line 135
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 133
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 136
    nop

    .line 137
    .end local v7    # "$i$f$PathData":I
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 131
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 147
    nop

    .line 148
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

    .line 45
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    move-object/from16 v0, v29

    .line 149
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 150
    const/high16 v16, 0x3f800000    # 1.0f

    .line 149
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 151
    const/high16 v18, 0x3f800000    # 1.0f

    .line 149
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 152
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 149
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 159
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 161
    nop

    .line 163
    nop

    .line 164
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 165
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 166
    nop

    .line 158
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 167
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 168
    const-string v14, ""

    .line 167
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, "$i$f$path-R_LF-3I":I
    nop

    .line 170
    const/4 v5, 0x0

    .line 171
    .local v5, "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v6, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 172
    .local v7, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 46
    .local v9, "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$2":I
    const/high16 v12, 0x41400000    # 12.0f

    move-object/from16 v37, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v37, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v35, 0x40800000    # 4.0f

    const/high16 v36, -0x3f800000    # -4.0f

    const v31, 0x400d70a4    # 2.21f

    const/16 v32, 0x0

    const/high16 v33, 0x40800000    # 4.0f

    const v34, -0x401ae148    # -1.79f

    move-object/from16 v30, v8

    .end local v8    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v30, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    move-object/from16 v0, v30

    .end local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, -0x401ae148    # -1.79f

    const/high16 v12, -0x3f800000    # -4.0f

    invoke-virtual {v0, v8, v12, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v8, 0x40b947ae    # 5.79f

    const/high16 v12, 0x40800000    # 4.0f

    move/from16 v38, v1

    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .local v38, "$i$f$materialPath-YwgOQQI":I
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v12, v8, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v1, 0x40b947ae    # 5.79f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v12, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v8, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v0, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v35, 0x40000000    # 2.0f

    const/high16 v36, 0x40000000    # 2.0f

    const v31, 0x3f8ccccd    # 1.1f

    const/high16 v33, 0x40000000    # 2.0f

    const v34, 0x3f666666    # 0.9f

    .end local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    .end local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x4099999a    # -0.9f

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v12, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v1, 0x4111999a    # 9.1f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v12, 0x41000000    # 8.0f

    invoke-virtual {v0, v8, v1, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v1, 0x40dccccd    # 6.9f

    invoke-virtual {v0, v1, v8, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    nop

    .line 172
    .end local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$2":I
    nop

    .line 173
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 171
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 174
    nop

    .line 175
    .end local v5    # "$i$f$PathData":I
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 169
    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 185
    nop

    .line 186
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

    .line 59
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v37    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v38    # "$i$f$materialPath-YwgOQQI":I
    move-object/from16 v0, v29

    .line 187
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 188
    const/high16 v16, 0x3f800000    # 1.0f

    .line 187
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 189
    const/high16 v18, 0x3f800000    # 1.0f

    .line 187
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 190
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 187
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 196
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 197
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 199
    nop

    .line 201
    nop

    .line 202
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 203
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 204
    nop

    .line 196
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 205
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 206
    const-string v14, ""

    .line 205
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 207
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 208
    const/4 v5, 0x0

    .line 209
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 210
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 60
    .local v9, "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$3":I
    const/high16 v12, 0x41500000    # 13.0f

    move-object/from16 v37, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v37    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v35, -0x3f000000    # -8.0f

    const/high16 v36, 0x40800000    # 4.0f

    const v31, -0x3fd51eb8    # -2.67f

    const/high16 v33, -0x3f000000    # -8.0f

    const v34, 0x3fab851f    # 1.34f

    move-object/from16 v30, v8

    .end local v8    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v30, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    move-object/from16 v0, v30

    .end local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v8, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v35, 0x41000000    # 8.0f

    const/high16 v36, 0x41500000    # 13.0f

    const/high16 v31, 0x41800000    # 16.0f

    const v32, 0x416570a4    # 14.34f

    const v33, 0x412ab852    # 10.67f

    const/high16 v34, 0x41500000    # 13.0f

    .end local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    .end local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v8, -0x40828f5c    # -0.99f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v36, 0x41700000    # 15.0f

    const v31, 0x400ccccd    # 2.2f

    const v32, 0x418251ec    # 16.29f

    const v33, 0x40a9999a    # 5.3f

    const/high16 v34, 0x41700000    # 15.0f

    .end local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    .end local v30    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v8, 0x40b9999a    # 5.8f

    const v12, 0x3fa51eb8    # 1.29f

    move/from16 v30, v1

    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .local v30, "$i$f$materialPath-YwgOQQI":I
    const/high16 v1, 0x40c00000    # 6.0f

    move-object/from16 v31, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v31, "name$iv":Ljava/lang/String;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v8, v12, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    nop

    .line 210
    .end local v0    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$3":I
    nop

    .line 211
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 209
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 212
    nop

    .line 213
    .end local v5    # "$i$f$PathData":I
    nop

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 207
    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 223
    nop

    .line 224
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

    .line 75
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$i$f$materialPath-YwgOQQI":I
    .end local v37    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object/from16 v0, v29

    .line 225
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 226
    const/high16 v16, 0x3f800000    # 1.0f

    .line 225
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 227
    const/high16 v18, 0x3f800000    # 1.0f

    .line 225
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 228
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 225
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 234
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 235
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 237
    nop

    .line 239
    nop

    .line 240
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 241
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 242
    nop

    .line 234
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 243
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 244
    const-string v14, ""

    .line 243
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$f$path-R_LF-3I":I
    nop

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$f$PathData":I
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v5, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v6, 0x0

    .line 248
    .local v6, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v7, v5

    .local v7, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 76
    .local v8, "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$4":I
    const v9, 0x4081999a    # 4.05f

    const v12, 0x414828f6    # 12.51f

    invoke-virtual {v7, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v37, 0x41600000    # 14.0f

    const/high16 v38, 0x41000000    # 8.0f

    const v33, 0x4156e148    # 13.43f

    const v34, 0x40a3851f    # 5.11f

    const/high16 v35, 0x41600000    # 14.0f

    const v36, 0x40cfae14    # 6.49f

    move-object/from16 v32, v7

    .end local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v32, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v32 .. v38}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    .end local v32    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v9, -0x404147ae    # -1.49f

    const v12, 0x407ccccd    # 3.95f

    move-object/from16 v30, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, -0x40ee147b    # -0.57f

    move/from16 v39, v1

    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .local v39, "$i$f$materialPath-YwgOQQI":I
    const v1, 0x4038f5c3    # 2.89f

    invoke-virtual {v7, v0, v1, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v37, 0x41800000    # 16.0f

    const v33, 0x4167851f    # 14.47f

    const v34, 0x413b3333    # 11.7f

    const/high16 v35, 0x41800000    # 16.0f

    const v36, 0x4120a3d7    # 10.04f

    .end local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v32    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v32 .. v38}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    .end local v32    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v0, 0x4167851f    # 14.47f

    const v1, 0x4089999a    # 4.3f

    const v9, 0x4081999a    # 4.05f

    const v12, 0x414828f6    # 12.51f

    invoke-virtual {v7, v0, v1, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    nop

    .line 248
    .end local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$4":I
    nop

    .line 249
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 247
    .end local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 250
    nop

    .line 251
    .end local v4    # "$i$f$PathData":I
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 245
    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 261
    nop

    .line 262
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

    .line 83
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v30    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v39    # "$i$f$materialPath-YwgOQQI":I
    move-object/from16 v0, v29

    .line 263
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 264
    const/high16 v16, 0x3f800000    # 1.0f

    .line 263
    .restart local v16    # "fillAlpha$iv":F
    nop

    .line 265
    const/high16 v18, 0x3f800000    # 1.0f

    .line 263
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 266
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 263
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 272
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 273
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 275
    nop

    .line 277
    nop

    .line 278
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 279
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 280
    nop

    .line 272
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 281
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 282
    const-string v14, ""

    .line 281
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 283
    .restart local v2    # "$i$f$path-R_LF-3I":I
    nop

    .line 284
    const/4 v4, 0x0

    .line 285
    .restart local v4    # "$i$f$PathData":I
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v6, 0x0

    .line 286
    .restart local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v7, v5

    .local v7, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v8, 0x0

    .line 84
    .local v8, "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$5":I
    const v9, 0x41843d71    # 16.53f

    const v12, 0x415d47ae    # 13.83f

    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v37, 0x41900000    # 18.0f

    const/high16 v38, 0x41880000    # 17.0f

    const v33, 0x418b5c29    # 17.42f

    const v34, 0x416a8f5c    # 14.66f

    const/high16 v35, 0x41900000    # 18.0f

    const v36, 0x417b3333    # 15.7f

    move-object/from16 v32, v7

    .end local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v32, "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v32 .. v38}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .end local v32    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v9, -0x3fc00000    # -3.0f

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v37, 0x41843d71    # 16.53f

    const v38, 0x415d47ae    # 13.83f

    const/high16 v33, 0x41a00000    # 20.0f

    const v34, 0x4178cccd    # 15.55f

    const v35, 0x419347ae    # 18.41f

    const v36, 0x4167d70a    # 14.49f

    .end local v7    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v32    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v32 .. v38}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    nop

    .line 286
    .end local v8    # "$i$a$-materialPath-YwgOQQI$default-GroupAddKt$GroupAdd$1$5":I
    .end local v32    # "$this$_get_GroupAdd__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 287
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 285
    .end local v5    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v6    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 288
    nop

    .line 289
    .end local v4    # "$i$f$PathData":I
    nop

    .line 290
    nop

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    nop

    .line 283
    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v4

    .line 299
    nop

    .line 300
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

    .line 83
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    nop

    .line 109
    .end local v3    # "$i$a$-materialIcon$default-GroupAddKt$GroupAdd$1":I
    .end local v29    # "$this$_get_GroupAdd__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v28    # "$i$f$materialIcon":I
    .end local v31    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/outlined/GroupAddKt;->_groupAdd:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 93
    sget-object v0, Landroidx/compose/material/icons/outlined/GroupAddKt;->_groupAdd:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
